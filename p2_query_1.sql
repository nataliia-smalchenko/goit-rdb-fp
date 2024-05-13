USE pandemic;
CREATE TABLE entity (
  id INT AUTO_INCREMENT PRIMARY KEY,
  entity VARCHAR(50) NOT NULL,
  ent_code VARCHAR(8)
);
INSERT INTO entity (entity, ent_code)
SELECT DISTINCT Entity, Code
FROM infectious_cases;
SELECT * FROM entity;