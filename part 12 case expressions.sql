

SELECT id, first_name, salary,
    CASE
        WHEN salary < 55000 THEN 'Low'
        WHEN salary >= 55000 AND salary < 65000 THEN 'Medium'
        ELSE 'High'
    END AS salary_category
FROM employees;
