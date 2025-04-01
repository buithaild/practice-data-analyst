-- WHERE clause

SELECT *
FROM employeesalary
WHERE employee_id = '1001';

--
SELECT *
FROM employeesalary
WHERE salary > 50000;

--
SELECT *
FROM employeesalary
WHERE salary >= 41000;

--
SELECT *
FROM employeedemographics
WHERE gender != 'Female';

-- AND OR NOT
SELECT *
FROM employeedemographics
WHERE gender = 'Female'
AND age > 30;

SELECT *
FROM employeedemographics
WHERE gender = 'Female'
OR age > 30;

SELECT *
FROM employeedemographics
WHERE gender = 'Male'
OR NOT age < 30;

--
SELECT *
FROM employeedemographics
WHERE (first_name = 'Pam' AND age = 30) OR age > 33;

-- ----------------------------- LIKE STATEMENT
SELECT * 
FROM employeedemographics ep
WHERE ep.first_name LIKE 'M%';

--
SELECT * 
FROM employeedemographics ep
WHERE ep.first_name LIKE '%A%';

--
SELECT * 
FROM employeedemographics ep
WHERE ep.last_name LIKE '%on';

-- % andd _
SELECT * 
FROM employeedemographics ep
WHERE ep.last_name LIKE '%s__';

-- 
SELECT * 
FROM employeedemographics ep
WHERE ep.first_name LIKE 'To_y';

--
SELECT * 
FROM employeedemographics ep
WHERE ep.first_name LIKE 'd__%';
