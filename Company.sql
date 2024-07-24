-- Create the database if it doesn't already exist
CREATE DATABASE IF NOT EXISTS CompanyDB;

-- Use the created database
USE CompanyDB;

-- Drop the department table if it already exists
DROP TABLE IF EXISTS department;

-- Create the department table
CREATE TABLE department (
    dept_id INTEGER PRIMARY KEY,
    name VARCHAR(128)
);

-- Insert sample data into the department table
INSERT INTO department (dept_id, name)
VALUES 
    (1, 'HR'),
    (2, 'Finance'),
    (3, 'IT'),
    (4, 'Marketing'),
    (5, 'Sales'),
    (6, 'Engineering'),
    (7, 'Operations'),
    (8, 'Support');

-- Drop the employee table if it already exists
DROP TABLE IF EXISTS employee;

-- Create the employee table
CREATE TABLE employee (
    emp_id INTEGER PRIMARY KEY,
    name VARCHAR(128),
    city VARCHAR(56),
    dept_id INTEGER,
    manager_id INTEGER,
    FOREIGN KEY(dept_id) REFERENCES department(dept_id),
    FOREIGN KEY(manager_id) REFERENCES employee(emp_id)
);

-- Insert sample data into the employee table with Indian names
INSERT INTO employee (emp_id, name, city, dept_id)
VALUES 
    (1, 'Rajesh', 'Pune', 1);

INSERT INTO employee (emp_id, name, city, dept_id, manager_id)
VALUES 
    (2, 'Deepak', 'Mumbai', 2, 1),
    (3, 'Sunita', 'Pune', 8, 1),
    (4, 'Anjali', 'Delhi', 4, 1),
    (5, 'Karan', 'Kolkata', 5, 1),
    (6, 'Ravi', 'Bengaluru', 6, 1),
    (7, 'Meera', 'Ahmedabad', 7, 1);
