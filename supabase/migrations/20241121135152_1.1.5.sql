-- Utwórz typ enum dla statusu subskrypcji
CREATE TYPE "public"."subscription_status" AS ENUM (
    'active',
    'inactive',
    'past_due',
    'canceled',
    'trialing'
);

ALTER TYPE "public"."subscription_status" OWNER TO "postgres";

-- Dodaj kolumny do tabeli businesses
ALTER TABLE "public"."businesses" 
ADD COLUMN "subscription_status" "public"."subscription_status" DEFAULT 'inactive'::"public"."subscription_status" NOT NULL,
ADD COLUMN "subscription_id" text,
ADD COLUMN "subscription_period_end" timestamp with time zone;

-- Dodaj polityki dostępu do tabeli businesses
CREATE POLICY "employer_app_access" ON "public"."businesses"
FOR ALL
TO public
USING (
  check_app_id('app.beeloyal.employer') AND (
    (auth.uid() = owner) OR 
    (EXISTS (
      SELECT 1 FROM employees 
      WHERE employees.company = businesses.id 
      AND employees.account = auth.uid()
    ))
  )
);

-- Aktualizuj istniejące polityki dla spójności
DROP POLICY IF EXISTS "select by owner uid" ON "public"."businesses";

CREATE POLICY "employer_select" ON "public"."businesses"
FOR SELECT 
TO public
USING (
  check_app_id('app.beeloyal.employer') AND 
  auth.uid() = owner
);