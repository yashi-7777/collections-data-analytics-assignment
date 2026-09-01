-- Account-level monthly recovery.
WITH payments AS (
  SELECT * FROM canonical_payments
), monthly AS (
  SELECT DATE_TRUNC('month', event_at) AS month,
         SUM(amount) AS recovery,
         COUNT(DISTINCT account_id) AS recovered_accounts
  FROM payments GROUP BY 1
)
SELECT month, recovery, recovered_accounts,
       recovery / NULLIF(recovered_accounts,0) AS recovery_per_recovered_account
FROM monthly ORDER BY month;
