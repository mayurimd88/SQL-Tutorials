CREATE DATABASE practice;
-- use PRACTICE;
-- DROP DATABASE practice;

CREATE TABLE cutomer (
id INTEGER, first_name VARCHAR(10), 
last_name VARCHAR(10), city VARCHAR(10), 
country VARCHAR(10), phone VARCHAR(10));

ALTER TABLE cutomer
RENAME TO customer;

SELECT * FROM customer;

INSERT INTO customer VALUES
(1, "sam", "xyz", "Mumbai", "India", 123456789),
(2, "pqr", "xyz", "Goa", "India", 123456789),
(3, "abc", "mno", "Kerala", "India", 0123456789);
SELECT * FROM customer;

SET SQL_SAFE_UPDATES=0;  -- disable safe update mode
-- update --
UPDATE customer
SET city = "pune"
WHERE id = 2;
SELECT * FROM customer;

-- delete --
DELETE FROM customer
WHERE id = 3;
SELECT * FROM customer;

SET SQL_SAFE_UPDATES=1;   -- enable safe update mode

-- add column
ALTER TABLE customer
ADD COLUMN age INT;
SELECT * FROM customer;
-- delete column
ALTER TABLE customer
DROP COLUMN age;
SELECT * FROM customer;

-- truncate --
TRUNCATE TABLE customer;

-- drop --
DROP TABLE customer;













