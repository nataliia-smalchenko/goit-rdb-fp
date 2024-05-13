USE pandemic;
SELECT entity, ent_code, AVG(Number_rabies) AS average, MIN(Number_rabies) AS minimum, MAX(Number_rabies) AS maximum, SUM(Number_rabies) AS sum
FROM entity INNER JOIN inf_cases ON entity.id = inf_cases.id
WHERE Number_rabies <> ''
GROUP BY entity, ent_code
ORDER BY average DESC
LIMIT 10;