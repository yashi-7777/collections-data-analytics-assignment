-- Conservative payment rule: one terminal record per reference, unique account only.
WITH ranked AS (
  SELECT p.*,
         COUNT(DISTINCT account_id) OVER (PARTITION BY payment_reference) AS ref_accounts,
         ROW_NUMBER() OVER (PARTITION BY payment_reference ORDER BY event_at DESC, payment_id DESC) AS rn
  FROM payments p
)
SELECT payment_reference, account_id, amount, event_at
FROM ranked
WHERE rn = 1
  AND ref_accounts = 1
  AND payment_status = 'SUCCESS';
