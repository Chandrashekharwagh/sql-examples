
-- Use the created database
USE CompanyDB;

-- Select all records from the department table
SELECT * FROM department;

-- Select all records from the employee table
SELECT * FROM employee;

-- Fetch list of employees where employee id is less than 5 and working in Pune and working in department named 'Support'
SELECT e.emp_id, e.name, e.city, d.name AS 'Department Name'
FROM employee e
JOIN department d ON e.dept_id = d.dept_id
WHERE e.emp_id < 5 AND e.city = 'Pune' AND d.name = 'Support';

-- CROSS JOIN
SELECT * FROM department CROSS JOIN employee;

-- INNER JOIN
SELECT e.emp_id, e.name AS 'Employee Name', e.city, d.name AS 'Department Name'
FROM department d
JOIN employee e ON d.dept_id = e.dept_id
WHERE e.city = 'Mumbai';

-- LEFT JOIN
SELECT e.emp_id, e.name AS 'EmpName', e.city, d.name AS 'Dept Name'
FROM department d
LEFT JOIN employee e ON d.dept_id = e.dept_id;

-- RIGHT JOIN
SELECT e.emp_id, e.name AS 'EmpName', e.city, d.name AS 'Dept Name'
FROM department d
RIGHT JOIN employee e ON d.dept_id = e.dept_id;
