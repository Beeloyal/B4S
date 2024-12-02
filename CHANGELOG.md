# Database Changelog

All notable changes to the database schema will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.1.5] - 2024-11-13

### Added
- Subscription management for businesses
  - Added `subscription_status` column (enum type)
  - Added `subscription_id` column
  - Added `subscription_period_end` column
- New RLS policies for business access
  - Added `employer_app_access` policy
  - Added `employer_select` policy
- Created `subscription_status` enum type with values:
  - active
  - inactive
  - past_due
  - canceled
  - trialing

### Changed
- Replaced `select by owner uid` policy with more specific `employer_select`
- Modified business table structure to support subscription tracking

## [1.1.4] - 2024-11-13

### Changed
- Updated employer access function to use new app ID format
- Refactored RLS policies for better security
- Added storage permissions for postgres role

### Added
- New trigger for auth user creation
- HTTP request function for Supabase Functions

## [1.1.3] - 2024-11-12

### Added
- Points multiplier column for customers
  - Added `points_multiplier` column with default value 2.15

## [1.1.2] - 2024-10-31

### Changed
- Refactored RLS policies to use app_id checks
- Improved employer access control
- Updated policy names for better clarity

## [1.1.1] - 2024-10-30

### Changed
- Removed customer app specific functions
- Made phone number optional in customers table
- Updated foreign key constraints
- Improved RLS policies naming

## [1.1.0] - 2024-10-20

### Changed
- Major refactor of RLS policies
- Updated customer card constraints
- Added unique indexes for better data integrity
- Modified transaction handling

## [1.0.0] - 2024-10-11

### Added
- Initial database schema
- Basic RLS policies
- Core business logic functions
- Transaction management system
