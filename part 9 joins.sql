CREATE TABLE `employee` (
  `emp_id` int,`emp_name` varchar(50),`department_id` int );
INSERT INTO employee VALUES 
(1, 'john', 101),(2,'alice',102),(3,'bob',101),(4,'mary', 103);

CREATE TABLE department
(department_id INT, department_name VARCHAR(50));
INSERT INTO department VALUES
(101,'it'),(102,'hr'),(103,'marketing'),(104,'sales');

-- inner join
SELECT employee.emp_id, employee.emp_name, department.department_name
FROM employee
INNER JOIN department ON employee.department_id = department.department_id;

-- left join
SELECT employee.emp_id, employee.emp_name, department.department_name
FROM employee
LEFT JOIN department ON employee.department_id = department.department_id;

-- right join
SELECT employee.emp_id, employee.emp_name, department.department_name
FROM employee
RIGHT JOIN department ON employee.department_id = department.department_id;

-- full join (combine with left and right)
SELECT employee.emp_id, employee.emp_name, department.department_name
FROM employee
LEFT JOIN department ON employee.department_id = department.department_id
UNION ALL
SELECT employee.emp_id, employee.emp_name, department.department_name
FROM employee
RIGHT JOIN department ON employee.department_id = department.department_id 
WHERE employee.emp_id = NULL;

-- cross join
SELECT employee.emp_id, employee.emp_name, department.department_name
FROM employee
CROSS JOIN department;

create table company
(emp_id int,
emp_name varchar(50),
manager_id int);
insert into company
values (1, "john",0),
(2, "alice", 1),
(3, "bob", 1),
(4, "mary", 2);

-- self join
SELECT c.emp_name AS employee_name, m.emp_name AS manager_name
FROM company c
LEFT JOIN company m ON c.manager_id = m.emp_id;

create table employee2
(emp_id int,
emp_name varchar(50));
insert into employee2
values (3, "bob"),
(4, "mary");

-- union
SELECT emp_id, emp_name FROM employee1
UNION
SELECT emp_id, emp_name FROM employee2;

-- union all
SELECT emp_id, emp_name FROM employee1
UNION ALL
SELECT emp_id, emp_name FROM employee2;



