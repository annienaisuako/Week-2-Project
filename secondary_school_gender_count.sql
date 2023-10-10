CREATE VIEW `secondary_school_gender_count` AS
SELECT secondary_school_county,
SUM(CASE WHEN gender = 'Male' THEN 1 ELSE 0 END)AS male_student_count,
SUM(CASE WHEN gender = 'Female' THEN 1 ELSE 0 END)AS female_student_count
FROM full_student_details;