USE pandemic;
SELECT entity, ent_code, case_year, MAKEDATE(case_year, 1) AS case_date, CURDATE() AS now_date, TIMESTAMPDIFF(YEAR, MAKEDATE(case_year, 1), CURDATE()) AS year_diff
FROM entity INNER JOIN inf_cases ON entity.id = inf_cases.id;