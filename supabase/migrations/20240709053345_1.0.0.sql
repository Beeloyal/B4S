
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

CREATE TYPE "public"."transaction_status" AS ENUM (
    'in_progress',
    'failed',
    'completed',
    'waiting',
    'confirmed',
    'required_confirmation',
    'rejected'
);

ALTER TYPE "public"."transaction_status" OWNER TO "postgres";

CREATE TYPE "public"."transaction_type" AS ENUM (
    'add_points',
    'add_stamps',
    'get_reward'
);

ALTER TYPE "public"."transaction_type" OWNER TO "postgres";

CREATE OR REPLACE FUNCTION "public"."check_transaction_units"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$declare
  value bigint;
begin
  if new.status = 'completed'::transaction_status OR new.status = 'rejected'::transaction_status
  then
    select id into value from transaction_units where transaction = new.transaction AND status != 'completed'::transaction_status AND status != 'rejected'::transaction_status limit 1;

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
    set status = 'rejected'::transaction_status
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

CREATE OR REPLACE FUNCTION "public"."create_account"() RETURNS "trigger"
    LANGUAGE "plpgsql" SECURITY DEFINER
    AS $$begin
  insert into public.accounts(id, phone)
  values(new.id, new.phone);
  return new;
end;$$;

ALTER FUNCTION "public"."create_account"() OWNER TO "postgres";

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

CREATE OR REPLACE FUNCTION "public"."is_employer_app"() RETURNS boolean
    LANGUAGE "sql"
    AS $$
  (SELECT (((current_setting('request.headers'::text, true))::json ->> 'client'::text) = 'app.beeloyal.employer'::text));
$$;

ALTER FUNCTION "public"."is_employer_app"() OWNER TO "postgres";

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

CREATE TABLE IF NOT EXISTS "public"."accounts" (
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "id" "uuid" DEFAULT "auth"."uid"() NOT NULL,
    "phone" "text" NOT NULL
);

ALTER TABLE "public"."accounts" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."local_addresses" (
    "id" integer NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "country" character varying NOT NULL,
    "province" character varying NOT NULL,
    "city" character varying NOT NULL,
    "zip_code" character varying NOT NULL,
    "street" character varying NOT NULL,
    "building_number" character varying NOT NULL,
    "apartament_number" character varying,
    "display_address" character varying,
    "local" bigint NOT NULL,
    "geo" bigint NOT NULL
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

CREATE TABLE IF NOT EXISTS "public"."companies" (
    "id" integer NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "name" "text" NOT NULL,
    "owner" "uuid" NOT NULL
);

ALTER TABLE "public"."companies" OWNER TO "postgres";

ALTER TABLE "public"."companies" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
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
    "customer" bigint NOT NULL,
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
    "name" "text" DEFAULT ''::"text" NOT NULL,
    "local_address" integer NOT NULL,
    "account" "uuid" NOT NULL
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
    "long" double precision NOT NULL
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
    "iconUrl" character varying,
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
    "company" bigint NOT NULL,
    "logo_url" character varying,
    "banner_url" character varying,
    "category_icon_url" character varying,
    "short_description" character varying
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
    "employer" integer NOT NULL,
    "completed_at" timestamp with time zone,
    "status" "public"."transaction_status" DEFAULT 'waiting'::"public"."transaction_status" NOT NULL
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

ALTER TABLE ONLY "public"."accounts"
    ADD CONSTRAINT "accounts_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."local_addresses"
    ADD CONSTRAINT "addresses_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."companies"
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

CREATE OR REPLACE TRIGGER "check_transaction_units" AFTER UPDATE ON "public"."transaction_units" FOR EACH ROW EXECUTE FUNCTION "public"."check_transaction_units"();

CREATE OR REPLACE TRIGGER "confirmed_transaction_unit" AFTER UPDATE ON "public"."transaction_units" FOR EACH ROW EXECUTE FUNCTION "public"."confirmed_transaction_unit"();

CREATE OR REPLACE TRIGGER "create_customer_card" BEFORE INSERT ON "public"."transaction_units" FOR EACH ROW EXECUTE FUNCTION "public"."create_customer_card"();

CREATE OR REPLACE TRIGGER "make_transaction" BEFORE UPDATE ON "public"."transaction_units" FOR EACH ROW EXECUTE FUNCTION "public"."make_transaction"();

CREATE OR REPLACE TRIGGER "reward_confirmation_request_notification" AFTER UPDATE ON "public"."transaction_units" FOR EACH ROW EXECUTE FUNCTION "supabase_functions"."http_request"('https://rhwwbrzqbrcrpbxoezhp.supabase.co/functions/v1/rewardConfirmationRequestNotification', 'POST', '{"Content-type":"application/json"}', '{}', '5000');

CREATE OR REPLACE TRIGGER "transaction_completed_notification" AFTER UPDATE ON "public"."transactions" FOR EACH ROW EXECUTE FUNCTION "supabase_functions"."http_request"('https://rhwwbrzqbrcrpbxoezhp.supabase.co/functions/v1/transactionCompletedNotification', 'POST', '{"Content-type":"application/json"}', '{}', '5000');

CREATE OR REPLACE TRIGGER "update_transaction_units" AFTER UPDATE ON "public"."transactions" FOR EACH ROW EXECUTE FUNCTION "public"."update_transaction_units"();

ALTER TABLE ONLY "public"."accounts"
    ADD CONSTRAINT "accounts_phone_fkey" FOREIGN KEY ("phone") REFERENCES "auth"."users"("phone") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."companies"
    ADD CONSTRAINT "companies_owner_fkey" FOREIGN KEY ("owner") REFERENCES "public"."accounts"("id");

ALTER TABLE ONLY "public"."customer_cards"
    ADD CONSTRAINT "customer_cards_card_fkey" FOREIGN KEY ("card") REFERENCES "public"."local_cards"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."customer_cards"
    ADD CONSTRAINT "customer_cards_customer_fkey" FOREIGN KEY ("customer") REFERENCES "public"."customers"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."customers"
    ADD CONSTRAINT "customers_local_fkey" FOREIGN KEY ("local") REFERENCES "public"."locals"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."employees"
    ADD CONSTRAINT "employees_account_fkey" FOREIGN KEY ("account") REFERENCES "auth"."users"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."employees"
    ADD CONSTRAINT "employees_company_fkey" FOREIGN KEY ("company") REFERENCES "public"."companies"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."employees"
    ADD CONSTRAINT "employees_local_address_fkey" FOREIGN KEY ("local_address") REFERENCES "public"."local_addresses"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."local_addresses"
    ADD CONSTRAINT "local_addresses_local_fkey" FOREIGN KEY ("local") REFERENCES "public"."locals"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."accounts"
    ADD CONSTRAINT "public_accounts_id_fkey" FOREIGN KEY ("id") REFERENCES "auth"."users"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."customers"
    ADD CONSTRAINT "public_customer_account_fkey" FOREIGN KEY ("account") REFERENCES "public"."accounts"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."local_addresses"
    ADD CONSTRAINT "public_local_addresses_geo_fkey" FOREIGN KEY ("geo") REFERENCES "public"."geo"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."local_cards"
    ADD CONSTRAINT "public_local_cards_local_fkey" FOREIGN KEY ("local") REFERENCES "public"."locals"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."locals"
    ADD CONSTRAINT "public_locals_company_fkey" FOREIGN KEY ("company") REFERENCES "public"."companies"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."transaction_units"
    ADD CONSTRAINT "transaction_units_transaction_fkey" FOREIGN KEY ("transaction") REFERENCES "public"."transactions"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."transaction_units"
    ADD CONSTRAINT "transactions_customer_card_fkey" FOREIGN KEY ("customer_card") REFERENCES "public"."customer_cards"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."transactions"
    ADD CONSTRAINT "transactions_customer_fkey1" FOREIGN KEY ("customer") REFERENCES "public"."customers"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."transactions"
    ADD CONSTRAINT "transactions_employer_fkey" FOREIGN KEY ("employer") REFERENCES "public"."employees"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."transactions"
    ADD CONSTRAINT "transactions_local_address_fkey1" FOREIGN KEY ("local_address") REFERENCES "public"."local_addresses"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."transaction_units"
    ADD CONSTRAINT "transactions_local_card_fkey" FOREIGN KEY ("local_card") REFERENCES "public"."local_cards"("id") ON UPDATE CASCADE ON DELETE CASCADE;

CREATE POLICY "Employer" ON "public"."customers" FOR SELECT USING ((("local" = ( SELECT "local_addresses"."local"
   FROM "public"."local_addresses"
  WHERE ("local_addresses"."id" = ( SELECT "employees"."local_address"
           FROM "public"."employees"
          WHERE ("employees"."account" = ( SELECT "auth"."uid"() AS "uid")))))) AND "public"."is_employer_app"()));

CREATE POLICY "Employer insert" ON "public"."customer_cards" FOR INSERT WITH CHECK (((( SELECT "local_cards"."local"
   FROM "public"."local_cards"
  WHERE ("local_cards"."id" = "customer_cards"."card")) = ( SELECT "local_addresses"."local"
   FROM "public"."local_addresses"
  WHERE ("local_addresses"."id" = ( SELECT "employees"."local_address"
           FROM "public"."employees"
          WHERE ("employees"."account" = ( SELECT "auth"."uid"() AS "uid")))))) AND "public"."is_employer_app"()));

CREATE POLICY "Employer insert" ON "public"."customers" FOR INSERT WITH CHECK ((("local" = ( SELECT "local_addresses"."local"
   FROM "public"."local_addresses"
  WHERE ("local_addresses"."id" = ( SELECT "employees"."local_address"
           FROM "public"."employees"
          WHERE ("employees"."account" = ( SELECT "auth"."uid"() AS "uid")))))) AND "public"."is_employer_app"()));

CREATE POLICY "Employer local" ON "public"."customers" FOR UPDATE USING ((("local" = ( SELECT "local_addresses"."local"
   FROM "public"."local_addresses"
  WHERE ("local_addresses"."id" = ( SELECT "employees"."local_address"
           FROM "public"."employees"
          WHERE ("employees"."account" = ( SELECT "auth"."uid"() AS "uid")))))) AND "public"."is_employer_app"()));

CREATE POLICY "Employer permissions" ON "public"."transaction_units" FOR INSERT WITH CHECK (((( SELECT "auth"."uid"() AS "uid") IN ( SELECT "employees"."account" AS "user_id"
   FROM "public"."employees"
  WHERE ("employees"."id" = ( SELECT "transactions"."employer"
           FROM "public"."transactions"
          WHERE ("transactions"."id" = "transaction_units"."transaction"))))) AND "public"."is_employer_app"()));

CREATE POLICY "Employer select" ON "public"."accounts" FOR SELECT USING ("public"."is_employer_app"());

CREATE POLICY "Employer select" ON "public"."customer_cards" FOR SELECT USING ((( SELECT "local_cards"."local"
   FROM "public"."local_cards"
  WHERE ("local_cards"."id" = "customer_cards"."card")) = ( SELECT "local_addresses"."local"
   FROM "public"."local_addresses"
  WHERE ("local_addresses"."id" = ( SELECT "employees"."local_address"
           FROM "public"."employees"
          WHERE ("employees"."account" = ( SELECT "auth"."uid"() AS "uid")))))));

CREATE POLICY "Employer update" ON "public"."customer_cards" FOR UPDATE USING ((( SELECT "local_cards"."local"
   FROM "public"."local_cards"
  WHERE ("local_cards"."id" = "customer_cards"."card")) = ( SELECT "local_addresses"."local"
   FROM "public"."local_addresses"
  WHERE ("local_addresses"."id" = ( SELECT "employees"."local_address"
           FROM "public"."employees"
          WHERE ("employees"."account" = ( SELECT "auth"."uid"() AS "uid")))))));

CREATE POLICY "Employer update" ON "public"."transaction_units" FOR UPDATE USING (((( SELECT "auth"."uid"() AS "uid") = ( SELECT "employees"."account" AS "user_id"
   FROM "public"."employees"
  WHERE ("employees"."id" = ( SELECT "transactions"."employer"
           FROM "public"."transactions"
          WHERE ("transactions"."id" = "transaction_units"."transaction"))))) AND "public"."is_employer_app"()));

CREATE POLICY "Employer with permission" ON "public"."transaction_units" FOR SELECT USING ((( SELECT "auth"."uid"() AS "uid") IN ( SELECT "employees"."account" AS "user_id"
   FROM "public"."employees"
  WHERE ("employees"."id" = ( SELECT "transactions"."employer"
           FROM "public"."transactions"
          WHERE ("transactions"."id" = "transaction_units"."transaction"))))));

CREATE POLICY "Enable insert for users based on user_id" ON "public"."transactions" FOR SELECT USING ((( SELECT "auth"."uid"() AS "uid") = ( SELECT "customers"."account"
   FROM "public"."customers"
  WHERE ("customers"."id" = "transactions"."customer"))));

CREATE POLICY "Enable read access for all users" ON "public"."geo" FOR SELECT USING (true);

CREATE POLICY "Enable read access for all users" ON "public"."local_addresses" FOR SELECT USING (true);

CREATE POLICY "Enable read access for all users" ON "public"."locals" FOR SELECT USING (true);

CREATE POLICY "Enable select for user based customer" ON "public"."customer_cards" FOR SELECT USING ((( SELECT "auth"."uid"() AS "uid") = ( SELECT "customers"."account"
   FROM "public"."customers"
  WHERE ("customer_cards"."customer" = "customers"."id"))));

CREATE POLICY "Enable select for users based on account" ON "public"."customers" FOR SELECT USING ((( SELECT "auth"."uid"() AS "uid") = "account"));

CREATE POLICY "Enable select for users based on user_id" ON "public"."employees" FOR SELECT TO "authenticated" USING ((( SELECT "auth"."uid"() AS "uid") = "account"));

CREATE POLICY "Get Account" ON "public"."accounts" USING ((( SELECT "auth"."uid"() AS "uid") = "id"));

CREATE POLICY "Local card user select" ON "public"."local_cards" FOR SELECT USING (true);

CREATE POLICY "Policy with table employer insert" ON "public"."transactions" FOR INSERT WITH CHECK (((( SELECT "auth"."uid"() AS "uid") IN ( SELECT "employees"."account" AS "user_id"
   FROM "public"."employees"
  WHERE ("employees"."id" = "transactions"."employer"))) AND "public"."is_employer_app"()));

ALTER TABLE "public"."accounts" ENABLE ROW LEVEL SECURITY;

ALTER TABLE "public"."companies" ENABLE ROW LEVEL SECURITY;

ALTER TABLE "public"."customer_cards" ENABLE ROW LEVEL SECURITY;

ALTER TABLE "public"."customers" ENABLE ROW LEVEL SECURITY;

ALTER TABLE "public"."employees" ENABLE ROW LEVEL SECURITY;

CREATE POLICY "employer with select permission" ON "public"."transactions" FOR SELECT USING ((( SELECT "auth"."uid"() AS "uid") IN ( SELECT "employees"."account" AS "user_id"
   FROM "public"."employees"
  WHERE ("employees"."id" = "transactions"."employer"))));

ALTER TABLE "public"."geo" ENABLE ROW LEVEL SECURITY;

ALTER TABLE "public"."local_addresses" ENABLE ROW LEVEL SECURITY;

ALTER TABLE "public"."local_cards" ENABLE ROW LEVEL SECURITY;

ALTER TABLE "public"."locals" ENABLE ROW LEVEL SECURITY;

CREATE POLICY "select by customer id" ON "public"."transaction_units" FOR SELECT USING ((( SELECT "auth"."uid"() AS "uid") = ( SELECT "customers"."account"
   FROM "public"."customers"
  WHERE ("customers"."id" = ( SELECT "transactions"."customer"
           FROM "public"."transactions"
          WHERE ("transactions"."id" = "transaction_units"."transaction"))))));

CREATE POLICY "select by owner uid" ON "public"."companies" FOR SELECT USING ((( SELECT "auth"."uid"() AS "uid") = "owner"));

ALTER TABLE "public"."transaction_units" ENABLE ROW LEVEL SECURITY;

ALTER TABLE "public"."transactions" ENABLE ROW LEVEL SECURITY;

CREATE POLICY "update by customer id" ON "public"."transaction_units" FOR UPDATE USING ((( SELECT "auth"."uid"() AS "uid") = ( SELECT "customers"."account"
   FROM "public"."customers"
  WHERE ("customers"."id" = ( SELECT "transactions"."customer"
           FROM "public"."transactions"
          WHERE ("transactions"."id" = "transaction_units"."transaction"))))));

ALTER PUBLICATION "supabase_realtime" OWNER TO "postgres";

ALTER PUBLICATION "supabase_realtime" ADD TABLE ONLY "public"."customer_cards";

ALTER PUBLICATION "supabase_realtime" ADD TABLE ONLY "public"."transaction_units";

ALTER PUBLICATION "supabase_realtime" ADD TABLE ONLY "public"."transactions";

REVOKE USAGE ON SCHEMA "public" FROM PUBLIC;
GRANT USAGE ON SCHEMA "public" TO "anon";
GRANT USAGE ON SCHEMA "public" TO "authenticated";
GRANT USAGE ON SCHEMA "public" TO "service_role";

GRANT ALL ON FUNCTION "public"."check_transaction_units"() TO "anon";
GRANT ALL ON FUNCTION "public"."check_transaction_units"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."check_transaction_units"() TO "service_role";

GRANT ALL ON FUNCTION "public"."confirm_reward_collect"("transactionid" integer, "confirmed" boolean) TO "anon";
GRANT ALL ON FUNCTION "public"."confirm_reward_collect"("transactionid" integer, "confirmed" boolean) TO "authenticated";
GRANT ALL ON FUNCTION "public"."confirm_reward_collect"("transactionid" integer, "confirmed" boolean) TO "service_role";

GRANT ALL ON FUNCTION "public"."confirmed_transaction_unit"() TO "anon";
GRANT ALL ON FUNCTION "public"."confirmed_transaction_unit"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."confirmed_transaction_unit"() TO "service_role";

GRANT ALL ON FUNCTION "public"."create_account"() TO "anon";
GRANT ALL ON FUNCTION "public"."create_account"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."create_account"() TO "service_role";

GRANT ALL ON FUNCTION "public"."create_customer_card"() TO "anon";
GRANT ALL ON FUNCTION "public"."create_customer_card"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."create_customer_card"() TO "service_role";

GRANT ALL ON FUNCTION "public"."is_employer_app"() TO "anon";
GRANT ALL ON FUNCTION "public"."is_employer_app"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."is_employer_app"() TO "service_role";

GRANT ALL ON FUNCTION "public"."make_transaction"() TO "anon";
GRANT ALL ON FUNCTION "public"."make_transaction"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."make_transaction"() TO "service_role";

GRANT ALL ON FUNCTION "public"."run_transaction"("transactionid" integer) TO "anon";
GRANT ALL ON FUNCTION "public"."run_transaction"("transactionid" integer) TO "authenticated";
GRANT ALL ON FUNCTION "public"."run_transaction"("transactionid" integer) TO "service_role";

GRANT ALL ON FUNCTION "public"."update_transaction_units"() TO "anon";
GRANT ALL ON FUNCTION "public"."update_transaction_units"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."update_transaction_units"() TO "service_role";

GRANT ALL ON TABLE "public"."accounts" TO "anon";
GRANT ALL ON TABLE "public"."accounts" TO "authenticated";
GRANT ALL ON TABLE "public"."accounts" TO "service_role";

GRANT ALL ON TABLE "public"."local_addresses" TO "anon";
GRANT ALL ON TABLE "public"."local_addresses" TO "authenticated";
GRANT ALL ON TABLE "public"."local_addresses" TO "service_role";

GRANT ALL ON SEQUENCE "public"."addresses_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."addresses_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."addresses_id_seq" TO "service_role";

GRANT ALL ON TABLE "public"."companies" TO "anon";
GRANT ALL ON TABLE "public"."companies" TO "authenticated";
GRANT ALL ON TABLE "public"."companies" TO "service_role";

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

--
-- Dumped schema changes for auth and storage
--

