SELECT * 
FROM thai_database.employeedemographics;

SELECT first_name,
last_name,
age,
age + 10 as age_new
FROM thai_database.employeedemographics;

# PEMDAS

-- Distinct
SELECT DISTINCT gender
FROM thai_database.employeedemographics;