DROP DATABASE IF EXISTS companydb;

-- Create the database
CREATE DATABASE companydb;

-- Use the created database
USE companydb;

-- Drop the employee table if it already exists
DROP TABLE IF EXISTS employee;

-- Create the employee table
CREATE TABLE employee (
    emp_id INTEGER PRIMARY KEY,
    name VARCHAR(128),
    city VARCHAR(56),
    dept_id INTEGER
);



-- Create the department table
CREATE TABLE department (
    dept_id INTEGER PRIMARY KEY,
    name VARCHAR(128)
);

-- Insert sample data into the department table
INSERT INTO department (dept_id, name)
VALUES 
    (1, 'HR'),
    (3, 'Finance'),
    (5, 'IT'),
    (7, 'Marketing'),
    (15, 'Sales'),
    (365, 'Engineering'),
    (87, 'Operations');

-- Insert sample data into the employee table with Indian names
INSERT INTO employee (emp_id, name, city, dept_id)
VALUES 
    (1, 'Rajesh', 'Pune', 1), 
    (2, 'Deepak', 'Mumbai', 3),
    (3, 'Sunita', 'Pune', 5),
    (4, 'Anjali', 'Delhi', 7),
    (5, 'Karan', 'Kolkata', 15),
    (6, 'Ravi', 'Bengaluru', 365),
    (7, 'Meera', 'Ahmedabad', 87);


