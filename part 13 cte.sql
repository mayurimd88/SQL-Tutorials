

WITH department_employee_count AS (
    SELECT department, COUNT(*) AS num_employees
    FROM employees
    GROUP BY department
)
SELECT department, num_employees, 
       AVG(num_employees) OVER () AS avg_num_employees
FROM department_employee_count;
