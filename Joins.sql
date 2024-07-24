-- Use the created database
USE companydb;

-- INNER JOIN: Select employees and their respective departments
SELECT e.emp_id, e.name AS 'Employee Name', e.city, d.name AS 'Department Name'
FROM employee e
INNER JOIN department d ON e.dept_id = d.dept_id;

-- LEFT JOIN: Select all departments and their respective employees, if any
SELECT d.dept_id, d.name AS 'Department Name', e.emp_id, e.name AS 'Employee Name', e.city
FROM department d
LEFT JOIN employee e ON d.dept_id = e.dept_id;

-- RIGHT JOIN: Select all employees and their respective departments, if any
SELECT e.emp_id, e.name AS 'Employee Name', e.city, d.dept_id, d.name AS 'Department Name'
FROM employee e
RIGHT JOIN department d ON e.dept_id = d.dept_id;

-- FULL OUTER JOIN: Select all employees and all departments, matching where possible (Note: MySQL does not support FULL OUTER JOIN directly)
SELECT e.emp_id, e.name AS 'Employee Name', e.city, d.dept_id, d.name AS 'Department Name'
FROM employee e
LEFT JOIN department d ON e.dept_id = d.dept_id
UNION
SELECT e.emp_id, e.name AS 'Employee Name', e.city, d.dept_id, d.name AS 'Department Name'
FROM employee e
RIGHT JOIN department d ON e.dept_id = d.dept_id;

-- CROSS JOIN: Select all possible combinations of employees and departments
SELECT e.emp_id, e.name AS 'Employee Name', e.city, d.dept_id, d.name AS 'Department Name'
FROM employee e
CROSS JOIN department d;

-- SELF JOIN: Select employees along with their managers
SELECT e1.emp_id, e1.name AS 'Employee Name', e1.city, e2.name AS 'Manager Name'
FROM employee e1
JOIN employee e2 ON e1.manager_id = e2.emp_id;