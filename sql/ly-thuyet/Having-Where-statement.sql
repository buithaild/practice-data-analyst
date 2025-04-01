-- HAVING vs WHERE
SELECT gender, AVG(age) as Avg_age
FROM employeedemographics
-- WHERE AVG(age) > 40 -- lỗi: không thể kết hợp WHERE và GROUP BY khi có hàm tổng hợp
GROUP BY gender;

SELECT gender, AVG(age) as Avg_age
FROM employeedemographics
GROUP BY gender
HAVING AVG(age) > 30;

--
SELECT occupation, AVG(salary)
FROM employeesalary
GROUP BY occupation;

--
SELECT occupation, AVG(salary)
FROM employeesalary
WHERE occupation LIKE '%Manager'
GROUP BY occupation
HAVING AVG(salary) > 25000