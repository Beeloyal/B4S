

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;


CREATE EXTENSION IF NOT EXISTS "pg_net" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "pgsodium" WITH SCHEMA "pgsodium";








ALTER SCHEMA "public" OWNER TO "postgres";


COMMENT ON SCHEMA "public" IS '@graphql({"inflect_names": true})';



CREATE SCHEMA IF NOT EXISTS "stripe";


ALTER SCHEMA "stripe" OWNER TO "postgres";


CREATE EXTENSION IF NOT EXISTS "http" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "pg_graphql" WITH SCHEMA "graphql";






CREATE EXTENSION IF NOT EXISTS "pg_stat_statements" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "pgcrypto" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "pgjwt" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "supabase_vault" WITH SCHEMA "vault";






CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "wrappers" WITH SCHEMA "extensions";






CREATE TYPE "public"."card" AS ENUM (
    'stamps',
    'points'
);


ALTER TYPE "public"."card" OWNER TO "postgres";


CREATE TYPE "public"."country" AS ENUM (
    'poland'
);


ALTER TYPE "public"."country" OWNER TO "postgres";


CREATE TYPE "public"."subscription_status" AS ENUM (
    'active',
    'inactive',
    'past_due',
    'canceled',
    'trialing'
);


ALTER TYPE "public"."subscription_status" OWNER TO "postgres";


CREATE TYPE "public"."transaction_status" AS ENUM (
    'in_progress',
    'failed',
    'completed',
    'waiting',
    'confirmed',
    'required_confirmation',
    'canceled'
);


ALTER TYPE "public"."transaction_status" OWNER TO "postgres";


CREATE TYPE "public"."transaction_type" AS ENUM (
    'add_points',
    'add_stamps',
    'get_reward'
);


ALTER TYPE "public"."transaction_type" OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."after_logo_url_update"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$DECLARE
  base_url text;
BEGIN
  -- Get base URL
  base_url := get_supabase_url();
  
  -- Call Edge Function only if logo_url changed and is not null/empty
  IF OLD.logo_url IS DISTINCT FROM NEW.logo_url AND NEW.logo_url IS NOT NULL AND NEW.logo_url != '' THEN
    BEGIN
      PERFORM call_generate_marker(
        base_url || '/functions/v1/generateMarker',
        NEW.id,
        NEW.logo_url
      );
    EXCEPTION WHEN OTHERS THEN
      -- Log error but don't block the update
      RAISE WARNING 'Failed to generate marker: %', SQLERRM;
    END;
  END IF;

  RETURN NEW;
END;$$;


ALTER FUNCTION "public"."after_logo_url_update"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."call_generate_marker"("endpoint" "text", "local_id" bigint, "logo_url" "text") RETURNS "jsonb"
    LANGUAGE "plpgsql" SECURITY DEFINER
    AS $$
DECLARE
  response jsonb;
BEGIN
  SELECT * INTO response FROM http_post(
    endpoint,
    format(
      '{"id":"%s","logo_url":"%s"}',
      local_id::text,
      COALESCE(logo_url, '')
    ),
    'application/json'
  );

  RETURN response;
END;
$$;


ALTER FUNCTION "public"."call_generate_marker"("endpoint" "text", "local_id" bigint, "logo_url" "text") OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."cancel_transaction"("transactionid" integer) RETURNS "void"
    LANGUAGE "plpgsql" SECURITY DEFINER
    AS $$declare
  transactionid bigint;
begin
  transactionid = cancel_transaction.transactionid;
  
  update transaction_units
  set status = 'canceled'::transaction_status
  where transaction = transactionid AND status != 'completed'::transaction_status AND status != 'failed'::transaction_status;

  update transactions
  set status = 'canceled'::transaction_status
  where id = transactionid AND status = 'waiting'::transaction_status;

  return;
end;$$;


ALTER FUNCTION "public"."cancel_transaction"("transactionid" integer) OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."check_access"("local_id" integer) RETURNS boolean
    LANGUAGE "plpgsql" SECURITY DEFINER
    AS $$BEGIN
  RETURN check_app_id('app.beeloyal.employer') AND (is_employer(local_id) OR is_business_owner(local_id));
END;$$;


ALTER FUNCTION "public"."check_access"("local_id" integer) OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."check_app_id"("app_id" "text") RETURNS boolean
    LANGUAGE "plpgsql" SECURITY DEFINER
    AS $$BEGIN
    IF(((current_setting('request.headers'::text, true))::json ->> 'x-app-id'::text) IS NOT NULL)
    THEN
      IF(((current_setting('request.headers'::text, true))::json ->> 'x-app-id'::text) = app_id)
      THEN
        RETURN TRUE;
      END IF;

      RETURN FALSE;
    END IF;

    IF(get_user_app_id() = app_id)
    THEN
      RETURN TRUE;
    END IF;

    RETURN FALSE;
END;$$;


ALTER FUNCTION "public"."check_app_id"("app_id" "text") OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."check_business_owner"("user_uuid" "uuid", "business_id" integer) RETURNS boolean
    LANGUAGE "plpgsql"
    AS $$
BEGIN
  RETURN EXISTS (
    SELECT b.id
    FROM businesses b
    WHERE b.owner = user_uuid
    AND b.id = business_id
  );
END;
$$;


ALTER FUNCTION "public"."check_business_owner"("user_uuid" "uuid", "business_id" integer) OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."check_customer_access"() RETURNS boolean
    LANGUAGE "plpgsql" SECURITY DEFINER
    AS $$BEGIN
  RETURN check_app_id('app.beeloyal.customer');
END;$$;


ALTER FUNCTION "public"."check_customer_access"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."check_transaction_units"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$declare
  value bigint;
begin
  if new.status = 'completed'::transaction_status OR new.status = 'canceled'::transaction_status
  then
    select id into value from transaction_units where transaction = new.transaction AND status != 'completed'::transaction_status AND status != 'canceled'::transaction_status limit 1;

    if value is null
    then
      update transactions
      set status = 'completed'::transaction_status,
      completed_at = now()
      where id = new.transaction AND status = 'in_progress'::transaction_status;
    end if;
  end if;
 
  return new;
end;$$;


ALTER FUNCTION "public"."check_transaction_units"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."confirm_reward_collect"("transactionid" integer, "confirmed" boolean) RETURNS "void"
    LANGUAGE "plpgsql" SECURITY DEFINER
    AS $$declare
  confirmed boolean;
  transactionid bigint;
begin
  confirmed = confirm_reward_collect.confirmed;
  transactionid = confirm_reward_collect.transactionid;

  if confirmed = true
  then
    update transaction_units
    set status = 'confirmed'::transaction_status
    where id = transactionid AND status = 'required_confirmation'::transaction_status;
  elseif confirmed = false
  then
    update transaction_units
    set status = 'canceled'::transaction_status
    where id = transactionid AND status = 'required_confirmation'::transaction_status;
  end if;

  return;
end;$$;


ALTER FUNCTION "public"."confirm_reward_collect"("transactionid" integer, "confirmed" boolean) OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."confirmed_transaction_unit"() RETURNS "trigger"
    LANGUAGE "plpgsql" SECURITY DEFINER
    AS $$begin
  if new.status = 'confirmed'::transaction_status
  then
    update transaction_units
    set status = 'in_progress'::transaction_status
    where id = new.id;
  end if;

  return new;
end;$$;


ALTER FUNCTION "public"."confirmed_transaction_unit"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."create_customer"("phone" "text", "local" integer) RETURNS "void"
    LANGUAGE "plpgsql" SECURITY DEFINER
    AS $$DECLARE
    user_uuid UUID;
    customer_exists BOOLEAN;
BEGIN
    -- Krok 1: Pobranie UUID użytkownika z tabeli auth.users na podstawie numeru telefonu
    SELECT (id) INTO user_uuid
    FROM auth.get_user_by_phone(create_customer.phone);

    -- Sprawdzenie, czy użytkownik o podanym numerze telefonu istnieje
    IF NOT FOUND THEN
        RAISE EXCEPTION 'Użytkownik o numerze telefonu % nie istnieje w tabeli auth.users', create_customer.phone;
    END IF;

    -- Krok 2: Sprawdzenie, czy klient już istnieje w tabeli customers
    SELECT EXISTS(SELECT 1 FROM customers c WHERE c.account = user_uuid AND c.local = create_customer.local) INTO customer_exists;

    -- Krok 3: Jeśli klient nie istnieje, dodajemy go do tabeli customers
    IF NOT customer_exists THEN
        INSERT INTO customers (account, phone, local)
        VALUES (user_uuid, create_customer.phone, create_customer.local);
    ELSE
        RAISE NOTICE 'Klient z numerem telefonu % już istnieje w tabeli customers', create_customer.phone;
    END IF;
END;$$;


ALTER FUNCTION "public"."create_customer"("phone" "text", "local" integer) OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."create_customer_card"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$declare
  customerId bigint;
  cardId bigint;
begin
  if new.type = 'add_stamps'::transaction_type AND new.customer_card IS NULL
  then
    select id into customerId from customers where customers.id = (select customer from transactions where transactions.id = new.transaction);

    insert into customer_cards(customer, card)
    values(customerId, new.local_card)
    returning id into cardId;

    new.customer_card := cardId;
  end if;

  return new;
end;$$;


ALTER FUNCTION "public"."create_customer_card"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."get_locals_geojson"() RETURNS "jsonb"
    LANGUAGE "plpgsql" SECURITY DEFINER
    AS $$BEGIN
  RETURN (
    SELECT jsonb_build_object(
      'type', 'FeatureCollection',
      'features', COALESCE(
        jsonb_agg(
          jsonb_build_object(
            'type', 'Feature',
            'geometry', jsonb_build_object(
              'type', 'Point',
              'coordinates', jsonb_build_array(g.long, g.lat)
            ),
            'properties', jsonb_build_object(
              'local_id', l.id,
              'address_id', la.id
            )
          )
        ),
        '[]'::jsonb
      )
    )
    FROM locals l
    JOIN local_addresses la ON la.local = l.id
    JOIN geo g ON g.local_address = la.id
    WHERE l.enabled = true
  );
END;$$;


ALTER FUNCTION "public"."get_locals_geojson"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."get_supabase_url"() RETURNS "text"
    LANGUAGE "plpgsql"
    AS $$BEGIN
  RETURN 'https://zmhbcupjxmyllfgxwqdt.supabase.co';
END;$$;


ALTER FUNCTION "public"."get_supabase_url"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."get_user_app_id"() RETURNS "text"
    LANGUAGE "plpgsql" SECURITY DEFINER
    AS $$
BEGIN
  RETURN (
    SELECT COALESCE(
      raw_user_meta_data->>'app_id',
      ''
    )::TEXT
    FROM auth.users
    WHERE id = auth.uid()
  );
END;
$$;


ALTER FUNCTION "public"."get_user_app_id"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."is_business_owner"("local_id" integer) RETURNS boolean
    LANGUAGE "plpgsql" SECURITY DEFINER
    AS $$
BEGIN
  RETURN EXISTS (
    SELECT 1
    FROM locals l
    JOIN businesses b ON l.business = b.id
    WHERE b.owner = auth.uid()
    AND l.id = local_id
  );
END;
$$;


ALTER FUNCTION "public"."is_business_owner"("local_id" integer) OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."is_employer"("local_id" integer) RETURNS boolean
    LANGUAGE "plpgsql" SECURITY DEFINER
    AS $$BEGIN
  RETURN EXISTS (
    SELECT 1
    FROM employees e
    JOIN local_addresses l ON e.local_address = l.id
    WHERE e.account = auth.uid() AND e.enabled = true
    AND l.local = local_id
  );
END;$$;


ALTER FUNCTION "public"."is_employer"("local_id" integer) OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."make_transaction"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$declare
  value bigint;
  cardType card;
begin
  if new.status != 'in_progress'::transaction_status
  then
    return new;
  end if;

  if new.type = 'add_points'::transaction_type
  then
    select points into value from customers where customers.id = (select customer from transactions where transactions.id = new.transaction);

    value = value + new.value;

    update customers
    set points = value
    where customers.id = (select customer from transactions where transactions.id = new.transaction);
  
  elseif new.type = 'add_stamps'::transaction_type
  then
    select collected into value from customer_cards where id = new.customer_card;

    value = value + new.value;

    update customer_cards
    set collected = value
    where id = new.customer_card;
     
  elseif new.type = 'get_reward'::transaction_type
  then
    select type into cardType from local_cards where id = new.local_card;

    if cardType = 'points'::card
    then
      select points into value from customers where customers.id = (select customer from transactions where transactions.id = new.transaction);

      value = value - new.value;

      update customers
      set points = value
      where customers.id = (select customer from transactions where transactions.id = new.transaction);
          
    else
      select collected into value from customer_cards where id = new.customer_card;

      value = value - new.value;

      update customer_cards
      set collected = value
      where id = new.customer_card;
    end if;
  end if;

  new.status = 'completed'::transaction_status;
  new.completed_at = now();
  
  return new;
end;$$;


ALTER FUNCTION "public"."make_transaction"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."run_transaction"("transactionid" integer) RETURNS "void"
    LANGUAGE "plpgsql" SECURITY DEFINER
    AS $$begin
  update transactions
  set status = 'in_progress'::transaction_status
  where id = run_transaction.transactionid AND status = 'waiting'::transaction_status;

  return;
end;$$;


ALTER FUNCTION "public"."run_transaction"("transactionid" integer) OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."update_transaction_units"() RETURNS "trigger"
    LANGUAGE "plpgsql" SECURITY DEFINER
    AS $$begin
  if new.status = 'in_progress'::transaction_status
  then
  
    update transaction_units
    set status = 'required_confirmation'::transaction_status
    where
    transaction = new.id AND
    status = 'waiting'::transaction_status AND
    type = 'get_reward'::transaction_type;

    update transaction_units
    set status = 'in_progress'::transaction_status
    where
    transaction = new.id AND
    status = 'waiting'::transaction_status AND
    type != 'get_reward'::transaction_type;

  end if;
 
  return new;
end;$$;


ALTER FUNCTION "public"."update_transaction_units"() OWNER TO "postgres";

SET default_tablespace = '';

SET default_table_access_method = "heap";


CREATE TABLE IF NOT EXISTS "public"."local_addresses" (
    "id" integer NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "country" "public"."country" NOT NULL,
    "city" character varying NOT NULL,
    "display_address" character varying NOT NULL,
    "local" bigint NOT NULL,
    "geo" bigint
);


ALTER TABLE "public"."local_addresses" OWNER TO "postgres";


ALTER TABLE "public"."local_addresses" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."addresses_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);



CREATE TABLE IF NOT EXISTS "public"."businesses" (
    "id" integer NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "name" "text" NOT NULL,
    "owner" "uuid" NOT NULL,
    "stripe_customer" "text" NOT NULL,
    "subscription_status" "public"."subscription_status" DEFAULT 'inactive'::"public"."subscription_status" NOT NULL,
    "subscription_id" "text",
    "subscription_period_end" timestamp with time zone
);


ALTER TABLE "public"."businesses" OWNER TO "postgres";


ALTER TABLE "public"."businesses" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."companies_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);



CREATE TABLE IF NOT EXISTS "public"."customer_cards" (
    "id" integer NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "card" integer NOT NULL,
    "customer" integer NOT NULL,
    "collected" integer DEFAULT 0 NOT NULL,
    CONSTRAINT "customer_cards_collected_check" CHECK (("collected" >= 0))
);


ALTER TABLE "public"."customer_cards" OWNER TO "postgres";


ALTER TABLE "public"."customer_cards" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."customer_cards_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);



CREATE TABLE IF NOT EXISTS "public"."customers" (
    "id" integer NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "local" integer NOT NULL,
    "account" "uuid" NOT NULL,
    "points" integer DEFAULT 0 NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "phone" "text",
    "points_multiplier" real DEFAULT '2.15'::real NOT NULL,
    CONSTRAINT "customers_points_check" CHECK (("points" >= 0))
);


ALTER TABLE "public"."customers" OWNER TO "postgres";


ALTER TABLE "public"."customers" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."customer_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);



CREATE TABLE IF NOT EXISTS "public"."employees" (
    "id" integer NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "company" integer NOT NULL,
    "local_address" integer NOT NULL,
    "account" "uuid" NOT NULL,
    "enabled" boolean DEFAULT true NOT NULL
);


ALTER TABLE "public"."employees" OWNER TO "postgres";


ALTER TABLE "public"."employees" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."employees_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);



CREATE TABLE IF NOT EXISTS "public"."geo" (
    "id" integer NOT NULL,
    "lat" double precision NOT NULL,
    "long" double precision NOT NULL,
    "local_address" integer NOT NULL
);


ALTER TABLE "public"."geo" OWNER TO "postgres";


ALTER TABLE "public"."geo" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."geo_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);



CREATE TABLE IF NOT EXISTS "public"."local_cards" (
    "id" integer NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "name" "text" NOT NULL,
    "short_description" "text" NOT NULL,
    "description" "text" NOT NULL,
    "cost" integer NOT NULL,
    "type" "public"."card" DEFAULT 'stamps'::"public"."card" NOT NULL,
    "actived_on" timestamp with time zone DEFAULT "now"() NOT NULL,
    "expires_on" timestamp with time zone,
    "local" integer NOT NULL,
    "enable" boolean DEFAULT false NOT NULL,
    CONSTRAINT "local_cards_cost_check" CHECK (("cost" >= 0))
);


ALTER TABLE "public"."local_cards" OWNER TO "postgres";


ALTER TABLE "public"."local_cards" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."local_cards_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);



CREATE TABLE IF NOT EXISTS "public"."locals" (
    "id" integer NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "name" character varying NOT NULL,
    "logo_url" character varying,
    "banner_url" character varying,
    "short_description" character varying,
    "enabled" boolean DEFAULT false NOT NULL,
    "business" bigint NOT NULL
);


ALTER TABLE "public"."locals" OWNER TO "postgres";


ALTER TABLE "public"."locals" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."locals_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);



CREATE TABLE IF NOT EXISTS "public"."transaction_units" (
    "id" integer NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "local_card" integer,
    "customer_card" integer,
    "value" integer NOT NULL,
    "type" "public"."transaction_type" NOT NULL,
    "status" "public"."transaction_status" DEFAULT 'waiting'::"public"."transaction_status" NOT NULL,
    "completed_at" timestamp with time zone,
    "transaction" integer NOT NULL,
    CONSTRAINT "transaction_units_value_check" CHECK (("value" >= 0))
);


ALTER TABLE "public"."transaction_units" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."transactions" (
    "id" integer NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "local_address" integer NOT NULL,
    "customer" integer NOT NULL,
    "completed_at" timestamp with time zone,
    "status" "public"."transaction_status" DEFAULT 'waiting'::"public"."transaction_status" NOT NULL,
    "executor" "uuid" NOT NULL
);


ALTER TABLE "public"."transactions" OWNER TO "postgres";


ALTER TABLE "public"."transaction_units" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."transactions_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);



ALTER TABLE "public"."transactions" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."transactions_id_seq1"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);



CREATE OR REPLACE VIEW "public"."users" AS
 SELECT "users"."id",
    "users"."email",
    "users"."phone",
    ("users"."raw_user_meta_data" ->> 'display_name'::"text") AS "display_name"
   FROM "auth"."users";


ALTER TABLE "public"."users" OWNER TO "postgres";


ALTER TABLE ONLY "public"."local_addresses"
    ADD CONSTRAINT "addresses_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."businesses"
    ADD CONSTRAINT "companies_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."customer_cards"
    ADD CONSTRAINT "customer_cards_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."customers"
    ADD CONSTRAINT "customer_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."employees"
    ADD CONSTRAINT "employees_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."geo"
    ADD CONSTRAINT "geo_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."local_cards"
    ADD CONSTRAINT "local_cards_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."locals"
    ADD CONSTRAINT "locals_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."transaction_units"
    ADD CONSTRAINT "transactions_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."transactions"
    ADD CONSTRAINT "transactions_pkey1" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."customer_cards"
    ADD CONSTRAINT "unique_customer_card" UNIQUE ("customer", "card");



ALTER TABLE ONLY "public"."customers"
    ADD CONSTRAINT "unique_customer_local" UNIQUE ("local", "account", "phone");



ALTER TABLE ONLY "public"."employees"
    ADD CONSTRAINT "unique_employer" UNIQUE ("local_address", "account");



CREATE OR REPLACE TRIGGER "after_logo_url_update" AFTER INSERT OR UPDATE OF "logo_url" ON "public"."locals" FOR EACH ROW EXECUTE FUNCTION "public"."after_logo_url_update"();



CREATE OR REPLACE TRIGGER "check_transaction_units" AFTER UPDATE ON "public"."transaction_units" FOR EACH ROW EXECUTE FUNCTION "public"."check_transaction_units"();



CREATE OR REPLACE TRIGGER "confirmed_transaction_unit" AFTER UPDATE ON "public"."transaction_units" FOR EACH ROW EXECUTE FUNCTION "public"."confirmed_transaction_unit"();



CREATE OR REPLACE TRIGGER "create_customer_card" BEFORE INSERT ON "public"."transaction_units" FOR EACH ROW EXECUTE FUNCTION "public"."create_customer_card"();



CREATE OR REPLACE TRIGGER "make_transaction" BEFORE UPDATE ON "public"."transaction_units" FOR EACH ROW EXECUTE FUNCTION "public"."make_transaction"();



CREATE OR REPLACE TRIGGER "reward_confirmation_request_notification" AFTER UPDATE ON "public"."transaction_units" FOR EACH ROW EXECUTE FUNCTION "supabase_functions"."http_request"('https://zmhbcupjxmyllfgxwqdt.supabase.co/functions/v1/rewardConfirmationRequestNotification', 'POST', '{"Content-type":"application/json"}', '{}', '5000');



CREATE OR REPLACE TRIGGER "transaction_completed_notification" AFTER UPDATE ON "public"."transactions" FOR EACH ROW EXECUTE FUNCTION "supabase_functions"."http_request"('https://zmhbcupjxmyllfgxwqdt.supabase.co/functions/v1/transactionCompletedNotification', 'POST', '{"Content-type":"application/json"}', '{}', '5000');



CREATE OR REPLACE TRIGGER "update_transaction_units" AFTER UPDATE ON "public"."transactions" FOR EACH ROW EXECUTE FUNCTION "public"."update_transaction_units"();



ALTER TABLE ONLY "public"."businesses"
    ADD CONSTRAINT "businesses_owner_fkey" FOREIGN KEY ("owner") REFERENCES "auth"."users"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."customer_cards"
    ADD CONSTRAINT "customer_cards_card_fkey" FOREIGN KEY ("card") REFERENCES "public"."local_cards"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."customer_cards"
    ADD CONSTRAINT "customer_cards_customer_fkey1" FOREIGN KEY ("customer") REFERENCES "public"."customers"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."customers"
    ADD CONSTRAINT "customers_account_fkey" FOREIGN KEY ("account") REFERENCES "auth"."users"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."customers"
    ADD CONSTRAINT "customers_account_fkey1" FOREIGN KEY ("account") REFERENCES "auth"."users"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."customers"
    ADD CONSTRAINT "customers_local_fkey" FOREIGN KEY ("local") REFERENCES "public"."locals"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."customers"
    ADD CONSTRAINT "customers_phone_fkey" FOREIGN KEY ("phone") REFERENCES "auth"."users"("phone") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."employees"
    ADD CONSTRAINT "employees_account_fkey" FOREIGN KEY ("account") REFERENCES "auth"."users"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."employees"
    ADD CONSTRAINT "employees_company_fkey" FOREIGN KEY ("company") REFERENCES "public"."businesses"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."employees"
    ADD CONSTRAINT "employees_local_address_fkey" FOREIGN KEY ("local_address") REFERENCES "public"."local_addresses"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."geo"
    ADD CONSTRAINT "geo_local_address_fkey" FOREIGN KEY ("local_address") REFERENCES "public"."local_addresses"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."local_addresses"
    ADD CONSTRAINT "local_addresses_local_fkey" FOREIGN KEY ("local") REFERENCES "public"."locals"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."locals"
    ADD CONSTRAINT "locals_business_fkey" FOREIGN KEY ("business") REFERENCES "public"."businesses"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."local_addresses"
    ADD CONSTRAINT "public_local_addresses_geo_fkey" FOREIGN KEY ("geo") REFERENCES "public"."geo"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."local_cards"
    ADD CONSTRAINT "public_local_cards_local_fkey" FOREIGN KEY ("local") REFERENCES "public"."locals"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."transaction_units"
    ADD CONSTRAINT "transaction_units_transaction_fkey" FOREIGN KEY ("transaction") REFERENCES "public"."transactions"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."transaction_units"
    ADD CONSTRAINT "transactions_customer_card_fkey" FOREIGN KEY ("customer_card") REFERENCES "public"."customer_cards"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."transactions"
    ADD CONSTRAINT "transactions_customer_fkey" FOREIGN KEY ("customer") REFERENCES "public"."customers"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."transactions"
    ADD CONSTRAINT "transactions_executor_fkey" FOREIGN KEY ("executor") REFERENCES "auth"."users"("id") ON UPDATE CASCADE ON DELETE RESTRICT;



ALTER TABLE ONLY "public"."transactions"
    ADD CONSTRAINT "transactions_local_address_fkey" FOREIGN KEY ("local_address") REFERENCES "public"."local_addresses"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."transaction_units"
    ADD CONSTRAINT "transactions_local_card_fkey" FOREIGN KEY ("local_card") REFERENCES "public"."local_cards"("id") ON UPDATE CASCADE ON DELETE CASCADE;



CREATE POLICY "Customer access" ON "public"."transactions" FOR SELECT TO "authenticated" USING (("public"."check_customer_access"() AND (( SELECT "customers"."account"
   FROM "public"."customers"
  WHERE ("customers"."id" = "transactions"."customer")) = "auth"."uid"())));



CREATE POLICY "Customer select" ON "public"."customer_cards" FOR SELECT TO "authenticated" USING (("public"."check_customer_access"() AND (( SELECT "customers"."account"
   FROM "public"."customers"
  WHERE ("customers"."id" = "customer_cards"."customer")) = "auth"."uid"())));



CREATE POLICY "Customer select" ON "public"."customers" FOR SELECT TO "authenticated" USING (("public"."check_customer_access"() AND ("account" = "auth"."uid"())));



CREATE POLICY "Customer select" ON "public"."geo" FOR SELECT USING ("public"."check_customer_access"());



CREATE POLICY "Customer select" ON "public"."local_addresses" FOR SELECT USING ("public"."check_customer_access"());



CREATE POLICY "Customer select" ON "public"."local_cards" FOR SELECT USING ("public"."check_customer_access"());



CREATE POLICY "Customer select" ON "public"."locals" FOR SELECT USING (("public"."check_customer_access"() AND "enabled"));



CREATE POLICY "Customer select" ON "public"."transaction_units" FOR SELECT TO "authenticated" USING (("public"."check_customer_access"() AND (( SELECT "customers"."account"
   FROM "public"."customers"
  WHERE ("customers"."id" = ( SELECT "transactions"."customer"
           FROM "public"."transactions"
          WHERE ("transactions"."id" = "transaction_units"."transaction")))) = "auth"."uid"())));



CREATE POLICY "Employer app select" ON "public"."local_addresses" FOR SELECT USING ("public"."check_access"(("local")::integer));



CREATE POLICY "Employer app select" ON "public"."locals" FOR SELECT USING ("public"."check_access"("id"));



CREATE POLICY "Employer insert" ON "public"."customer_cards" FOR INSERT WITH CHECK ("public"."check_access"(( SELECT "l"."local"
   FROM "public"."local_cards" "l"
  WHERE ("l"."id" = "customer_cards"."card"))));



CREATE POLICY "Employer insert" ON "public"."customers" FOR INSERT WITH CHECK ("public"."check_access"("local"));



CREATE POLICY "Employer insert" ON "public"."transaction_units" FOR INSERT WITH CHECK ("public"."check_access"((( SELECT "local_addresses"."local"
   FROM "public"."local_addresses"
  WHERE ("local_addresses"."id" = ( SELECT "t"."local_address"
           FROM "public"."transactions" "t"
          WHERE ("t"."id" = "transaction_units"."transaction")))))::integer));



CREATE POLICY "Employer insert" ON "public"."transactions" FOR INSERT WITH CHECK ("public"."check_access"((( SELECT "l"."local"
   FROM "public"."local_addresses" "l"
  WHERE ("l"."id" = "transactions"."local_address")))::integer));



CREATE POLICY "Employer select" ON "public"."customer_cards" FOR SELECT USING ("public"."check_access"(( SELECT "l"."local"
   FROM "public"."local_cards" "l"
  WHERE ("l"."id" = "customer_cards"."card"))));



CREATE POLICY "Employer select" ON "public"."customers" FOR SELECT USING ("public"."check_access"("local"));



CREATE POLICY "Employer select" ON "public"."transaction_units" FOR SELECT USING ("public"."check_access"((( SELECT "local_addresses"."local"
   FROM "public"."local_addresses"
  WHERE ("local_addresses"."id" = ( SELECT "t"."local_address"
           FROM "public"."transactions" "t"
          WHERE ("t"."id" = "transaction_units"."transaction")))))::integer));



CREATE POLICY "Employer select" ON "public"."transactions" FOR SELECT USING ("public"."check_access"((( SELECT "l"."local"
   FROM "public"."local_addresses" "l"
  WHERE ("l"."id" = "transactions"."local_address")))::integer));



CREATE POLICY "Employer update" ON "public"."customer_cards" FOR UPDATE USING ("public"."check_access"(( SELECT "l"."local"
   FROM "public"."local_cards" "l"
  WHERE ("l"."id" = "customer_cards"."card"))));



CREATE POLICY "Employer update" ON "public"."customers" FOR UPDATE USING ("public"."check_access"("local"));



CREATE POLICY "Employer update" ON "public"."transaction_units" FOR UPDATE USING ("public"."check_access"((( SELECT "local_addresses"."local"
   FROM "public"."local_addresses"
  WHERE ("local_addresses"."id" = ( SELECT "t"."local_address"
           FROM "public"."transactions" "t"
          WHERE ("t"."id" = "transaction_units"."transaction")))))::integer)) WITH CHECK ("public"."check_access"((( SELECT "local_addresses"."local"
   FROM "public"."local_addresses"
  WHERE ("local_addresses"."id" = ( SELECT "t"."local_address"
           FROM "public"."transactions" "t"
          WHERE ("t"."id" = "transaction_units"."transaction")))))::integer));



CREATE POLICY "Enable read access for all users" ON "public"."geo" FOR SELECT USING (true);



CREATE POLICY "Enable read access for all users" ON "public"."local_cards" FOR SELECT USING (true);



CREATE POLICY "Enable select for users based on user_id" ON "public"."employees" FOR SELECT USING (((( SELECT "auth"."uid"() AS "uid") = "account") AND "enabled"));



CREATE POLICY "Enable users to view their own data only" ON "public"."businesses" TO "authenticated" USING ((( SELECT "auth"."uid"() AS "uid") = "owner")) WITH CHECK ((( SELECT "auth"."uid"() AS "uid") = "owner"));



CREATE POLICY "[ALL] Business" ON "public"."employees" USING ("public"."check_business_owner"("auth"."uid"(), "company")) WITH CHECK ("public"."check_business_owner"("auth"."uid"(), "company"));



ALTER TABLE "public"."businesses" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."customer_cards" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."customers" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."employees" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."geo" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."local_addresses" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."local_cards" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."locals" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."transaction_units" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."transactions" ENABLE ROW LEVEL SECURITY;




ALTER PUBLICATION "supabase_realtime" OWNER TO "postgres";


ALTER PUBLICATION "supabase_realtime" ADD TABLE ONLY "public"."customer_cards";



ALTER PUBLICATION "supabase_realtime" ADD TABLE ONLY "public"."transaction_units";



ALTER PUBLICATION "supabase_realtime" ADD TABLE ONLY "public"."transactions";






REVOKE USAGE ON SCHEMA "public" FROM PUBLIC;
GRANT USAGE ON SCHEMA "public" TO "anon";
GRANT USAGE ON SCHEMA "public" TO "authenticated";
GRANT USAGE ON SCHEMA "public" TO "service_role";

























































































































































































































































































































































GRANT ALL ON FUNCTION "public"."after_logo_url_update"() TO "anon";
GRANT ALL ON FUNCTION "public"."after_logo_url_update"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."after_logo_url_update"() TO "service_role";



GRANT ALL ON FUNCTION "public"."call_generate_marker"("endpoint" "text", "local_id" bigint, "logo_url" "text") TO "anon";
GRANT ALL ON FUNCTION "public"."call_generate_marker"("endpoint" "text", "local_id" bigint, "logo_url" "text") TO "authenticated";
GRANT ALL ON FUNCTION "public"."call_generate_marker"("endpoint" "text", "local_id" bigint, "logo_url" "text") TO "service_role";



GRANT ALL ON FUNCTION "public"."cancel_transaction"("transactionid" integer) TO "anon";
GRANT ALL ON FUNCTION "public"."cancel_transaction"("transactionid" integer) TO "authenticated";
GRANT ALL ON FUNCTION "public"."cancel_transaction"("transactionid" integer) TO "service_role";



GRANT ALL ON FUNCTION "public"."check_access"("local_id" integer) TO "anon";
GRANT ALL ON FUNCTION "public"."check_access"("local_id" integer) TO "authenticated";
GRANT ALL ON FUNCTION "public"."check_access"("local_id" integer) TO "service_role";



GRANT ALL ON FUNCTION "public"."check_app_id"("app_id" "text") TO "anon";
GRANT ALL ON FUNCTION "public"."check_app_id"("app_id" "text") TO "authenticated";
GRANT ALL ON FUNCTION "public"."check_app_id"("app_id" "text") TO "service_role";



GRANT ALL ON FUNCTION "public"."check_business_owner"("user_uuid" "uuid", "business_id" integer) TO "anon";
GRANT ALL ON FUNCTION "public"."check_business_owner"("user_uuid" "uuid", "business_id" integer) TO "authenticated";
GRANT ALL ON FUNCTION "public"."check_business_owner"("user_uuid" "uuid", "business_id" integer) TO "service_role";



GRANT ALL ON FUNCTION "public"."check_customer_access"() TO "anon";
GRANT ALL ON FUNCTION "public"."check_customer_access"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."check_customer_access"() TO "service_role";



GRANT ALL ON FUNCTION "public"."check_transaction_units"() TO "anon";
GRANT ALL ON FUNCTION "public"."check_transaction_units"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."check_transaction_units"() TO "service_role";



GRANT ALL ON FUNCTION "public"."confirm_reward_collect"("transactionid" integer, "confirmed" boolean) TO "anon";
GRANT ALL ON FUNCTION "public"."confirm_reward_collect"("transactionid" integer, "confirmed" boolean) TO "authenticated";
GRANT ALL ON FUNCTION "public"."confirm_reward_collect"("transactionid" integer, "confirmed" boolean) TO "service_role";



GRANT ALL ON FUNCTION "public"."confirmed_transaction_unit"() TO "anon";
GRANT ALL ON FUNCTION "public"."confirmed_transaction_unit"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."confirmed_transaction_unit"() TO "service_role";



GRANT ALL ON FUNCTION "public"."create_customer"("phone" "text", "local" integer) TO "anon";
GRANT ALL ON FUNCTION "public"."create_customer"("phone" "text", "local" integer) TO "authenticated";
GRANT ALL ON FUNCTION "public"."create_customer"("phone" "text", "local" integer) TO "service_role";



GRANT ALL ON FUNCTION "public"."create_customer_card"() TO "anon";
GRANT ALL ON FUNCTION "public"."create_customer_card"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."create_customer_card"() TO "service_role";



GRANT ALL ON FUNCTION "public"."get_locals_geojson"() TO "anon";
GRANT ALL ON FUNCTION "public"."get_locals_geojson"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."get_locals_geojson"() TO "service_role";



GRANT ALL ON FUNCTION "public"."get_supabase_url"() TO "anon";
GRANT ALL ON FUNCTION "public"."get_supabase_url"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."get_supabase_url"() TO "service_role";



GRANT ALL ON FUNCTION "public"."get_user_app_id"() TO "anon";
GRANT ALL ON FUNCTION "public"."get_user_app_id"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."get_user_app_id"() TO "service_role";



GRANT ALL ON FUNCTION "public"."is_business_owner"("local_id" integer) TO "anon";
GRANT ALL ON FUNCTION "public"."is_business_owner"("local_id" integer) TO "authenticated";
GRANT ALL ON FUNCTION "public"."is_business_owner"("local_id" integer) TO "service_role";



GRANT ALL ON FUNCTION "public"."is_employer"("local_id" integer) TO "anon";
GRANT ALL ON FUNCTION "public"."is_employer"("local_id" integer) TO "authenticated";
GRANT ALL ON FUNCTION "public"."is_employer"("local_id" integer) TO "service_role";



GRANT ALL ON FUNCTION "public"."make_transaction"() TO "anon";
GRANT ALL ON FUNCTION "public"."make_transaction"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."make_transaction"() TO "service_role";



GRANT ALL ON FUNCTION "public"."run_transaction"("transactionid" integer) TO "anon";
GRANT ALL ON FUNCTION "public"."run_transaction"("transactionid" integer) TO "authenticated";
GRANT ALL ON FUNCTION "public"."run_transaction"("transactionid" integer) TO "service_role";



GRANT ALL ON FUNCTION "public"."update_transaction_units"() TO "anon";
GRANT ALL ON FUNCTION "public"."update_transaction_units"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."update_transaction_units"() TO "service_role";





















GRANT ALL ON TABLE "public"."local_addresses" TO "anon";
GRANT ALL ON TABLE "public"."local_addresses" TO "authenticated";
GRANT ALL ON TABLE "public"."local_addresses" TO "service_role";



GRANT ALL ON SEQUENCE "public"."addresses_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."addresses_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."addresses_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."businesses" TO "anon";
GRANT ALL ON TABLE "public"."businesses" TO "authenticated";
GRANT ALL ON TABLE "public"."businesses" TO "service_role";



GRANT ALL ON SEQUENCE "public"."companies_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."companies_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."companies_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."customer_cards" TO "anon";
GRANT ALL ON TABLE "public"."customer_cards" TO "authenticated";
GRANT ALL ON TABLE "public"."customer_cards" TO "service_role";



GRANT ALL ON SEQUENCE "public"."customer_cards_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."customer_cards_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."customer_cards_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."customers" TO "anon";
GRANT ALL ON TABLE "public"."customers" TO "authenticated";
GRANT ALL ON TABLE "public"."customers" TO "service_role";



GRANT ALL ON SEQUENCE "public"."customer_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."customer_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."customer_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."employees" TO "anon";
GRANT ALL ON TABLE "public"."employees" TO "authenticated";
GRANT ALL ON TABLE "public"."employees" TO "service_role";



GRANT ALL ON SEQUENCE "public"."employees_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."employees_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."employees_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."geo" TO "anon";
GRANT ALL ON TABLE "public"."geo" TO "authenticated";
GRANT ALL ON TABLE "public"."geo" TO "service_role";



GRANT ALL ON SEQUENCE "public"."geo_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."geo_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."geo_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."local_cards" TO "anon";
GRANT ALL ON TABLE "public"."local_cards" TO "authenticated";
GRANT ALL ON TABLE "public"."local_cards" TO "service_role";



GRANT ALL ON SEQUENCE "public"."local_cards_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."local_cards_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."local_cards_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."locals" TO "anon";
GRANT ALL ON TABLE "public"."locals" TO "authenticated";
GRANT ALL ON TABLE "public"."locals" TO "service_role";



GRANT ALL ON SEQUENCE "public"."locals_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."locals_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."locals_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."transaction_units" TO "anon";
GRANT ALL ON TABLE "public"."transaction_units" TO "authenticated";
GRANT ALL ON TABLE "public"."transaction_units" TO "service_role";



GRANT ALL ON TABLE "public"."transactions" TO "anon";
GRANT ALL ON TABLE "public"."transactions" TO "authenticated";
GRANT ALL ON TABLE "public"."transactions" TO "service_role";



GRANT ALL ON SEQUENCE "public"."transactions_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."transactions_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."transactions_id_seq" TO "service_role";



GRANT ALL ON SEQUENCE "public"."transactions_id_seq1" TO "anon";
GRANT ALL ON SEQUENCE "public"."transactions_id_seq1" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."transactions_id_seq1" TO "service_role";



GRANT ALL ON TABLE "public"."users" TO "anon";
GRANT ALL ON TABLE "public"."users" TO "authenticated";
GRANT ALL ON TABLE "public"."users" TO "service_role";



ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "service_role";



ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "service_role";



ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "service_role";



























RESET ALL;
