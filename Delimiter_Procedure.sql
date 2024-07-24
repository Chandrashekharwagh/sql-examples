-- Use the created database
USE companydb;

-- Change the delimiter to handle the procedure definition
DELIMITER //

CREATE PROCEDURE getEmployeeNameProc(IN e_id INT, OUT emp_name VARCHAR(128))
BEGIN
    SELECT name INTO emp_name FROM employee WHERE emp_id = e_id;
END //

-- Reset the delimiter to default
DELIMITER ;

-- Declare a variable to hold the output
SET @emp_name = '';

-- Call the procedure
CALL getEmployeeNameProc(5, @emp_name);

-- Retrieve the output
SELECT @emp_name;
