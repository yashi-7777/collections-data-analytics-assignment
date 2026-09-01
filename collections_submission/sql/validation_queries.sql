-- No fanout: all fact joins should preserve expected grain.
SELECT payment_reference, COUNT(*) FROM payments GROUP BY 1 HAVING COUNT(*)>1;
SELECT call_id, COUNT(*) FROM calls GROUP BY 1 HAVING COUNT(*)>1;
SELECT employee_code, COUNT(DISTINCT agent_id) FROM agents GROUP BY 1 HAVING COUNT(DISTINCT agent_id)>1;
