SELECT * FROM stud_db.financial_details;
UPDATE financial_details
SET stud_name(SELECT stud_name FROM personal_details WHERE stud_ID = financial_details.stud_ID)
WHERE stud_name IS NULL;
UPDATE financial_details
SET current_fee_status = CASE
WHEN sem_fee = fee_paid THEN 'Cleared'
ELSE 'Not Cleared'
END;
SET SQL_SAFE_UPDATES=0;