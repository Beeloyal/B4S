drop trigger if exists "reward_confirmation_request_notification" on "public"."transaction_units";

drop trigger if exists "transaction_completed_notification" on "public"."transactions";

drop policy "Customer select" on "public"."locals";

set check_function_bodies = off;

CREATE OR REPLACE FUNCTION public.check_access(local_id integer)
 RETURNS boolean
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$BEGIN
  RETURN check_app_id('app.beeloyal.employer') AND (is_employer(local_id) OR is_business_owner(local_id));
END;$function$
;

CREATE OR REPLACE FUNCTION public.check_app_id(app_id text)
 RETURNS boolean
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$BEGIN
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

CREATE OR REPLACE FUNCTION public.get_supabase_url()
 RETURNS text
 LANGUAGE plpgsql
AS $function$BEGIN
  RETURN 'https://zmhbcupjxmyllfgxwqdt.supabase.co';
END;$function$
;

create policy "Customer select"
on "public"."locals"
as permissive
for select
to public
using ((check_customer_access() AND enabled));


CREATE TRIGGER reward_confirmation_request_notification AFTER UPDATE ON public.transaction_units FOR EACH ROW EXECUTE FUNCTION supabase_functions.http_request('https://zmhbcupjxmyllfgxwqdt.supabase.co/functions/v1/rewardConfirmationRequestNotification', 'POST', '{"Content-type":"application/json"}', '{}', '5000');

CREATE TRIGGER transaction_completed_notification AFTER UPDATE ON public.transactions FOR EACH ROW EXECUTE FUNCTION supabase_functions.http_request('https://zmhbcupjxmyllfgxwqdt.supabase.co/functions/v1/transactionCompletedNotification', 'POST', '{"Content-type":"application/json"}', '{}', '5000');


