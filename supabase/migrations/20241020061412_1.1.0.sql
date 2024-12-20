drop policy "Enable select for user based customer" on "public"."customer_cards";
drop policy "Employer local" on "public"."customers";
drop policy "Employer" on "public"."customers";
drop policy "Enable select for users based on account" on "public"."customers";
drop policy "Employer permissions" on "public"."transaction_units";
drop policy "Employer with permission" on "public"."transaction_units";
drop policy "select by customer id" on "public"."transaction_units";
drop policy "Enable insert for users based on user_id" on "public"."transactions";
drop policy "Policy with table employer insert" on "public"."transactions";
drop policy "employer with select permission" on "public"."transactions";
drop policy "Employer insert" on "public"."customer_cards";
drop policy "Employer select" on "public"."customer_cards";
drop policy "Employer update" on "public"."customer_cards";
drop policy "Employer insert" on "public"."customers";
drop policy "Enable select for users based on user_id" on "public"."employees";
drop policy "Employer update" on "public"."transaction_units";
drop policy "update by customer id" on "public"."transaction_units";
alter table "public"."customer_cards" drop constraint "customer_cards_customer_fkey";
alter table "public"."customer_cards" alter column "customer" set data type integer using "customer"::integer;
alter table "public"."customers" add column "phone" text;
update "public"."customers" set "phone" = (SELECT auth.users.phone FROM auth.users WHERE auth.users.id = customers.account);
alter table "public"."customers" alter column "phone" set not null;
alter table "public"."geo" add column "local_address" integer;
update "public"."geo" set "local_address" = (SELECT local_addresses.id FROM local_addresses WHERE local_addresses.geo = geo.id);
alter table "public"."geo" alter column "local_address" set not null;
CREATE UNIQUE INDEX unique_customer_card ON public.customer_cards USING btree (customer, card);
CREATE UNIQUE INDEX unique_customer_local ON public.customers USING btree (local, account, phone);
CREATE UNIQUE INDEX unique_employer ON public.employees USING btree (local_address, account);
alter table "public"."businesses" add constraint "businesses_owner_fkey" FOREIGN KEY (owner) REFERENCES auth.users(id) ON UPDATE CASCADE ON DELETE CASCADE not valid;
alter table "public"."businesses" validate constraint "businesses_owner_fkey";
alter table "public"."customer_cards" add constraint "customer_cards_customer_fkey1" FOREIGN KEY (customer) REFERENCES customers(id) ON UPDATE CASCADE ON DELETE CASCADE not valid;
alter table "public"."customer_cards" validate constraint "customer_cards_customer_fkey1";
alter table "public"."customer_cards" add constraint "unique_customer_card" UNIQUE using index "unique_customer_card";
alter table "public"."customers" add constraint "customers_account_fkey" FOREIGN KEY (account) REFERENCES auth.users(id) ON UPDATE CASCADE ON DELETE CASCADE not valid;
alter table "public"."customers" validate constraint "customers_account_fkey";
alter table "public"."customers" add constraint "customers_phone_fkey" FOREIGN KEY (phone) REFERENCES auth.users(phone) ON UPDATE CASCADE ON DELETE CASCADE not valid;
alter table "public"."customers" validate constraint "customers_phone_fkey";
alter table "public"."customers" add constraint "unique_customer_local" UNIQUE using index "unique_customer_local";
alter table "public"."employees" add constraint "unique_employer" UNIQUE using index "unique_employer";
alter table "public"."geo" add constraint "geo_local_address_fkey" FOREIGN KEY (local_address) REFERENCES local_addresses(id) ON UPDATE CASCADE ON DELETE CASCADE not valid;
alter table "public"."geo" validate constraint "geo_local_address_fkey";
set check_function_bodies = off;
CREATE OR REPLACE FUNCTION auth.get_user_by_phone(phone_input text)
 RETURNS TABLE(id uuid, email character varying, phone text)
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
BEGIN
    RETURN QUERY
    SELECT u.id, u.email, u.phone
    FROM auth.users u
    WHERE u.phone = phone_input;
END;
$function$;
CREATE OR REPLACE FUNCTION public.check_employer_access(local_id bigint)
 RETURNS boolean
 LANGUAGE plpgsql
AS $function$DECLARE
   user_id UUID;
   is_employer BOOLEAN;
BEGIN
  IF (SELECT is_employer_app()) = FALSE
  THEN
    RETURN FALSE;
  END IF;

  user_id := (SELECT auth.uid() AS uid);

  SELECT EXISTS (
    SELECT e.id
    FROM employees e
    JOIN local_addresses l ON e.local_address = l.id
    WHERE e.account = user_id 
    AND l.local = local_id
  ) INTO is_employer;

  RETURN is_employer;
END;$function$;
CREATE OR REPLACE FUNCTION public.create_customer(phone text, local integer)
 RETURNS void
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$DECLARE
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
END;$function$;
CREATE OR REPLACE FUNCTION public.is_customer_app()
 RETURNS boolean
 LANGUAGE plpgsql
AS $function$BEGIN
  return (SELECT (((current_setting('request.headers'::text, true))::json ->> 'application'::text) = 'app.beeloyal.customer.beta'::text));
END;$function$;
CREATE OR REPLACE FUNCTION public.cancel_transaction(transactionid integer)
 RETURNS void
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$declare
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
end;$function$;
CREATE OR REPLACE FUNCTION public.is_employer_app()
 RETURNS boolean
 LANGUAGE sql
AS $function$(SELECT (((current_setting('request.headers'::text, true))::json ->> 'application'::text) = 'app.beeloyal.employer.beta'::text));$function$;
create policy "Customer select"
on "public"."customer_cards"
as permissive
for select
to authenticated
using ((is_customer_app() AND (( SELECT auth.uid() AS uid) = ( SELECT customers.account
   FROM customers
  WHERE (customer_cards.customer = customers.id)))));
create policy "Customer select"
on "public"."customers"
as permissive
for select
to authenticated
using ((is_customer_app() AND (( SELECT auth.uid() AS uid) = account)));
create policy "Employer select"
on "public"."customers"
as permissive
for select
to authenticated
using (check_employer_access((local)::bigint));
create policy "Employer update"
on "public"."customers"
as permissive
for update
to authenticated
using (check_employer_access((local)::bigint));
create policy "Customer select"
on "public"."transaction_units"
as permissive
for select
to authenticated
using ((is_customer_app() AND (auth.uid() = ( SELECT c.account
   FROM customers c
  WHERE (c.id = ( SELECT t.customer
           FROM transactions t
          WHERE (t.id = transaction_units.transaction)))))));
create policy "Employer insert"
on "public"."transaction_units"
as permissive
for insert
to authenticated
with check (check_employer_access((( SELECT t.local_address
   FROM transactions t
  WHERE (t.id = transaction_units.transaction)))::bigint));
create policy "Employer select"
on "public"."transaction_units"
as permissive
for select
to authenticated
using (check_employer_access((( SELECT t.local_address
   FROM transactions t
  WHERE (t.id = transaction_units.transaction)))::bigint));
create policy "Customer select"
on "public"."transactions"
as permissive
for select
to authenticated
using ((is_customer_app() AND (auth.uid() = ( SELECT customers.account
   FROM customers
  WHERE (customers.id = transactions.customer)))));
create policy "Employer insert"
on "public"."transactions"
as permissive
for insert
to authenticated
with check (check_employer_access(( SELECT l.local
   FROM local_addresses l
  WHERE (l.id = transactions.local_address))));
create policy "Employer select"
on "public"."transactions"
as permissive
for select
to authenticated
using (check_employer_access(( SELECT l.local
   FROM local_addresses l
  WHERE (l.id = transactions.local_address))));
create policy "Employer insert"
on "public"."customer_cards"
as permissive
for insert
to public
with check (check_employer_access((( SELECT l.local
   FROM local_cards l
  WHERE (l.id = customer_cards.card)))::bigint));
create policy "Employer select"
on "public"."customer_cards"
as permissive
for select
to authenticated
using (check_employer_access((( SELECT l.local
   FROM local_cards l
  WHERE (l.id = customer_cards.card)))::bigint));
create policy "Employer update"
on "public"."customer_cards"
as permissive
for update
to public
using (check_employer_access((( SELECT l.local
   FROM local_cards l
  WHERE (l.id = customer_cards.card)))::bigint));
create policy "Employer insert"
on "public"."customers"
as permissive
for insert
to authenticated
with check (check_employer_access((local)::bigint));
create policy "Enable select for users based on user_id"
on "public"."employees"
as permissive
for select
to public
using ((( SELECT auth.uid() AS uid) = account));
create policy "Employer update"
on "public"."transaction_units"
as permissive
for update
to authenticated
using (check_employer_access((( SELECT t.local_address
   FROM transactions t
  WHERE (t.id = transaction_units.transaction)))::bigint))
with check (check_employer_access((( SELECT t.local_address
   FROM transactions t
  WHERE (t.id = transaction_units.transaction)))::bigint));
create policy "update by customer id"
on "public"."transaction_units"
as permissive
for update
to public
using ((is_customer_app() AND (auth.uid() = ( SELECT c.account
   FROM customers c
  WHERE (c.id = ( SELECT t.customer
           FROM transactions t
          WHERE (t.id = transaction_units.transaction))))) AND (status = 'required_confirmation'::transaction_status)));
