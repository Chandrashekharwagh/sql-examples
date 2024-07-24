USE companydb;

DELIMITER //

CREATE PROCEDURE GenerateEmployeeReport(IN departmentId INT, OUT totalEmployees INT)
BEGIN
    SELECT COUNT(*) INTO totalEmployees
    FROM employees
    WHERE department_id = departmentId;

    INSERT INTO report_log (department_id, report_date, employee_count)
    VALUES (departmentId, NOW(), totalEmployees);
END;
//

DELIMITER ;
