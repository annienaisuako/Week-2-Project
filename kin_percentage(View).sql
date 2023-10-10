CREATE VIEW `kin_percentage` AS
SELECT
SUM(CASE WHEN `full_student_details`.`next_of_kin_relation` = 'Mother' THEN 1 ELSE 0 END) AS 'mother_count',
SUM(CASE WHEN `full_student_details`.`next_of_kin_relation` = 'Father' THEN 1 ELSE 0 END) AS 'father_count',
COUNT(*)AS total_students,
SUM(CASE WHEN `full_student_details`.`next_of_kin_relation` = 'Mother' THEN 1 ELSE 0 END) *100 / COUNT(*)AS 'mother_percentage',
SUM(CASE WHEN `full_student_details`.`next_of_kin_relation` = 'Father' THEN 1 ELSE 0 END) *100 / COUNT(*)AS 'father_percentage'
FROM full_student_details;