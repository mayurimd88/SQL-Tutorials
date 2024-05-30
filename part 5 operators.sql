CREATE TABLE sales_data
(qty_sold float, unit_price float, total_sales float);
INSERT INTO sales_data VALUES
(10, 5.5, NULL),
(20, 3.75, NULL),
(15, 6.2, NULL);

-- arithematic operators--
-- addition
SELECT unit_price + 10 AS addition
   FROM sales_data;
 
 -- subtraction
    SELECT qty_sold - 5 AS difference
   FROM sales_data;

-- multiplication
set sql_safe_updates=0;
UPDATE sales_data
   SET total_sales = qty_sold * unit_price;
select * from sales_data;

-- division
UPDATE sales_data
   SET total_sales = total_sales / 2;
 -- modulus  
   UPDATE sales_data
   SET total_sales = total_sales % 20;

set sql_safe_updates=1;

-- COMPARISON OPERATOR --

CREATE TABLE employees
(
id int PRIMARY KEY,
first_name varchar(50) NOT NULL,
last_name varchar(50) NOT NULL,
department varchar(50),
salary int
);
INSERT INTO employees
VALUES
(1, "john", "doe", "sales", 50000),
(2, "jane", "smith", "marketing", 60000),
(3, "alice", "johnson", "it", 70000),
(4, "bob", "brown", "sales", 55000),
(5, "emma", "davis", "marketing", 65000);
select * from employees;

-- equal to
SELECT *
   FROM employees
   WHERE department = 'Sales';

-- not equal to   
   SELECT * FROM employees
   WHERE department <> 'Sales';

-- greater than   
   SELECT * FROM employees
   WHERE salary > 60000;
 
 -- smaller than
   SELECT * FROM employees
   WHERE salary < 60000;

-- greater than or equal to   
   SELECT * FROM employees
   WHERE salary >= 60000;
 
 -- smaller than or equal to
   SELECT * FROM employees
   WHERE salary <= 60000;
   
   -- logical operator --
   
   -- AND
   SELECT * FROM employees
   WHERE department = 'Sales' AND salary > 50000;
   
   -- OR
   SELECT * FROM employees
   WHERE department = 'Sales' OR 
   department = 'Marketing';
   
   -- NOT
   SELECT * FROM employees
   WHERE NOT department = 'Sales';

-- ALL
-- salary greater than all salaries in the Marketing dept--   
SELECT * FROM employees
WHERE salary > ALL 
(SELECT salary FROM employees WHERE department = 'Marketing');

-- IN
SELECT * FROM employees
WHERE department IN ('Sales', 'Marketing');

-- BETWEEN
SELECT * FROM employees
WHERE salary BETWEEN 50000 AND 60000;

-- LIKE
SELECT * FROM employees
WHERE first_name LIKE 'J%';

-- ANY
-- salary greater than any salary in the Marketing dept --
SELECT * FROM employees
WHERE salary > ANY 
(SELECT salary FROM employees WHERE department = 'Marketing');

-- bitwise --

-- AND &
SELECT qty_sold & unit_price AS result
from sales_data;

-- OR |
SELECT qty_sold | unit_price AS result
from sales_data;





















