
-- Use the created database
USE CompanyDB;

-- Select employees along with their managers
SELECT emp.emp_id, emp.name AS 'Employee Name', emp.city, manager.name AS 'Manager' 
FROM employee emp
JOIN employee manager ON manager.emp_id = emp.manager_id;

-- Select employees with their departments and managers
SELECT emp.emp_id, emp.name AS 'Employee Name', emp.city, dept.name AS 'Department Name', manager.name AS 'Manager'
FROM department dept
JOIN employee emp ON dept.dept_id = emp.dept_id
JOIN employee manager ON manager.emp_id = emp.manager_id;
