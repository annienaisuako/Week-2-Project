CREATE VIEW `new_student_details` AS
SELECT personal_details.stud_name, personal_details.stud_ID, personal_details.phone_number, school_details.stud_email
FROM personal_details, school_details
