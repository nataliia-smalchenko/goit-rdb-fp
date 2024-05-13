DELIMITER //
CREATE FUNCTION year_diff(input_year YEAR)
RETURNS INT
NO SQL
BEGIN
    DECLARE now_date DATE;
    DECLARE case_date DATE;
    DECLARE result INT;
    SET now_date = CURDATE();
    SET case_date = MAKEDATE(input_year, 1);
    SET result = YEAR(now_date) - YEAR(case_date);
    RETURN result;
END //
DELIMITER ;
USE pandemic;
SELECT entity, ent_code, case_year, year_diff(case_year) AS year_diff
FROM entity INNER JOIN inf_cases ON entity.id = inf_cases.id;
