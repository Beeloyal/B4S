create extension if not exists "http" with schema "extensions";


drop policy "Employees select company data" on "public"."companies";

drop policy "Enable read access for all users" on "public"."local_details";

drop policy "Enable read access for all users" on "public"."local_urls";

drop policy "Employer select" on "public"."accounts";

drop policy "Employer insert" on "public"."customer_cards";

drop policy "Employer select" on "public"."customer_cards";

drop policy "Employer update" on "public"."customer_cards";

drop policy "Employer insert" on "public"."customers";

drop policy "Employer local" on "public"."customers";

drop policy "Employer" on "public"."customers";

drop policy "Enable select for users based on user_id" on "public"."employees";

drop policy "Employer permissions" on "public"."transaction_units";

drop policy "Employer update" on "public"."transaction_units";

drop policy "Employer with permission" on "public"."transaction_units";

drop policy "Policy with table employer insert" on "public"."transactions";

drop policy "employer with select permission" on "public"."transactions";

revoke delete on table "public"."local_details" from "anon";

revoke insert on table "public"."local_details" from "anon";

revoke references on table "public"."local_details" from "anon";

revoke select on table "public"."local_details" from "anon";

revoke trigger on table "public"."local_details" from "anon";

revoke truncate on table "public"."local_details" from "anon";

revoke update on table "public"."local_details" from "anon";

revoke delete on table "public"."local_details" from "authenticated";

revoke insert on table "public"."local_details" from "authenticated";

revoke references on table "public"."local_details" from "authenticated";

revoke select on table "public"."local_details" from "authenticated";

revoke trigger on table "public"."local_details" from "authenticated";

revoke truncate on table "public"."local_details" from "authenticated";

revoke update on table "public"."local_details" from "authenticated";

revoke delete on table "public"."local_details" from "service_role";

revoke insert on table "public"."local_details" from "service_role";

revoke references on table "public"."local_details" from "service_role";

revoke select on table "public"."local_details" from "service_role";

revoke trigger on table "public"."local_details" from "service_role";

revoke truncate on table "public"."local_details" from "service_role";

revoke update on table "public"."local_details" from "service_role";

revoke delete on table "public"."local_urls" from "anon";

revoke insert on table "public"."local_urls" from "anon";

revoke references on table "public"."local_urls" from "anon";

revoke select on table "public"."local_urls" from "anon";

revoke trigger on table "public"."local_urls" from "anon";

revoke truncate on table "public"."local_urls" from "anon";

revoke update on table "public"."local_urls" from "anon";

revoke delete on table "public"."local_urls" from "authenticated";

revoke insert on table "public"."local_urls" from "authenticated";

revoke references on table "public"."local_urls" from "authenticated";

revoke select on table "public"."local_urls" from "authenticated";

revoke trigger on table "public"."local_urls" from "authenticated";

revoke truncate on table "public"."local_urls" from "authenticated";

revoke update on table "public"."local_urls" from "authenticated";

revoke delete on table "public"."local_urls" from "service_role";

revoke insert on table "public"."local_urls" from "service_role";

revoke references on table "public"."local_urls" from "service_role";

revoke select on table "public"."local_urls" from "service_role";

revoke trigger on table "public"."local_urls" from "service_role";

revoke truncate on table "public"."local_urls" from "service_role";

revoke update on table "public"."local_urls" from "service_role";

alter table "public"."employees" drop constraint "employees_user_id_fkey";

alter table "public"."local_addresses" drop constraint "public_local_addresses_details_fkey";

alter table "public"."local_addresses" drop constraint "public_local_addresses_local_fkey";

alter table "public"."local_details" drop constraint "public_local_details_local_fkey";

alter table "public"."local_details" drop constraint "public_local_details_urls_fkey";

alter table "public"."local_urls" drop constraint "public_local_urls_local_fkey";

drop function if exists "public"."employer_has_permissions"(localid integer);

drop function if exists "public"."employer_has_permissions"(localid text);

drop function if exists "public"."get_my_claim"(claim text);

alter table "public"."local_details" drop constraint "local_details_pkey";

alter table "public"."local_urls" drop constraint "local_urls_pkey";

drop index if exists "public"."local_details_pkey";

drop index if exists "public"."local_urls_pkey";

drop table "public"."local_details";

drop table "public"."local_urls";

alter table "public"."accounts" drop column "birthdate";

alter table "public"."accounts" drop column "lang";

alter table "public"."accounts" drop column "name";

alter table "public"."companies" drop column "stripe_id";

alter table "public"."employees" drop column "user_id";

alter table "public"."employees" add column "account" uuid not null;

alter table "public"."geo" drop column "created_at";

alter table "public"."local_addresses" drop column "details";

alter table "public"."local_addresses" alter column "province" set not null;

alter table "public"."local_addresses" alter column "zip_code" set not null;

alter table "public"."customer_cards" add constraint "customer_cards_collected_check" CHECK ((collected >= 0)) not valid;

alter table "public"."customer_cards" validate constraint "customer_cards_collected_check";

alter table "public"."customers" add constraint "customers_points_check" CHECK ((points >= 0)) not valid;

alter table "public"."customers" validate constraint "customers_points_check";

alter table "public"."employees" add constraint "employees_account_fkey" FOREIGN KEY (account) REFERENCES auth.users(id) ON UPDATE CASCADE ON DELETE CASCADE not valid;

alter table "public"."employees" validate constraint "employees_account_fkey";

alter table "public"."local_addresses" add constraint "local_addresses_local_fkey" FOREIGN KEY (local) REFERENCES locals(id) ON UPDATE CASCADE ON DELETE CASCADE not valid;

alter table "public"."local_addresses" validate constraint "local_addresses_local_fkey";

alter table "public"."local_cards" add constraint "local_cards_cost_check" CHECK ((cost >= 0)) not valid;

alter table "public"."local_cards" validate constraint "local_cards_cost_check";

alter table "public"."transaction_units" add constraint "transaction_units_value_check" CHECK ((value >= 0)) not valid;

alter table "public"."transaction_units" validate constraint "transaction_units_value_check";

set check_function_bodies = off;

CREATE OR REPLACE FUNCTION public.check_transaction_units()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$declare
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
end;$function$
;

create policy "select by owner uid"
on "public"."companies"
as permissive
for select
to public
using ((( SELECT auth.uid() AS uid) = owner));


create policy "Employer select"
on "public"."accounts"
as permissive
for select
to public
using (is_employer_app());


create policy "Employer insert"
on "public"."customer_cards"
as permissive
for insert
to public
with check (((( SELECT local_cards.local
   FROM local_cards
  WHERE (local_cards.id = customer_cards.card)) = ( SELECT local_addresses.local
   FROM local_addresses
  WHERE (local_addresses.id = ( SELECT employees.local_address
           FROM employees
          WHERE (employees.account = ( SELECT auth.uid() AS uid)))))) AND is_employer_app()));


create policy "Employer select"
on "public"."customer_cards"
as permissive
for select
to public
using ((( SELECT local_cards.local
   FROM local_cards
  WHERE (local_cards.id = customer_cards.card)) = ( SELECT local_addresses.local
   FROM local_addresses
  WHERE (local_addresses.id = ( SELECT employees.local_address
           FROM employees
          WHERE (employees.account = ( SELECT auth.uid() AS uid)))))));


create policy "Employer update"
on "public"."customer_cards"
as permissive
for update
to public
using ((( SELECT local_cards.local
   FROM local_cards
  WHERE (local_cards.id = customer_cards.card)) = ( SELECT local_addresses.local
   FROM local_addresses
  WHERE (local_addresses.id = ( SELECT employees.local_address
           FROM employees
          WHERE (employees.account = ( SELECT auth.uid() AS uid)))))));


create policy "Employer insert"
on "public"."customers"
as permissive
for insert
to public
with check (((local = ( SELECT local_addresses.local
   FROM local_addresses
  WHERE (local_addresses.id = ( SELECT employees.local_address
           FROM employees
          WHERE (employees.account = ( SELECT auth.uid() AS uid)))))) AND is_employer_app()));


create policy "Employer local"
on "public"."customers"
as permissive
for update
to public
using (((local = ( SELECT local_addresses.local
   FROM local_addresses
  WHERE (local_addresses.id = ( SELECT employees.local_address
           FROM employees
          WHERE (employees.account = ( SELECT auth.uid() AS uid)))))) AND is_employer_app()));


create policy "Employer"
on "public"."customers"
as permissive
for select
to public
using (((local = ( SELECT local_addresses.local
   FROM local_addresses
  WHERE (local_addresses.id = ( SELECT employees.local_address
           FROM employees
          WHERE (employees.account = ( SELECT auth.uid() AS uid)))))) AND is_employer_app()));


create policy "Enable select for users based on user_id"
on "public"."employees"
as permissive
for select
to authenticated
using ((( SELECT auth.uid() AS uid) = account));


create policy "Employer permissions"
on "public"."transaction_units"
as permissive
for insert
to public
with check (((( SELECT auth.uid() AS uid) IN ( SELECT employees.account AS user_id
   FROM employees
  WHERE (employees.id = ( SELECT transactions.employer
           FROM transactions
          WHERE (transactions.id = transaction_units.transaction))))) AND is_employer_app()));


create policy "Employer update"
on "public"."transaction_units"
as permissive
for update
to public
using (((( SELECT auth.uid() AS uid) = ( SELECT employees.account AS user_id
   FROM employees
  WHERE (employees.id = ( SELECT transactions.employer
           FROM transactions
          WHERE (transactions.id = transaction_units.transaction))))) AND is_employer_app()));


create policy "Employer with permission"
on "public"."transaction_units"
as permissive
for select
to public
using ((( SELECT auth.uid() AS uid) IN ( SELECT employees.account AS user_id
   FROM employees
  WHERE (employees.id = ( SELECT transactions.employer
           FROM transactions
          WHERE (transactions.id = transaction_units.transaction))))));


create policy "Policy with table employer insert"
on "public"."transactions"
as permissive
for insert
to public
with check (((( SELECT auth.uid() AS uid) IN ( SELECT employees.account AS user_id
   FROM employees
  WHERE (employees.id = transactions.employer))) AND is_employer_app()));


create policy "employer with select permission"
on "public"."transactions"
as permissive
for select
to public
using ((( SELECT auth.uid() AS uid) IN ( SELECT employees.account AS user_id
   FROM employees
  WHERE (employees.id = transactions.employer))));


CREATE TRIGGER reward_confirmation_request_notification AFTER UPDATE ON public.transaction_units FOR EACH ROW EXECUTE FUNCTION supabase_functions.http_request('https://rhwwbrzqbrcrpbxoezhp.supabase.co/functions/v1/rewardConfirmationRequestNotification', 'POST', '{"Content-type":"application/json"}', '{}', '5000');

CREATE TRIGGER transaction_completed_notification AFTER UPDATE ON public.transactions FOR EACH ROW EXECUTE FUNCTION supabase_functions.http_request('https://rhwwbrzqbrcrpbxoezhp.supabase.co/functions/v1/transactionCompletedNotification', 'POST', '{"Content-type":"application/json"}', '{}', '5000');


