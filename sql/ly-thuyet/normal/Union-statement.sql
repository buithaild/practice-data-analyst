-- Unions
SELECT  age, gender
FROM employeedemographics
UNION
SELECT first_name, last_name
FROM employeesalary;

SELECT  first_name, last_name
FROM employeedemographics
UNION DISTINCT
SELECT first_name, last_name
FROM employeesalary;

SELECT  first_name, last_name
FROM employeedemographics
UNION ALL
SELECT first_name, last_name
FROM employeesalary;

SELECT  first_name, last_name, 'Old Man' AS Label
FROM employeedemographics
WHERE age > 30 AND gender = 'Male'
UNION
SELECT  first_name, last_name, 'Old Lady' AS Label
FROM employeedemographics
WHERE age > 28 AND gender = 'Female'
UNION
SELECT first_name, last_name, 'Higly Paid Employee' as Label
FROM employeesalary
WHERE salary > 25000
ORDER BY first_name, last_name;