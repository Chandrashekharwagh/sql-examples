-- Use the created database
USE companydb;

-- Retrieve all data from the department table
SELECT * FROM department;

-- Add a new column to the department table
ALTER TABLE department
ADD COLUMN location VARCHAR(75);

-- Drop the newly added column from the department table
ALTER TABLE department
DROP COLUMN location;

-- Drop the department table if it exists
DROP TABLE department;

-- Insert data into the department table
INSERT INTO department(dept_id, name, building_name, location) 
VALUES (1, 'Sales', 'Sales Commodity Complex', 'Mumbai');

-- Insert data into the department table with columns in a different order
INSERT INTO department(name, dept_id, location, building_name) 
VALUES ('Purchase', 2, 'Delhi', 'Purchases Commodity Complex');

-- Delete all rows from the department table
DELETE FROM department;

-- Retrieve all rows from the department table where dept_id is greater than 950
SELECT * FROM department WHERE dept_id > 950;

-- Retrieve all data from the department table again
SELECT * FROM department;

-- Delete rows from the department table where dept_id is greater than 950
DELETE FROM department WHERE dept_id > 950;

-- Retrieve all data from the department table after deletion
SELECT * FROM department;

-- Remove all rows from the department table but keep the table structure
TRUNCATE TABLE department;

-- Retrieve all data from the department table after truncation
SELECT * FROM department;

-- Update the location of a specific department
UPDATE department
SET location = 'Kolkata'
WHERE dept_id = 4 AND name = 'Research and Development';

-- Retrieve data from the department table for a specific department
SELECT * FROM department WHERE dept_id = 4 AND name = 'Research and Development';

-- Get the total number of rows in the department table
SELECT count(*) FROM department;

-- Group by department name and get counts for departments having more than 80 rows
SELECT name, count(*) as total_dept_count
FROM department
GROUP BY name
HAVING total_dept_count > 80;

-- Retrieve distinct department names
SELECT DISTINCT(name) FROM department;

-- Insert new data into the department table
INSERT INTO department(dept_id, name, building_name, location) 
VALUES (1001, 'Support 123', 'Northport', 'Kalpower');
