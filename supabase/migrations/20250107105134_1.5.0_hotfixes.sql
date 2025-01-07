drop trigger if exists "on_post_created" on "public"."local_posts";

drop policy "Business insert" on "public"."local_posts";

drop policy "Business select" on "public"."local_posts";

drop policy "Customer select" on "public"."local_posts";

drop function if exists "public"."handle_new_post"();

set check_function_bodies = off;

CREATE OR REPLACE FUNCTION public.check_access(local_id integer)
 RETURNS boolean
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$BEGIN
  RETURN check_app_id('app.beeloyal.employer') AND (is_employer(local_id) OR is_business_owner(local_id));
END;$function$
;

CREATE OR REPLACE FUNCTION public.check_customer_access()
 RETURNS boolean
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$BEGIN
  RETURN check_app_id('app.beeloyal.customer');
END;$function$
;

create policy "Business"
on "public"."local_posts"
as permissive
for all
to authenticated
using (check_access(local))
with check (check_access(local));


create policy "Customer select"
on "public"."local_posts"
as permissive
for select
to public
using (check_customer_access());


CREATE TRIGGER local_post_notification AFTER INSERT ON public.local_posts FOR EACH ROW EXECUTE FUNCTION supabase_functions.http_request('https://cfrwepxesctjdwtkmfas.supabase.co/functions/v1/postNotification', 'POST', '{"Content-type":"application/json"}', '{}', '5000');


