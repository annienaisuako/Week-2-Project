CREATE VIEW `financial_details_view` AS
SELECT *, CASE WHEN current_fee_status = 'Cleared' THEN TRUE ELSE FALSE END AS fee_cleared
FROM financial_details;
