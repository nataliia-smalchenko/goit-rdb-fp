USE pandemic;
CREATE TABLE inf_cases_2 (
  id INT,
  case_year YEAR,
  number_yaws DECIMAL,
  polio_cases DECIMAL,
  cases_guinea_worm DECIMAL,
  number_rabies DOUBLE,
  number_malaria DOUBLE,
  number_hiv DOUBLE,
  number_tuberculosis DOUBLE, 
  number_smallpox DECIMAL,
  number_cholera_cases DECIMAL,
  PRIMARY KEY (id, case_year)
);
INSERT INTO inf_cases_2 (id, case_year, number_yaws, polio_cases, cases_guinea_worm, 
number_rabies, number_malaria, number_hiv, number_tuberculosis, number_smallpox, number_cholera_cases)
SELECT id, Year, 
IF(Number_yaws = "", NULL, CAST(Number_yaws as DECIMAL)), 
IF(polio_cases = "", NULL, CAST(polio_cases as DECIMAL)),
IF(cases_guinea_worm = "", NULL, CAST(cases_guinea_worm as DECIMAL)),
IF(number_rabies = "", NULL, CAST(number_rabies as DOUBLE)),
IF(number_malaria = "", NULL, CAST(number_malaria as DOUBLE)),
IF(number_hiv = "", NULL, CAST(number_hiv as DOUBLE)),
IF(number_tuberculosis = "", NULL, CAST(number_tuberculosis as DOUBLE)),
IF(number_smallpox = "", NULL, CAST(number_smallpox as DECIMAL)),
IF(number_cholera_cases = "", NULL, CAST(number_cholera_cases as DECIMAL))
FROM infectious_cases INNER JOIN entity WHERE infectious_cases.Entity = entity.entity;
SELECT * FROM inf_cases_2;
