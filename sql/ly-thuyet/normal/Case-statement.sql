-- Case statement

SELECT first_name,
last_name,
age,
CASE
	WHEN age <= 30 THEN 'Young'
    WHEN age BETWEEN 31 and 33 THEN 'Old'
    ELSE 'xxx'
END as age_bracket
FROM employeedemographics;

-- Pay Increase
-- < 20000 = 5%
-- >  20000 = 7%
-- Developer = 10%
SELECT first_name, last_name, occupation, salary,
CASE
	WHEN salary < 20000 AND lower(occupation) <> 'developer' THEN salary + salary*0.05
    WHEN salary >=20000 AND lower(occupation) <> 'developer' THEN salary + salary*0.07
    ELSE salary + 0.1*salary
END AS new_salary
FROM employeesalary;


-- Pay Increase
-- < 20000 = 5%
-- >  20000 = 7%
-- Developer Bonus them  10%
SELECT first_name, last_name, occupation, salary,
CASE
	WHEN salary < 20000 THEN salary + salary*0.05
    WHEN salary > 20000 THEN salary + salary*0.07
END AS new_salary,
CASE
	WHEN lower(occupation) = 'developer' THEN salary*0.1
END AS bonus
FROM employeesalary
