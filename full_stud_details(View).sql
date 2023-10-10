CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `stud_db`.`full_student_details` AS
    SELECT 
        `stud_db`.`contact_details`.`stud_email` AS `stud_email`,
        `stud_db`.`contact_details`.`phone_number` AS `phone_number`,
        `stud_db`.`contact_details`.`next_of_kin_name` AS `next_of_kin_name`,
        `stud_db`.`contact_details`.`next_of_kin_relation` AS `next_of_kin_relation`,
        `stud_db`.`contact_details`.`next_of_kin_contacts` AS `next_of_kin_contacts`,
        `stud_db`.`school_details`.`stud_ID` AS `stud_id`,
        `stud_db`.`school_details`.`current_home_county` AS `current_home_county`,
        `stud_db`.`school_details`.`secondary_school_county` AS `secondary_school_county`,
        `stud_db`.`school_details`.`residence` AS `residence`,
        `stud_db`.`financial_details`.`sem_fee` AS `sem_fee`,
        `stud_db`.`financial_details`.`fee_paid` AS `fee_paid`,
        `stud_db`.`personal_details`.`gender` AS `gender`
    FROM
        ((`stud_db`.`contact_details`
        JOIN `stud_db`.`school_details`)
        JOIN `stud_db`.`financial_details`)
        JOIN `stud_db`.`personal_details`));
        