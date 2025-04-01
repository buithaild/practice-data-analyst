-- GROUP BY

SELECT gender
FROM employeedemographics
GROUP BY gender;

--
SELECT gender, count(*) as Count_Gen
FROM employeedemographics
GROUP BY gender;

-- Avg
SELECT gender, avg(age) as Avg_agee
FROM employeedemographics
GROUP BY gender;

-- Lấy sau dấu phẩy 2 chữ số, tự làm tròn
SELECT gender, round(avg(age), 2) as Avg_agee
FROM employeedemographics
GROUP BY gender;

--
SELECT occupation, avg(salary) as Avg_salary
FROM employeesalary
GROUP BY occupation;

-- MAX, Min
SELECT gender, count(age) as Count_age, avg(age) as Avg_age, max(age) as Max_age, min(age) as Min_age
FROM employeedemographics
GROUP BY gender;

-- ORDER BY
SELECT *
FROM  employeedemographics
ORDER BY first_name;

--
SELECT *
FROM  employeedemographics
ORDER BY first_name desc;

--
SELECT *
FROM  employeedemographics
ORDER BY gender asc;

--
SELECT *
FROM  employeedemographics
ORDER BY gender, age desc;

--
SELECT *
FROM  employeedemographics
ORDER BY age, gender desc;

-- dùng số cột chứ không phải trên cột
SELECT *
FROM  employeedemographics
ORDER BY 5,4;


