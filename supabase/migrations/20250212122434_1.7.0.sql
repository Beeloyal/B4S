create type "public"."business_status" as enum ('in_review', 'rejected', 'verified', 'actived', 'disabled');

drop policy "Employer app select" on "public"."local_addresses";

drop policy "Employer app select" on "public"."locals";

alter table "public"."businesses" drop column "name";

alter table "public"."businesses" drop column "stripe_customer";

alter table "public"."businesses" drop column "subscription_id";

alter table "public"."businesses" drop column "subscription_period_end";

alter table "public"."businesses" drop column "subscription_status";

alter table "public"."businesses" add column "status" business_status not null default 'in_review'::business_status;

alter table "public"."businesses" add column "stripe_id" character varying not null;

CREATE UNIQUE INDEX businesses_id_key ON public.businesses USING btree (id);

alter table "public"."businesses" add constraint "businesses_id_key" UNIQUE using index "businesses_id_key";

set check_function_bodies = off;

CREATE OR REPLACE FUNCTION public.create_stripe_customer(email text, name text, attrs jsonb)
 RETURNS integer
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$DECLARE
    new_stripe_customer stripe.customers;
    user_uuid UUID;
    new_business_id INTEGER;
BEGIN
    -- Pobranie UUID aktualnego użytkownika z auth.uid()
    user_uuid := auth.uid();

    -- Dodanie nowego klienta do tabeli 'stripe.customers'
    -- Używamy pełnej kwalifikacji do 'email', aby rozróżnić parametry i kolumny
    INSERT INTO stripe.customers (email, name, attrs)
    VALUES ($1, $2, $3);

    -- Pobranie ID utworzonego klienta
    -- Tu dalej używamy aliasu, żeby wyraźnie wskazać, że chodzi o kolumnę 'email' w tabeli
    SELECT c.id INTO new_stripe_customer.id
    FROM stripe.customers c
    WHERE c.email = $1 AND c.name = $2
    ORDER BY c.created DESC
    LIMIT 1;

    -- Dodanie rekordu do tabeli 'public.businesses' z UUID użytkownika i ID Stripe
    INSERT INTO public.businesses (owner, stripe_id)
    VALUES (user_uuid, new_stripe_customer.id)
    RETURNING id INTO new_business_id;

    -- Zwrócenie ID nowo utworzonego rekordu w tabeli 'public.businesses'
    RETURN new_business_id;
END;$function$
;

CREATE OR REPLACE FUNCTION public.get_stripe_customer(customer_id text)
 RETURNS json
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
DECLARE result JSON;
BEGIN
    SELECT row_to_json(c) INTO result 
    FROM (SELECT * FROM stripe.customers WHERE id = customer_id LIMIT 1) c;
    
    RETURN result;
END;
$function$
;

CREATE OR REPLACE FUNCTION public.check_access(local_id integer)
 RETURNS boolean
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$BEGIN
  RETURN check_app_id('app.beeloyal.employer.beta') AND (is_employer(local_id) OR is_business_owner(local_id));
END;$function$
;

CREATE OR REPLACE FUNCTION public.check_business_owner(user_uuid uuid, business_id integer)
 RETURNS boolean
 LANGUAGE plpgsql
AS $function$BEGIN
  RETURN EXISTS (
    SELECT b.id
    FROM businesses b
    WHERE b.owner = user_uuid
    AND b.id = business_id
  );
END;$function$
;

CREATE OR REPLACE FUNCTION public.check_customer_access()
 RETURNS boolean
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$BEGIN
  RETURN check_app_id('app.beeloyal.customer.beta');
END;$function$
;

CREATE OR REPLACE FUNCTION public.is_business_owner(local_id integer)
 RETURNS boolean
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$BEGIN
  RETURN EXISTS (
    SELECT 1
    FROM locals l
    JOIN businesses b ON l.business = b.id
    WHERE b.owner = auth.uid()
    AND l.id = local_id
  );
END;$function$
;

create policy "Employer app select"
on "public"."local_addresses"
as permissive
for select
to authenticated
using (check_access((local)::integer));


create policy "Employer app select"
on "public"."locals"
as permissive
for select
to authenticated
using (check_access(id));

drop policy "Business insert" on "storage"."objects";

create policy "Business insert"
on "storage"."objects"
as permissive
for insert
to authenticated
with check ((check_app_id('app.beeloyal.employer.beta'::text) AND (bucket_id = 'local_posts'::text)));



