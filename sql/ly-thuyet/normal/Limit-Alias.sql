-- limit and aliasing

SELECT *
FROM employeedemographics
limit 3;

--
SELECT *
FROM employeedemographics
ORDER BY age desc
limit 3;

-- Bỏ qua 3 dòng đầu tiên, lấy 4 dòng tiếp theo
SELECT *
FROM employeedemographics
ORDER BY age desc
limit 3, 4;

-- Aliasing

SELECT gender, AVG(age) as avg_age
FROM employeedemographics
GROUP BY gender
HAVING AVG(age) > 30;

-- Không cần AS
SELECT gender, AVG(age) avg_age
FROM employeedemographics
GROUP BY gender
HAVING AVG(age) > 30