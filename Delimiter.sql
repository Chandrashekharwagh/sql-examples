USE companydb;

DELIMITER //

CREATE PROCEDURE complexProcedure()
BEGIN
    DECLARE total INT;
    SET total = (SELECT COUNT(*) FROM employees);
    INSERT INTO audit_log (message) VALUES (CONCAT('Total employees: ', total));
END;
//

DELIMITER ;
