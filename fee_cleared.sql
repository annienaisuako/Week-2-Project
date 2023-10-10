CREATE VIEW `stud_db`.`fee_cleared` AS
    SELECT 
        `stud_db`.`personal_details`.`national_ID` AS `national_ID`,
        `stud_db`.`financial_details`.`stud_name` AS `stud_name`
        `stud_db`.`financial_details`.`current_fee_status` AS `current_fee_status`
    FROM
        (`stud_db`.`personal_details`
        JOIN `stud_db`.`financial_details`)
    WHERE
        `stud_db`.`financial_details`.`current_fee_status` = 'Cleared'