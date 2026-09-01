-- Staging: parse timestamps and preserve raw records.
-- Warehouse-specific types should be adapted to the target engine.
CREATE TABLE stg_payments AS SELECT * FROM raw_payments;
CREATE TABLE stg_accounts AS SELECT * FROM raw_accounts;
CREATE TABLE stg_calls AS SELECT * FROM raw_calls;
CREATE TABLE stg_targeting AS SELECT * FROM raw_daily_targeting;
