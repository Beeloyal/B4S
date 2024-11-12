# Changelog

## [1.1.3] - 2024-11-12
### Added
- Added `points_multiplier` column to the `customers` table with a default value of `2.15`.

## [1.1.2] - 2024-10-31
### Changed
- Dropped various policies:
  - `select by owner uid` on `businesses`
  - `Employer insert` on `customer_cards`
  - `Employer select` on `customer_cards`
  - `Employer update` on `customer_cards`
  - `allow_user_access_to_their_customer_cards` on `customer_cards`
  - `Employer insert` on `customers`
  - `Employer select` on `customers`
  - `Employer update` on `customers`
  - `allow_user_access_to_their_customer_record` on `customers`
  - `Enable select for users based on user_id` on `employees`
  - `Employer insert` on `transaction_units`
  - `Employer select` on `transaction_units`
  - `Employer update` on `transaction_units`
  - `allow_user_access_their_transaction_units` on `transaction_units`
  - `Employer insert` on `transactions`
  - `Employer select` on `transactions`
  - `allow_user_access_to_their_transactions` on `transactions`
- Created function `check_app_id` to check the app ID from JWT user metadata.

## [1.1.1] - 2024-10-30
### Changed
- Dropped various policies:
  - `Employer select` on `accounts`
  - `Customer select` on `customer_cards`
  - `Customer select` on `customers`
  - `Local card user select` on `local_cards`
  - `Customer select` on `transaction_units`
  - `update by customer id` on `transaction_units`
  - `Customer select` on `transactions`
  - `select by owner uid` on `businesses`
  - `Employer insert` on `customer_cards`
  - `Employer update` on `customer_cards`
  - `Enable select for users based on user_id` on `employees`
- Dropped foreign key constraint `public_customer_account_fkey` on `customers`.
- Dropped functions `is_customer_app` and `is_employer_app`.
- Altered column `phone` in `customers` to allow `NULL` values.
- Added and validated foreign key constraint `customers_account_fkey1` on `customers` referencing `auth.users`.
- Created function `check_employer_access` to check employer access based on `local_id`.

## [1.1.0] - 2024-10-20
### Changed
- Dropped policy `update by customer id` on `transaction_units`.
- Dropped foreign key constraint `customer_cards_customer_fkey` on `customer_cards`.
- Dropped function `create_account`.
- Altered column `customer` in `customer_cards` to `integer`.
- Added column `phone` to `customers` and updated it with data from `auth.users`.
- Altered column `phone` in `customers` to be `NOT NULL`.
- Added column `local_address` to `geo` and updated it with data from `local_addresses`.
- Altered column `local_address` in `geo` to be `NOT NULL`.
- Created unique indexes: `unique_customer_card` on `customer_cards`, `unique_customer_local` on `customers`, and `unique_employer` on `employees`.
- Added and validated foreign key constraints:
  - `businesses_owner_fkey` on `businesses` referencing `auth.users`.
  - `customer_cards_customer_fkey1` on `customer_cards` referencing `customers`.
  - `customers_account_fkey` on `customers` referencing `auth.users`.
  - `customers_phone_fkey` on `customers` referencing `auth.users`.
- Added unique constraint `unique_customer_card` on `customer_cards`.

## [1.0.0] - 2024-10-11
### Added
- Initial migration:
  - Created `accounts`, `local_addresses`, `businesses`, `customer_cards`, `customers`, `employees`, `geo`, `local_cards`, `locals`, `transaction_units`, and `transactions` tables.
  - Added various extensions: `pg_net`, `pgsodium`, `http`, `pg_graphql`, `pg_stat_statements`, `pgcrypto`, `pgjwt`, `supabase_vault`, `uuid-ossp`, `wrappers`.
  - Created types: `card`, `transaction_status`, `transaction_type`.
  - Created functions: `cancel_transaction`, `check_transaction_units`, `confirm_reward_collect`, `confirmed_transaction_unit`, `create_account`, `create_customer_card`, `is_employer_app`, `make_transaction`, `run_transaction`, `update_transaction_units`.
  - Created triggers: `check_transaction_units`, `confirmed_transaction_unit`, `create_customer_card`, `make_transaction`, `reward_confirmation_request_notification`, `transaction_completed_notification`, `update_transaction_units`.
  - Added policies for row-level security on various tables.
  - Granted permissions on tables, sequences, and functions to roles `anon`, `authenticated`, and `service_role`.