-- Example targeting conversion; keep target grain at account-date.
WITH targets AS (
 SELECT DISTINCT account_id, target_date, priority, recommended_channel, campaign_id
 FROM daily_targeting
), paid AS (SELECT account_id, event_at, amount FROM canonical_payments)
SELECT t.recommended_channel,
       COUNT(*) AS targets,
       COUNT(DISTINCT CASE WHEN p.account_id IS NOT NULL THEN t.account_id END) AS payers_7d
FROM targets t
LEFT JOIN paid p ON p.account_id=t.account_id
 AND p.event_at>=t.target_date
 AND p.event_at<t.target_date + INTERVAL '7 day'
GROUP BY 1;
