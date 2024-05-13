USE pandemic;
CREATE TABLE inf_cases (
  id INT,
  case_year YEAR,
  number_yaws TEXT,
  polio_cases TEXT,
  cases_guinea_worm TEXT,
  number_rabies TEXT,
  number_malaria TEXT,
  number_hiv TEXT,
  number_tuberculosis TEXT, 
  number_smallpox TEXT,
  number_cholera_cases TEXT,
  PRIMARY KEY (id, case_year)
);
INSERT INTO inf_cases (id, case_year, number_yaws, polio_cases, cases_guinea_worm, 
number_rabies, number_malaria, number_hiv, number_tuberculosis, number_smallpox, number_cholera_cases)
SELECT id, Year, Number_yaws, polio_cases, cases_guinea_worm, Number_rabies, Number_malaria, 
Number_hiv, Number_tuberculosis, Number_smallpox, Number_cholera_cases
FROM infectious_cases INNER JOIN entity WHERE infectious_cases.Entity = entity.entity;
SELECT * FROM inf_cases;