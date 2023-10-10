CREATE VIEW `total_fee_balance` AS
SELECT
SUM(CASE WHEN current_fee_status = 'Cleared' THEN fee_paid ELSE 0 END)AS total_fees_paid,
SUM(CASE WHEN current_fee_status = 'Not Cleared' THEN fee_paid ELSE 0 END)AS total_current_deficit
FROM financial_details;