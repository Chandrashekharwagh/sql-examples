-- Use the created database
USE companydb;

DELIMITER //
CREATE FUNCTION getEmployeeName(e_id INT) RETURNS VARCHAR(128)
READS SQL DATA
BEGIN
	DECLARE emp_name VARCHAR(128);
	SELECT name INTO emp_name FROM employee WHERE emp_id = e_id;
    RETURN emp_name;
END //

DELIMITER ;

SELECT getEmployeeName(5);

