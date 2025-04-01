-- CTEs

WITH CTE AS (
SELECT gender, AVG(salary) AS avg_salary, MAX(salary) as max_sal, MIN(salary) as min_sal, COUNT(salary) as count_sal
FROM employeedemographics dem
JOIN employeesalary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
)

SELECT gender, avg_salary, max_sal, min_sal
FROM CTE;

--
WITH CTE AS (
SELECT gender, AVG(salary) AS avg_salary, MAX(salary) as max_sal, MIN(salary) as min_sal, COUNT(salary) as count_sal
FROM employeedemographics dem
JOIN employeesalary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
)
SELECT AVG(max_sal) FROM CTE;

-- => giong nhu

SELECT AVG(max_sal)
FROM (
SELECT gender, AVG(salary) AS avg_salary, MAX(salary) as max_sal, MIN(salary) as min_sal, COUNT(salary) as count_sal
FROM employeedemographics dem
JOIN employeesalary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
) example;


--
WITH CTE1 AS (
SELECT employee_id, gender, birth_date
FROM employeedemographics
WHERE birth_date > '1998-01-01'
),
CTE2 AS 
(
SELECT employee_id, salary
FROM employeesalary
WHERE salary < 20000
)
SELECT *
FROM CTE1 
JOIN CTE2 
	ON CTE1.employee_id = CTE2.employee_id;
