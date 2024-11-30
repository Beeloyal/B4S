drop policy "allow_user_access_to_their_customer_cards" on "public"."customer_cards";

drop policy "allow_user_access_to_their_customer_record" on "public"."customers";

drop policy "Employer insert" on "public"."transaction_units";

drop policy "Employer select" on "public"."transaction_units";

drop policy "Employer update" on "public"."transaction_units";

drop policy "allow_user_access_their_transaction_units" on "public"."transaction_units";

drop policy "allow_user_access_to_their_transactions" on "public"."transactions";

set check_function_bodies = off;

CREATE OR REPLACE FUNCTION public.check_employer_access(local_id bigint)
 RETURNS boolean
 LANGUAGE plpgsql
AS $function$DECLARE
   user_id UUID;
   is_employer BOOLEAN;
BEGIN
  IF(check_app_id('app.beeloyal.employer'))
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
END;$function$
;

create policy "Employer select"
on "public"."locals"
as permissive
for select
to public
using (check_employer_access((id)::bigint));


create policy "allow_user_access_to_their_customer_cards"
on "public"."customer_cards"
as permissive
for select
to public
using ((check_app_id('app.beeloyal.customer'::text) AND (( SELECT customers.account
   FROM customers
  WHERE (customers.id = customer_cards.customer)) = auth.uid())));


create policy "allow_user_access_to_their_customer_record"
on "public"."customers"
as permissive
for select
to public
using ((check_app_id('app.beeloyal.customer'::text) AND (account = auth.uid())));


create policy "Employer insert"
on "public"."transaction_units"
as permissive
for insert
to public
with check (check_employer_access(( SELECT local_addresses.local
   FROM local_addresses
  WHERE (local_addresses.id = ( SELECT t.local_address
           FROM transactions t
          WHERE (t.id = transaction_units.transaction))))));


create policy "Employer select"
on "public"."transaction_units"
as permissive
for select
to public
using (check_employer_access(( SELECT local_addresses.local
   FROM local_addresses
  WHERE (local_addresses.id = ( SELECT t.local_address
           FROM transactions t
          WHERE (t.id = transaction_units.transaction))))));


create policy "Employer update"
on "public"."transaction_units"
as permissive
for update
to public
using (check_employer_access(( SELECT local_addresses.local
   FROM local_addresses
  WHERE (local_addresses.id = ( SELECT t.local_address
           FROM transactions t
          WHERE (t.id = transaction_units.transaction))))))
with check (check_employer_access(( SELECT local_addresses.local
   FROM local_addresses
  WHERE (local_addresses.id = ( SELECT t.local_address
           FROM transactions t
          WHERE (t.id = transaction_units.transaction))))));


create policy "allow_user_access_their_transaction_units"
on "public"."transaction_units"
as permissive
for select
to public
using ((check_app_id('app.beeloyal.customer'::text) AND (EXISTS ( SELECT 1
   FROM (transactions t
     JOIN customers c ON ((t.customer = c.id)))
  WHERE ((t.id = transaction_units.transaction) AND (c.account = auth.uid()))))));


create policy "allow_user_access_to_their_transactions"
on "public"."transactions"
as permissive
for select
to public
using ((check_app_id('app.beeloyal.customer'::text) AND (EXISTS ( SELECT 1
   FROM customers c
  WHERE ((transactions.customer = c.id) AND (c.account = auth.uid()))))));

grant delete on table "storage"."s3_multipart_uploads" to "postgres";

grant insert on table "storage"."s3_multipart_uploads" to "postgres";

grant references on table "storage"."s3_multipart_uploads" to "postgres";

grant select on table "storage"."s3_multipart_uploads" to "postgres";

grant trigger on table "storage"."s3_multipart_uploads" to "postgres";

grant truncate on table "storage"."s3_multipart_uploads" to "postgres";

grant update on table "storage"."s3_multipart_uploads" to "postgres";

grant delete on table "storage"."s3_multipart_uploads_parts" to "postgres";

grant insert on table "storage"."s3_multipart_uploads_parts" to "postgres";

grant references on table "storage"."s3_multipart_uploads_parts" to "postgres";

grant select on table "storage"."s3_multipart_uploads_parts" to "postgres";

grant trigger on table "storage"."s3_multipart_uploads_parts" to "postgres";

grant truncate on table "storage"."s3_multipart_uploads_parts" to "postgres";

grant update on table "storage"."s3_multipart_uploads_parts" to "postgres";


set check_function_bodies = off;

CREATE OR REPLACE FUNCTION supabase_functions.http_request()
 RETURNS trigger
 LANGUAGE plpgsql
 SECURITY DEFINER
 SET search_path TO 'supabase_functions'
AS $function$
    DECLARE
      request_id bigint;
      payload jsonb;
      url text := TG_ARGV[0]::text;
      method text := TG_ARGV[1]::text;
      headers jsonb DEFAULT '{}'::jsonb;
      params jsonb DEFAULT '{}'::jsonb;
      timeout_ms integer DEFAULT 1000;
    BEGIN
      IF url IS NULL OR url = 'null' THEN
        RAISE EXCEPTION 'url argument is missing';
      END IF;

      IF method IS NULL OR method = 'null' THEN
        RAISE EXCEPTION 'method argument is missing';
      END IF;

      IF TG_ARGV[2] IS NULL OR TG_ARGV[2] = 'null' THEN
        headers = '{"Content-Type": "application/json"}'::jsonb;
      ELSE
        headers = TG_ARGV[2]::jsonb;
      END IF;

      IF TG_ARGV[3] IS NULL OR TG_ARGV[3] = 'null' THEN
        params = '{}'::jsonb;
      ELSE
        params = TG_ARGV[3]::jsonb;
      END IF;

      IF TG_ARGV[4] IS NULL OR TG_ARGV[4] = 'null' THEN
        timeout_ms = 1000;
      ELSE
        timeout_ms = TG_ARGV[4]::integer;
      END IF;

      CASE
        WHEN method = 'GET' THEN
          SELECT http_get INTO request_id FROM net.http_get(
            url,
            params,
            headers,
            timeout_ms
          );
        WHEN method = 'POST' THEN
          payload = jsonb_build_object(
            'old_record', OLD,
            'record', NEW,
            'type', TG_OP,
            'table', TG_TABLE_NAME,
            'schema', TG_TABLE_SCHEMA
          );

          SELECT http_post INTO request_id FROM net.http_post(
            url,
            payload,
            params,
            headers,
            timeout_ms
          );
        ELSE
          RAISE EXCEPTION 'method argument % is invalid', method;
      END CASE;

      INSERT INTO supabase_functions.hooks
        (hook_table_id, hook_name, request_id)
      VALUES
        (TG_RELID, TG_NAME, request_id);

      RETURN NEW;
    END
  $function$
;


