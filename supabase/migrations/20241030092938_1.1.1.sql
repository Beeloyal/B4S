drop policy "Employer select" on "public"."accounts";

drop policy "Customer select" on "public"."customer_cards";

drop policy "Customer select" on "public"."customers";

drop policy "Local card user select" on "public"."local_cards";

drop policy "Customer select" on "public"."transaction_units";

drop policy "update by customer id" on "public"."transaction_units";

drop policy "Customer select" on "public"."transactions";

drop policy "select by owner uid" on "public"."businesses";

drop policy "Employer insert" on "public"."customer_cards";

drop policy "Employer update" on "public"."customer_cards";

drop policy "Enable select for users based on user_id" on "public"."employees";

alter table "public"."customers" drop constraint "public_customer_account_fkey";

drop function if exists "public"."is_customer_app"();

drop function if exists "public"."is_employer_app"();

alter table "public"."customers" alter column "phone" drop not null;

alter table "public"."customers" add constraint "customers_account_fkey1" FOREIGN KEY (account) REFERENCES auth.users(id) ON UPDATE CASCADE ON DELETE CASCADE not valid;

alter table "public"."customers" validate constraint "customers_account_fkey1";

set check_function_bodies = off;

CREATE OR REPLACE FUNCTION public.check_employer_access(local_id bigint)
 RETURNS boolean
 LANGUAGE plpgsql
AS $function$DECLARE
   user_id UUID;
   is_employer BOOLEAN;
BEGIN
  user_id := (SELECT auth.uid() AS uid);

  SELECT EXISTS (
    SELECT e.id
    FROM employees e
    JOIN local_addresses l ON e.local_address = l.id
    WHERE e.account = user_id 
    AND l.local = local_id
  ) INTO is_employer;

  RETURN is_employer;
END;$function$
;

create policy "allow_user_access_to_their_customer_cards"
on "public"."customer_cards"
as permissive
for select
to authenticated
using ((( SELECT customers.account
   FROM customers
  WHERE (customers.id = customer_cards.customer)) = auth.uid()));


create policy "allow_user_access_to_their_customer_record"
on "public"."customers"
as permissive
for select
to authenticated
using ((account = auth.uid()));


create policy "Enable read access for all users"
on "public"."local_cards"
as permissive
for select
to public
using (true);


create policy "allow_user_access_their_transaction_units"
on "public"."transaction_units"
as permissive
for select
to authenticated
using ((EXISTS ( SELECT 1
   FROM (transactions t
     JOIN customers c ON ((t.customer = c.id)))
  WHERE ((t.id = transaction_units.transaction) AND (c.account = auth.uid())))));


create policy "allow_user_access_to_their_transactions"
on "public"."transactions"
as permissive
for select
to authenticated
using ((EXISTS ( SELECT 1
   FROM customers c
  WHERE ((transactions.customer = c.id) AND (c.account = auth.uid())))));


create policy "select by owner uid"
on "public"."businesses"
as permissive
for select
to authenticated
using ((( SELECT auth.uid() AS uid) = owner));


create policy "Employer insert"
on "public"."customer_cards"
as permissive
for insert
to authenticated
with check (check_employer_access((( SELECT l.local
   FROM local_cards l
  WHERE (l.id = customer_cards.card)))::bigint));


create policy "Employer update"
on "public"."customer_cards"
as permissive
for update
to authenticated
using (check_employer_access((( SELECT l.local
   FROM local_cards l
  WHERE (l.id = customer_cards.card)))::bigint));


create policy "Enable select for users based on user_id"
on "public"."employees"
as permissive
for select
to authenticated
using ((( SELECT auth.uid() AS uid) = account));