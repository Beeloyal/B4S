create type "public"."country" as enum ('poland');
drop trigger if exists "reward_confirmation_request_notification" on "public"."transaction_units";
drop trigger if exists "transaction_completed_notification" on "public"."transactions";
drop policy "employer_app_access" on "public"."businesses";
drop policy "employer_select" on "public"."businesses";
drop policy "allow_user_access_to_their_customer_cards" on "public"."customer_cards";
drop policy "allow_user_access_to_their_customer_record" on "public"."customers";
drop policy "Enable read access for all users" on "public"."local_addresses";
drop policy "Employer select" on "public"."locals";
drop policy "Enable read access for all users" on "public"."locals";
drop policy "allow_user_access_their_transaction_units" on "public"."transaction_units";
drop policy "allow_user_access_to_their_transactions" on "public"."transactions";
drop policy "Employer insert" on "public"."customer_cards";
drop policy "Employer select" on "public"."customer_cards";
drop policy "Employer update" on "public"."customer_cards";
drop policy "Employer insert" on "public"."customers";
drop policy "Employer select" on "public"."customers";
drop policy "Employer update" on "public"."customers";
drop policy "Enable select for users based on user_id" on "public"."employees";
drop policy "Employer insert" on "public"."transaction_units";
drop policy "Employer select" on "public"."transaction_units";
drop policy "Employer update" on "public"."transaction_units";
drop policy "Employer insert" on "public"."transactions";
drop policy "Employer select" on "public"."transactions";
alter table "public"."locals" drop constraint "public_locals_company_fkey";
alter table "public"."transactions" drop constraint "transactions_customer_fkey1";
alter table "public"."transactions" drop constraint "transactions_employer_fkey";
alter table "public"."transactions" drop constraint "transactions_local_address_fkey1";
drop function if exists "public"."check_app_id"(expected_app_id text);
drop function if exists "public"."check_employer_access"(local_id bigint);
alter table "public"."employees" drop column "name";
alter table "public"."employees" add column "enabled" boolean not null default true;
alter table "public"."local_addresses" drop column "apartament_number";
alter table "public"."local_addresses" drop column "building_number";
alter table "public"."local_addresses" drop column "province";
alter table "public"."local_addresses" drop column "street";
alter table "public"."local_addresses" drop column "zip_code";
alter table "public"."local_addresses" alter column "country" set data type country using "country"::country;
alter table "public"."local_addresses" alter column "display_address" set not null;
alter table "public"."local_addresses" alter column "geo" drop not null;
alter table "public"."locals" add column "business" bigint;
update "public"."locals" set "business" = "company";
alter table "public"."locals" alter column "business" set not null;
alter table "public"."locals" drop column "company";
alter table "public"."transactions" drop column "employer";
alter table "public"."transactions" add column "executor" uuid not null;
alter table "public"."locals" add constraint "locals_business_fkey" FOREIGN KEY (business) REFERENCES businesses(id) ON UPDATE CASCADE ON DELETE CASCADE not valid;
alter table "public"."locals" validate constraint "locals_business_fkey";
alter table "public"."transactions" add constraint "transactions_customer_fkey" FOREIGN KEY (customer) REFERENCES customers(id) ON UPDATE CASCADE ON DELETE CASCADE not valid;
alter table "public"."transactions" validate constraint "transactions_customer_fkey";
alter table "public"."transactions" add constraint "transactions_executor_fkey" FOREIGN KEY (executor) REFERENCES auth.users(id) ON UPDATE CASCADE ON DELETE RESTRICT not valid;
alter table "public"."transactions" validate constraint "transactions_executor_fkey";
alter table "public"."transactions" add constraint "transactions_local_address_fkey" FOREIGN KEY (local_address) REFERENCES local_addresses(id) ON UPDATE CASCADE ON DELETE CASCADE not valid;
alter table "public"."transactions" validate constraint "transactions_local_address_fkey";
set check_function_bodies = off;
CREATE OR REPLACE FUNCTION public.after_logo_url_update()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
BEGIN
    -- Wywołaj Edge Function tylko jeśli logo_url się zmieniło
    IF OLD.logo_url IS DISTINCT FROM NEW.logo_url THEN
        PERFORM call_generate_marker(
            'https://cfrwepxesctjdwtkmfas.supabase.co/functions/v1/generateMarker',
            NEW.id,
            NEW.logo_url
        );
    END IF;

    RETURN NEW;
END;
$function$;
CREATE OR REPLACE FUNCTION public.check_access(local_id integer)
 RETURNS boolean
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
BEGIN
  RETURN check_app_id('app.beeloyal.employer.beta') AND (is_employer(local_id) OR is_business_owner(local_id));
END;
$function$;
CREATE OR REPLACE FUNCTION public.check_app_id(app_id text)
 RETURNS boolean
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
BEGIN
    IF(((current_setting('request.headers'::text, true))::json ->> 'x-app-id'::text) = app_id)
    THEN
      RETURN TRUE;
    END IF;

    IF(get_user_app_id() = app_id)
    THEN
      RETURN TRUE;
    END IF;

    RETURN FALSE;
END;
$function$;
CREATE OR REPLACE FUNCTION public.check_business_owner(user_uuid uuid, business_id integer)
 RETURNS boolean
 LANGUAGE plpgsql
AS $function$
BEGIN
  RETURN EXISTS (
    SELECT b.id
    FROM businesses b
    WHERE b.owner = user_uuid
    AND b.id = business_id
  );
END;
$function$;
CREATE OR REPLACE FUNCTION public.check_customer_access()
 RETURNS boolean
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
BEGIN
  RETURN check_app_id('app.beeloyal.customer.beta');
END;
$function$;
CREATE OR REPLACE FUNCTION public.get_user_app_id()
 RETURNS text
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
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
$function$;
CREATE OR REPLACE FUNCTION public.is_business_owner(local_id integer)
 RETURNS boolean
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
BEGIN
  RETURN EXISTS (
    SELECT 1
    FROM locals l
    JOIN businesses b ON l.business = b.id
    WHERE b.owner = auth.uid()
    AND l.id = local_id
  );
END;
$function$;
CREATE OR REPLACE FUNCTION public.is_employer(local_id integer)
 RETURNS boolean
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$BEGIN
  RETURN EXISTS (
    SELECT 1
    FROM employees e
    JOIN local_addresses l ON e.local_address = l.id
    WHERE e.account = auth.uid() AND e.enabled = true
    AND l.local = local_id
  );
END;$function$;
create policy "Enable users to view their own data only"
on "public"."businesses"
as permissive
for all
to authenticated
using ((( SELECT auth.uid() AS uid) = owner))
with check ((( SELECT auth.uid() AS uid) = owner));
create policy "Customer select"
on "public"."customer_cards"
as permissive
for select
to authenticated
using ((check_customer_access() AND (( SELECT customers.account
   FROM customers
  WHERE (customers.id = customer_cards.customer)) = auth.uid())));
create policy "Customer select"
on "public"."customers"
as permissive
for select
to authenticated
using ((check_customer_access() AND (account = auth.uid())));
create policy "[ALL] Business"
on "public"."employees"
as permissive
for all
to public
using (check_business_owner(auth.uid(), company))
with check (check_business_owner(auth.uid(), company));
create policy "Customer select"
on "public"."geo"
as permissive
for select
to public
using (check_customer_access());
create policy "Customer select"
on "public"."local_addresses"
as permissive
for select
to public
using (check_customer_access());
create policy "Employer app select"
on "public"."local_addresses"
as permissive
for select
to public
using (check_access((local)::integer));
create policy "Customer select"
on "public"."local_cards"
as permissive
for select
to public
using (check_customer_access());
create policy "Customer select"
on "public"."locals"
as permissive
for select
to public
using (check_customer_access());
create policy "Employer app select"
on "public"."locals"
as permissive
for select
to public
using (check_access(id));
create policy "Customer select"
on "public"."transaction_units"
as permissive
for select
to authenticated
using ((check_customer_access() AND (( SELECT customers.account
   FROM customers
  WHERE (customers.id = ( SELECT transactions.customer
           FROM transactions
          WHERE (transactions.id = transaction_units.transaction)))) = auth.uid())));
create policy "Customer access"
on "public"."transactions"
as permissive
for select
to authenticated
using ((check_customer_access() AND (( SELECT customers.account
   FROM customers
  WHERE (customers.id = transactions.customer)) = auth.uid())));
create policy "Employer insert"
on "public"."customer_cards"
as permissive
for insert
to public
with check (check_access(( SELECT l.local
   FROM local_cards l
  WHERE (l.id = customer_cards.card))));
create policy "Employer select"
on "public"."customer_cards"
as permissive
for select
to public
using (check_access(( SELECT l.local
   FROM local_cards l
  WHERE (l.id = customer_cards.card))));
create policy "Employer update"
on "public"."customer_cards"
as permissive
for update
to public
using (check_access(( SELECT l.local
   FROM local_cards l
  WHERE (l.id = customer_cards.card))));
create policy "Employer insert"
on "public"."customers"
as permissive
for insert
to public
with check (check_access(local));
create policy "Employer select"
on "public"."customers"
as permissive
for select
to public
using (check_access(local));
create policy "Employer update"
on "public"."customers"
as permissive
for update
to public
using (check_access(local));
create policy "Enable select for users based on user_id"
on "public"."employees"
as permissive
for select
to public
using (((( SELECT auth.uid() AS uid) = account) AND enabled));
create policy "Employer insert"
on "public"."transaction_units"
as permissive
for insert
to public
with check (check_access((( SELECT local_addresses.local
   FROM local_addresses
  WHERE (local_addresses.id = ( SELECT t.local_address
           FROM transactions t
          WHERE (t.id = transaction_units.transaction)))))::integer));
create policy "Employer select"
on "public"."transaction_units"
as permissive
for select
to public
using (check_access((( SELECT local_addresses.local
   FROM local_addresses
  WHERE (local_addresses.id = ( SELECT t.local_address
           FROM transactions t
          WHERE (t.id = transaction_units.transaction)))))::integer));
create policy "Employer update"
on "public"."transaction_units"
as permissive
for update
to public
using (check_access((( SELECT local_addresses.local
   FROM local_addresses
  WHERE (local_addresses.id = ( SELECT t.local_address
           FROM transactions t
          WHERE (t.id = transaction_units.transaction)))))::integer))
with check (check_access((( SELECT local_addresses.local
   FROM local_addresses
  WHERE (local_addresses.id = ( SELECT t.local_address
           FROM transactions t
          WHERE (t.id = transaction_units.transaction)))))::integer));
create policy "Employer insert"
on "public"."transactions"
as permissive
for insert
to public
with check (check_access((( SELECT l.local
   FROM local_addresses l
  WHERE (l.id = transactions.local_address)))::integer));
create policy "Employer select"
on "public"."transactions"
as permissive
for select
to public
using (check_access((( SELECT l.local
   FROM local_addresses l
  WHERE (l.id = transactions.local_address)))::integer));
CREATE TRIGGER reward_confirmation_request_notification AFTER UPDATE ON public.transaction_units FOR EACH ROW EXECUTE FUNCTION supabase_functions.http_request('https://cfrwepxesctjdwtkmfas.supabase.co/functions/v1/rewardConfirmationRequestNotification', 'POST', '{"Content-type":"application/json"}', '{}', '5000');
CREATE TRIGGER transaction_completed_notification AFTER UPDATE ON public.transactions FOR EACH ROW EXECUTE FUNCTION supabase_functions.http_request('https://cfrwepxesctjdwtkmfas.supabase.co/functions/v1/transactionCompletedNotification', 'POST', '{"Content-type":"application/json"}', '{}', '5000');
