-- Drop all policies and triggers related to accounts table
DROP TRIGGER IF EXISTS on_auth_user_created ON auth.users;
DROP FUNCTION IF EXISTS public.create_account ();
-- Remove foreign key constraints
ALTER TABLE IF EXISTS "public"."businesses"
DROP CONSTRAINT IF EXISTS "companies_owner_fkey";
ALTER TABLE IF EXISTS "public"."businesses"
DROP CONSTRAINT IF EXISTS "companies_owner_fkey1";
-- Drop accounts table
DROP TABLE IF EXISTS "public"."accounts";
