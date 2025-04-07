-- Triggers and Events

DELIMITER $$
CREATE TRIGGER employee_insert
	AFTER INSERT ON employeesalary
    FOR EACH ROW
BEGIN
	INSERT INTO employeedemographics (employee_id, first_name, last_name)
    VALUES (NEW.employee_id, NEW.first_name, NEW.last_name);
END $$
DELIMITER ;


INSERT INTO employeesalary(employee_id, first_name, last_name, occupation, salary, dept_id)
VALUES(17, 'Linh', 'La', 'Business Analyst', 25000, 5);

SELECT * FROM employeesalary;
SELECT * FROM employeedemographics;


-- EVENTS
SELECT *
FROM employeedemographics;


--
DELIMITER $$
CREATE EVENT delete_retirees
ON SCHEDULE EVERY 30 SECOND 
DO
BEGIN
	SELECT *
    FROM employeedemographics
    WHERE  age >= 30;
END $$ 
DELIMITER ;

SHOW VARIABLES LIKE 'event%'


