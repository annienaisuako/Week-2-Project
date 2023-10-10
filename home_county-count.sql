CREATE VIEW `home_county_count` AS
SELECT current_home_county, COUNT(*) AS student_count
FROM school_details
GROUP BY current_home_county;