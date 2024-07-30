drop trigger if exists "reward_confirmation_request_notification" on "public"."transaction_units";

drop trigger if exists "transaction_completed_notification" on "public"."transactions";

alter table "public"."transaction_units" alter column "status" drop default;

alter table "public"."transactions" alter column "status" drop default;

alter type "public"."transaction_status" rename to "transaction_status__old_version_to_be_dropped";

create type "public"."transaction_status" as enum ('in_progress', 'failed', 'completed', 'waiting', 'confirmed', 'required_confirmation', 'canceled');

alter table "public"."transaction_units" alter column status type "public"."transaction_status" using status::text::"public"."transaction_status";

alter table "public"."transactions" alter column status type "public"."transaction_status" using status::text::"public"."transaction_status";

alter table "public"."transaction_units" alter column "status" set default 'waiting'::transaction_status;

alter table "public"."transactions" alter column "status" set default 'waiting'::transaction_status;

drop type "public"."transaction_status__old_version_to_be_dropped";

set check_function_bodies = off;

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

  return;
end;$function$
;

CREATE OR REPLACE FUNCTION public.check_transaction_units()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$declare
  value bigint;
begin
  if new.status = 'completed'::transaction_status OR new.status = 'canceled'::transaction_status
  then
    select id into value from transaction_units where transaction = new.transaction AND status != 'completed'::transaction_status AND status != 'canceled'::transaction_status limit 1;

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

CREATE OR REPLACE FUNCTION public.confirm_reward_collect(transactionid integer, confirmed boolean)
 RETURNS void
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$declare
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
    set status = 'canceled'::transaction_status
    where id = transactionid AND status = 'required_confirmation'::transaction_status;
  end if;

  return;
end;$function$
;

CREATE TRIGGER reward_confirmation_request_notification AFTER UPDATE ON public.transaction_units FOR EACH ROW EXECUTE FUNCTION supabase_functions.http_request('https://wxcvnmqyajozzqhzfnlp.supabase.co/functions/v1/rewardConfirmationRequestNotification', 'POST', '{"Content-type":"application/json"}', '{}', '5000');

CREATE TRIGGER transaction_completed_notification AFTER UPDATE ON public.transactions FOR EACH ROW EXECUTE FUNCTION supabase_functions.http_request('https://wxcvnmqyajozzqhzfnlp.supabase.co/functions/v1/transactionCompletedNotification', 'POST', '{"Content-type":"application/json"}', '{}', '5000');


