-- Stored procedures

SELECT *
FROM employeesalary
WHERE salary >= 21000;

CREATE PROCEDURE large_salaries()
SELECT *
FROM employeesalary
WHERE salary > 21000;

CALL large_salaries();

DELIMITER $$
CREATE PROCEDURE large_salaries3()
BEGIN
	SELECT *
    FROM employeesalary
    WHERE salary >= 21000;
    SELECT *
    FROM employeesalary 
    WHERE salary >= 18000;
END $$
DELIMITER ;

CALL large_salaries3();

-- Co the dung tool: chuot phai vao Stored Procedures > create

DELIMITER $$
CREATE PROCEDURE large_salaries4(thaibui INT)
BEGIN
	SELECT *
    FROM employeesalary
    WHERE employee_id = thaibui ;
END $$
DELIMITER ;
CALL large_salaries4(1);