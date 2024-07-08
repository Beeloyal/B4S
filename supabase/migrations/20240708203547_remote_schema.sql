drop trigger if exists "check_transaction_units" on "public"."transaction_units";

drop trigger if exists "confirmed_transaction_unit" on "public"."transaction_units";

drop trigger if exists "create_customer_card" on "public"."transaction_units";

drop trigger if exists "make_transaction" on "public"."transaction_units";

drop trigger if exists "reward_confirmation_request_notification" on "public"."transaction_units";

drop trigger if exists "transaction_completed_notification" on "public"."transactions";

drop trigger if exists "update_transaction_units" on "public"."transactions";

drop policy "Employer select" on "public"."accounts";

drop policy "Get Account" on "public"."accounts";

drop policy "select by owner uid" on "public"."companies";

drop policy "Employer insert" on "public"."customer_cards";

drop policy "Employer select" on "public"."customer_cards";

drop policy "Employer update" on "public"."customer_cards";

drop policy "Enable select for user based customer" on "public"."customer_cards";

drop policy "Employer insert" on "public"."customers";

drop policy "Employer local" on "public"."customers";

drop policy "Employer" on "public"."customers";

drop policy "Enable select for users based on account" on "public"."customers";

drop policy "Enable select for users based on user_id" on "public"."employees";

drop policy "Enable read access for all users" on "public"."geo";

drop policy "Enable read access for all users" on "public"."local_addresses";

drop policy "Local card user select" on "public"."local_cards";

drop policy "Enable read access for all users" on "public"."locals";

drop policy "Employer permissions" on "public"."transaction_units";

drop policy "Employer update" on "public"."transaction_units";

drop policy "Employer with permission" on "public"."transaction_units";

drop policy "select by customer id" on "public"."transaction_units";

drop policy "update by customer id" on "public"."transaction_units";

drop policy "Enable insert for users based on user_id" on "public"."transactions";

drop policy "Policy with table employer insert" on "public"."transactions";

drop policy "employer with select permission" on "public"."transactions";

revoke delete on table "public"."accounts" from "anon";

revoke insert on table "public"."accounts" from "anon";

revoke references on table "public"."accounts" from "anon";

revoke select on table "public"."accounts" from "anon";

revoke trigger on table "public"."accounts" from "anon";

revoke truncate on table "public"."accounts" from "anon";

revoke update on table "public"."accounts" from "anon";

revoke delete on table "public"."accounts" from "authenticated";

revoke insert on table "public"."accounts" from "authenticated";

revoke references on table "public"."accounts" from "authenticated";

revoke select on table "public"."accounts" from "authenticated";

revoke trigger on table "public"."accounts" from "authenticated";

revoke truncate on table "public"."accounts" from "authenticated";

revoke update on table "public"."accounts" from "authenticated";

revoke delete on table "public"."accounts" from "service_role";

revoke insert on table "public"."accounts" from "service_role";

revoke references on table "public"."accounts" from "service_role";

revoke select on table "public"."accounts" from "service_role";

revoke trigger on table "public"."accounts" from "service_role";

revoke truncate on table "public"."accounts" from "service_role";

revoke update on table "public"."accounts" from "service_role";

revoke delete on table "public"."companies" from "anon";

revoke insert on table "public"."companies" from "anon";

revoke references on table "public"."companies" from "anon";

revoke select on table "public"."companies" from "anon";

revoke trigger on table "public"."companies" from "anon";

revoke truncate on table "public"."companies" from "anon";

revoke update on table "public"."companies" from "anon";

revoke delete on table "public"."companies" from "authenticated";

revoke insert on table "public"."companies" from "authenticated";

revoke references on table "public"."companies" from "authenticated";

revoke select on table "public"."companies" from "authenticated";

revoke trigger on table "public"."companies" from "authenticated";

revoke truncate on table "public"."companies" from "authenticated";

revoke update on table "public"."companies" from "authenticated";

revoke delete on table "public"."companies" from "service_role";

revoke insert on table "public"."companies" from "service_role";

revoke references on table "public"."companies" from "service_role";

revoke select on table "public"."companies" from "service_role";

revoke trigger on table "public"."companies" from "service_role";

revoke truncate on table "public"."companies" from "service_role";

revoke update on table "public"."companies" from "service_role";

revoke delete on table "public"."customer_cards" from "anon";

revoke insert on table "public"."customer_cards" from "anon";

revoke references on table "public"."customer_cards" from "anon";

revoke select on table "public"."customer_cards" from "anon";

revoke trigger on table "public"."customer_cards" from "anon";

revoke truncate on table "public"."customer_cards" from "anon";

revoke update on table "public"."customer_cards" from "anon";

revoke delete on table "public"."customer_cards" from "authenticated";

revoke insert on table "public"."customer_cards" from "authenticated";

revoke references on table "public"."customer_cards" from "authenticated";

revoke select on table "public"."customer_cards" from "authenticated";

revoke trigger on table "public"."customer_cards" from "authenticated";

revoke truncate on table "public"."customer_cards" from "authenticated";

revoke update on table "public"."customer_cards" from "authenticated";

revoke delete on table "public"."customer_cards" from "service_role";

revoke insert on table "public"."customer_cards" from "service_role";

revoke references on table "public"."customer_cards" from "service_role";

revoke select on table "public"."customer_cards" from "service_role";

revoke trigger on table "public"."customer_cards" from "service_role";

revoke truncate on table "public"."customer_cards" from "service_role";

revoke update on table "public"."customer_cards" from "service_role";

revoke delete on table "public"."customers" from "anon";

revoke insert on table "public"."customers" from "anon";

revoke references on table "public"."customers" from "anon";

revoke select on table "public"."customers" from "anon";

revoke trigger on table "public"."customers" from "anon";

revoke truncate on table "public"."customers" from "anon";

revoke update on table "public"."customers" from "anon";

revoke delete on table "public"."customers" from "authenticated";

revoke insert on table "public"."customers" from "authenticated";

revoke references on table "public"."customers" from "authenticated";

revoke select on table "public"."customers" from "authenticated";

revoke trigger on table "public"."customers" from "authenticated";

revoke truncate on table "public"."customers" from "authenticated";

revoke update on table "public"."customers" from "authenticated";

revoke delete on table "public"."customers" from "service_role";

revoke insert on table "public"."customers" from "service_role";

revoke references on table "public"."customers" from "service_role";

revoke select on table "public"."customers" from "service_role";

revoke trigger on table "public"."customers" from "service_role";

revoke truncate on table "public"."customers" from "service_role";

revoke update on table "public"."customers" from "service_role";

revoke delete on table "public"."employees" from "anon";

revoke insert on table "public"."employees" from "anon";

revoke references on table "public"."employees" from "anon";

revoke select on table "public"."employees" from "anon";

revoke trigger on table "public"."employees" from "anon";

revoke truncate on table "public"."employees" from "anon";

revoke update on table "public"."employees" from "anon";

revoke delete on table "public"."employees" from "authenticated";

revoke insert on table "public"."employees" from "authenticated";

revoke references on table "public"."employees" from "authenticated";

revoke select on table "public"."employees" from "authenticated";

revoke trigger on table "public"."employees" from "authenticated";

revoke truncate on table "public"."employees" from "authenticated";

revoke update on table "public"."employees" from "authenticated";

revoke delete on table "public"."employees" from "service_role";

revoke insert on table "public"."employees" from "service_role";

revoke references on table "public"."employees" from "service_role";

revoke select on table "public"."employees" from "service_role";

revoke trigger on table "public"."employees" from "service_role";

revoke truncate on table "public"."employees" from "service_role";

revoke update on table "public"."employees" from "service_role";

revoke delete on table "public"."geo" from "anon";

revoke insert on table "public"."geo" from "anon";

revoke references on table "public"."geo" from "anon";

revoke select on table "public"."geo" from "anon";

revoke trigger on table "public"."geo" from "anon";

revoke truncate on table "public"."geo" from "anon";

revoke update on table "public"."geo" from "anon";

revoke delete on table "public"."geo" from "authenticated";

revoke insert on table "public"."geo" from "authenticated";

revoke references on table "public"."geo" from "authenticated";

revoke select on table "public"."geo" from "authenticated";

revoke trigger on table "public"."geo" from "authenticated";

revoke truncate on table "public"."geo" from "authenticated";

revoke update on table "public"."geo" from "authenticated";

revoke delete on table "public"."geo" from "service_role";

revoke insert on table "public"."geo" from "service_role";

revoke references on table "public"."geo" from "service_role";

revoke select on table "public"."geo" from "service_role";

revoke trigger on table "public"."geo" from "service_role";

revoke truncate on table "public"."geo" from "service_role";

revoke update on table "public"."geo" from "service_role";

revoke delete on table "public"."local_addresses" from "anon";

revoke insert on table "public"."local_addresses" from "anon";

revoke references on table "public"."local_addresses" from "anon";

revoke select on table "public"."local_addresses" from "anon";

revoke trigger on table "public"."local_addresses" from "anon";

revoke truncate on table "public"."local_addresses" from "anon";

revoke update on table "public"."local_addresses" from "anon";

revoke delete on table "public"."local_addresses" from "authenticated";

revoke insert on table "public"."local_addresses" from "authenticated";

revoke references on table "public"."local_addresses" from "authenticated";

revoke select on table "public"."local_addresses" from "authenticated";

revoke trigger on table "public"."local_addresses" from "authenticated";

revoke truncate on table "public"."local_addresses" from "authenticated";

revoke update on table "public"."local_addresses" from "authenticated";

revoke delete on table "public"."local_addresses" from "service_role";

revoke insert on table "public"."local_addresses" from "service_role";

revoke references on table "public"."local_addresses" from "service_role";

revoke select on table "public"."local_addresses" from "service_role";

revoke trigger on table "public"."local_addresses" from "service_role";

revoke truncate on table "public"."local_addresses" from "service_role";

revoke update on table "public"."local_addresses" from "service_role";

revoke delete on table "public"."local_cards" from "anon";

revoke insert on table "public"."local_cards" from "anon";

revoke references on table "public"."local_cards" from "anon";

revoke select on table "public"."local_cards" from "anon";

revoke trigger on table "public"."local_cards" from "anon";

revoke truncate on table "public"."local_cards" from "anon";

revoke update on table "public"."local_cards" from "anon";

revoke delete on table "public"."local_cards" from "authenticated";

revoke insert on table "public"."local_cards" from "authenticated";

revoke references on table "public"."local_cards" from "authenticated";

revoke select on table "public"."local_cards" from "authenticated";

revoke trigger on table "public"."local_cards" from "authenticated";

revoke truncate on table "public"."local_cards" from "authenticated";

revoke update on table "public"."local_cards" from "authenticated";

revoke delete on table "public"."local_cards" from "service_role";

revoke insert on table "public"."local_cards" from "service_role";

revoke references on table "public"."local_cards" from "service_role";

revoke select on table "public"."local_cards" from "service_role";

revoke trigger on table "public"."local_cards" from "service_role";

revoke truncate on table "public"."local_cards" from "service_role";

revoke update on table "public"."local_cards" from "service_role";

revoke delete on table "public"."locals" from "anon";

revoke insert on table "public"."locals" from "anon";

revoke references on table "public"."locals" from "anon";

revoke select on table "public"."locals" from "anon";

revoke trigger on table "public"."locals" from "anon";

revoke truncate on table "public"."locals" from "anon";

revoke update on table "public"."locals" from "anon";

revoke delete on table "public"."locals" from "authenticated";

revoke insert on table "public"."locals" from "authenticated";

revoke references on table "public"."locals" from "authenticated";

revoke select on table "public"."locals" from "authenticated";

revoke trigger on table "public"."locals" from "authenticated";

revoke truncate on table "public"."locals" from "authenticated";

revoke update on table "public"."locals" from "authenticated";

revoke delete on table "public"."locals" from "service_role";

revoke insert on table "public"."locals" from "service_role";

revoke references on table "public"."locals" from "service_role";

revoke select on table "public"."locals" from "service_role";

revoke trigger on table "public"."locals" from "service_role";

revoke truncate on table "public"."locals" from "service_role";

revoke update on table "public"."locals" from "service_role";

revoke delete on table "public"."transaction_units" from "anon";

revoke insert on table "public"."transaction_units" from "anon";

revoke references on table "public"."transaction_units" from "anon";

revoke select on table "public"."transaction_units" from "anon";

revoke trigger on table "public"."transaction_units" from "anon";

revoke truncate on table "public"."transaction_units" from "anon";

revoke update on table "public"."transaction_units" from "anon";

revoke delete on table "public"."transaction_units" from "authenticated";

revoke insert on table "public"."transaction_units" from "authenticated";

revoke references on table "public"."transaction_units" from "authenticated";

revoke select on table "public"."transaction_units" from "authenticated";

revoke trigger on table "public"."transaction_units" from "authenticated";

revoke truncate on table "public"."transaction_units" from "authenticated";

revoke update on table "public"."transaction_units" from "authenticated";

revoke delete on table "public"."transaction_units" from "service_role";

revoke insert on table "public"."transaction_units" from "service_role";

revoke references on table "public"."transaction_units" from "service_role";

revoke select on table "public"."transaction_units" from "service_role";

revoke trigger on table "public"."transaction_units" from "service_role";

revoke truncate on table "public"."transaction_units" from "service_role";

revoke update on table "public"."transaction_units" from "service_role";

revoke delete on table "public"."transactions" from "anon";

revoke insert on table "public"."transactions" from "anon";

revoke references on table "public"."transactions" from "anon";

revoke select on table "public"."transactions" from "anon";

revoke trigger on table "public"."transactions" from "anon";

revoke truncate on table "public"."transactions" from "anon";

revoke update on table "public"."transactions" from "anon";

revoke delete on table "public"."transactions" from "authenticated";

revoke insert on table "public"."transactions" from "authenticated";

revoke references on table "public"."transactions" from "authenticated";

revoke select on table "public"."transactions" from "authenticated";

revoke trigger on table "public"."transactions" from "authenticated";

revoke truncate on table "public"."transactions" from "authenticated";

revoke update on table "public"."transactions" from "authenticated";

revoke delete on table "public"."transactions" from "service_role";

revoke insert on table "public"."transactions" from "service_role";

revoke references on table "public"."transactions" from "service_role";

revoke select on table "public"."transactions" from "service_role";

revoke trigger on table "public"."transactions" from "service_role";

revoke truncate on table "public"."transactions" from "service_role";

revoke update on table "public"."transactions" from "service_role";

alter table "public"."accounts" drop constraint "accounts_phone_fkey";

alter table "public"."accounts" drop constraint "public_accounts_id_fkey";

alter table "public"."companies" drop constraint "companies_owner_fkey";

alter table "public"."customer_cards" drop constraint "customer_cards_card_fkey";

alter table "public"."customer_cards" drop constraint "customer_cards_collected_check";

alter table "public"."customer_cards" drop constraint "customer_cards_customer_fkey";

alter table "public"."customers" drop constraint "customers_local_fkey";

alter table "public"."customers" drop constraint "customers_points_check";

alter table "public"."customers" drop constraint "public_customer_account_fkey";

alter table "public"."employees" drop constraint "employees_account_fkey";

alter table "public"."employees" drop constraint "employees_company_fkey";

alter table "public"."employees" drop constraint "employees_local_address_fkey";

alter table "public"."local_addresses" drop constraint "local_addresses_local_fkey";

alter table "public"."local_addresses" drop constraint "public_local_addresses_geo_fkey";

alter table "public"."local_cards" drop constraint "local_cards_cost_check";

alter table "public"."local_cards" drop constraint "public_local_cards_local_fkey";

alter table "public"."locals" drop constraint "public_locals_company_fkey";

alter table "public"."transaction_units" drop constraint "transaction_units_transaction_fkey";

alter table "public"."transaction_units" drop constraint "transaction_units_value_check";

alter table "public"."transaction_units" drop constraint "transactions_customer_card_fkey";

alter table "public"."transaction_units" drop constraint "transactions_local_card_fkey";

alter table "public"."transactions" drop constraint "transactions_customer_fkey1";

alter table "public"."transactions" drop constraint "transactions_employer_fkey";

alter table "public"."transactions" drop constraint "transactions_local_address_fkey1";

drop function if exists "public"."check_transaction_units"();

drop function if exists "public"."confirm_reward_collect"(transactionid integer, confirmed boolean);

drop function if exists "public"."confirmed_transaction_unit"();

drop function if exists "public"."create_account"();

drop function if exists "public"."create_customer_card"();

drop function if exists "public"."is_employer_app"();

drop function if exists "public"."make_transaction"();

drop function if exists "public"."run_transaction"(transactionid integer);

drop function if exists "public"."update_transaction_units"();

alter table "public"."accounts" drop constraint "accounts_pkey";

alter table "public"."companies" drop constraint "companies_pkey";

alter table "public"."customer_cards" drop constraint "customer_cards_pkey";

alter table "public"."customers" drop constraint "customer_pkey";

alter table "public"."employees" drop constraint "employees_pkey";

alter table "public"."geo" drop constraint "geo_pkey";

alter table "public"."local_addresses" drop constraint "addresses_pkey";

alter table "public"."local_cards" drop constraint "local_cards_pkey";

alter table "public"."locals" drop constraint "locals_pkey";

alter table "public"."transaction_units" drop constraint "transactions_pkey";

alter table "public"."transactions" drop constraint "transactions_pkey1";

drop index if exists "public"."accounts_pkey";

drop index if exists "public"."addresses_pkey";

drop index if exists "public"."companies_pkey";

drop index if exists "public"."customer_cards_pkey";

drop index if exists "public"."customer_pkey";

drop index if exists "public"."employees_pkey";

drop index if exists "public"."geo_pkey";

drop index if exists "public"."local_cards_pkey";

drop index if exists "public"."locals_pkey";

drop index if exists "public"."transactions_pkey";

drop index if exists "public"."transactions_pkey1";

drop table "public"."accounts";

drop table "public"."companies";

drop table "public"."customer_cards";

drop table "public"."customers";

drop table "public"."employees";

drop table "public"."geo";

drop table "public"."local_addresses";

drop table "public"."local_cards";

drop table "public"."locals";

drop table "public"."transaction_units";

drop table "public"."transactions";

drop type "public"."card";

drop type "public"."transaction_status";

drop type "public"."transaction_type";


