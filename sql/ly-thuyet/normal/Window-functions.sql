-- Window functions

SELECT gender, AVG(salary) AS avg_salary
FROM employeedemographics dem
JOIN employeesalary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender;

--

SELECT dem.first_name, dem.last_name, gender, AVG(salary) OVER(PARTITION BY gender ) as sal_window_funct
FROM employeedemographics dem
JOIN employeesalary sal
	ON dem.employee_id = sal.employee_id;
    
--    
SELECT dem.first_name, dem.last_name, gender, AVG(salary) as avg_sala
FROM employeedemographics dem
JOIN employeesalary sal
	ON dem.employee_id = sal.employee_id
GROUP BY dem.first_name, dem.last_name, gender;

--
SELECT dem.first_name, dem.last_name, gender, SUM(salary) OVER(PARTITION BY gender ) as sal_window_funct
FROM employeedemographics dem
JOIN employeesalary sal
	ON dem.employee_id = sal.employee_id;
    
--
SELECT dem.first_name, dem.last_name, gender, salary, SUM(salary) OVER(PARTITION BY gender ORDER BY dem.employee_id ) as Rolling_total
FROM employeedemographics dem
JOIN employeesalary sal
	ON dem.employee_id = sal.employee_id;
    

-- ROW_NUMBER

SELECT dem.employee_id, dem.first_name, dem.last_name, gender, salary,
ROW_NUMBER() OVER()
FROM employeedemographics dem
JOIN employeesalary sal
	ON dem.employee_id = sal.employee_id;
    
--

SELECT dem.employee_id, dem.first_name, dem.last_name, gender, salary,
ROW_NUMBER() OVER(PARTITION BY gender)
FROM employeedemographics dem
JOIN employeesalary sal
	ON dem.employee_id = sal.employee_id;
    
--
SELECT dem.employee_id, dem.first_name, dem.last_name, gender, salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary)
FROM employeedemographics dem
JOIN employeesalary sal
	ON dem.employee_id = sal.employee_id;
    
    
    
    
-- RANK

SELECT dem.employee_id, dem.first_name, dem.last_name, gender, salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC) AS row_num,
RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS rank_num
FROM employeedemographics dem
JOIN employeesalary sal
	ON dem.employee_id = sal.employee_id;
    
-- DENSE_RANK
SELECT dem.employee_id, dem.first_name, dem.last_name, gender, salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC) AS row_num,
RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS rank_num,
DENSE_RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS dense_rank_num
FROM employeedemographics dem
JOIN employeesalary sal
	ON dem.employee_id = sal.employee_id;