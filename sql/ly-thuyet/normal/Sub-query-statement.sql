-- Subquery

SELECT *
FROM employeedemographics
WHERE employee_id IN (
	SELECT employee_id
    FROM employeesalary
    WHERE dept_id IN (1,2)
);

--
SELECT first_name, salary,
(SELECT AVG(salary)  FROM employeesalary) as avg_salary
FROM employeesalary;

--

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employeedemographics
GROUP BY gender;

--
SELECT gender, avg_age, max_age, min_age, count_age
FROM
(SELECT gender, AVG(age) as avg_age, MAX(age) as max_age, MIN(age) as min_age, COUNT(age) as count_age
FROM employeedemographics 
GROUP BY gender) AS agg_table
GROUP BY gender;

SELECT AVG(avg_age) AS AVG_MAX
FROM
(SELECT gender, AVG(age) as avg_age, MAX(age) as max_age, MIN(age) as min_age, COUNT(age) as count_age
FROM employeedemographics 
GROUP BY gender) AS agg_table;