-- Canonical account relationship: account master owns borrower attribution.
CREATE VIEW clean_event_accounts AS
SELECT e.*, a.borrower_id AS canonical_borrower_id
FROM stg_calls e LEFT JOIN stg_accounts a USING (account_id);

-- Agent identity must remain agent_id; employee_code is non-unique.
CREATE VIEW agent_identity AS
SELECT agent_id, employee_code, agent_name, vendor_id, updated_at
FROM agents;
