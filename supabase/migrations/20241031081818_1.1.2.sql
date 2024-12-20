drop policy "select by owner uid" on "public"."businesses";
drop policy "Employer insert" on "public"."customer_cards";
drop policy "Employer select" on "public"."customer_cards";
drop policy "Employer update" on "public"."customer_cards";
drop policy "allow_user_access_to_their_customer_cards" on "public"."customer_cards";
drop policy "Employer insert" on "public"."customers";
drop policy "Employer select" on "public"."customers";
drop policy "Employer update" on "public"."customers";
drop policy "allow_user_access_to_their_customer_record" on "public"."customers";
drop policy "Enable select for users based on user_id" on "public"."employees";
drop policy "Employer insert" on "public"."transaction_units";
drop policy "Employer select" on "public"."transaction_units";
drop policy "Employer update" on "public"."transaction_units";
drop policy "allow_user_access_their_transaction_units" on "public"."transaction_units";
drop policy "Employer insert" on "public"."transactions";
drop policy "Employer select" on "public"."transactions";
drop policy "allow_user_access_to_their_transactions" on "public"."transactions";
set check_function_bodies = off;
CREATE OR REPLACE FUNCTION public.check_app_id(expected_app_id text)
 RETURNS boolean
 LANGUAGE plpgsql
 STABLE
AS $function$
BEGIN
  RETURN (auth.jwt() -> 'user_metadata' ->> 'app_id') = expected_app_id;
END;
$function$;
CREATE OR REPLACE FUNCTION public.check_employer_access(local_id bigint)
 RETURNS boolean
 LANGUAGE plpgsql
AS $function$DECLARE
   user_id UUID;
   is_employer BOOLEAN;
BEGIN
  IF(check_app_id('app.beeloyal.employer.beta'))
  THEN
    user_id := (SELECT auth.uid() AS uid);

    SELECT EXISTS (
      SELECT e.id
      FROM employees e
      JOIN local_addresses l ON e.local_address = l.id
      WHERE e.account = user_id 
      AND l.local = local_id
    ) INTO is_employer;

    RETURN is_employer;
  END IF;

  RETURN false;
END;$function$;
create policy "select by owner uid"
on "public"."businesses"
as permissive
for select
to public
using ((( SELECT auth.uid() AS uid) = owner));
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
to public
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
create policy "allow_user_access_to_their_customer_cards"
on "public"."customer_cards"
as permissive
for select
to public
using ((check_app_id('app.beeloyal.customer.beta'::text) AND (( SELECT customers.account
   FROM customers
  WHERE (customers.id = customer_cards.customer)) = auth.uid())));
create policy "Employer insert"
on "public"."customers"
as permissive
for insert
to public
with check (check_employer_access((local)::bigint));
create policy "Employer select"
on "public"."customers"
as permissive
for select
to public
using (check_employer_access((local)::bigint));
create policy "Employer update"
on "public"."customers"
as permissive
for update
to public
using (check_employer_access((local)::bigint));
create policy "allow_user_access_to_their_customer_record"
on "public"."customers"
as permissive
for select
to public
using ((check_app_id('app.beeloyal.customer.beta'::text) AND (account = auth.uid())));
create policy "Enable select for users based on user_id"
on "public"."employees"
as permissive
for select
to public
using ((( SELECT auth.uid() AS uid) = account));
create policy "Employer insert"
on "public"."transaction_units"
as permissive
for insert
to public
with check (check_employer_access((( SELECT t.local_address
   FROM transactions t
  WHERE (t.id = transaction_units.transaction)))::bigint));
create policy "Employer select"
on "public"."transaction_units"
as permissive
for select
to public
using (check_employer_access((( SELECT t.local_address
   FROM transactions t
  WHERE (t.id = transaction_units.transaction)))::bigint));
create policy "Employer update"
on "public"."transaction_units"
as permissive
for update
to public
using (check_employer_access((( SELECT t.local_address
   FROM transactions t
  WHERE (t.id = transaction_units.transaction)))::bigint))
with check (check_employer_access((( SELECT t.local_address
   FROM transactions t
  WHERE (t.id = transaction_units.transaction)))::bigint));
create policy "allow_user_access_their_transaction_units"
on "public"."transaction_units"
as permissive
for select
to public
using ((check_app_id('app.beeloyal.customer.beta'::text) AND (EXISTS ( SELECT 1
   FROM (transactions t
     JOIN customers c ON ((t.customer = c.id)))
  WHERE ((t.id = transaction_units.transaction) AND (c.account = auth.uid()))))));
create policy "Employer insert"
on "public"."transactions"
as permissive
for insert
to public
with check (check_employer_access(( SELECT l.local
   FROM local_addresses l
  WHERE (l.id = transactions.local_address))));
create policy "Employer select"
on "public"."transactions"
as permissive
for select
to public
using (check_employer_access(( SELECT l.local
   FROM local_addresses l
  WHERE (l.id = transactions.local_address))));
create policy "allow_user_access_to_their_transactions"
on "public"."transactions"
as permissive
for select
to public
using ((check_app_id('app.beeloyal.customer.beta'::text) AND (EXISTS ( SELECT 1
   FROM customers c
  WHERE ((transactions.customer = c.id) AND (c.account = auth.uid()))))));
