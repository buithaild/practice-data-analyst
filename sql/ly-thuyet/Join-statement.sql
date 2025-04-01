-- Joins

SELECT *
FROM employeedemographics;

SELECT *
FROM employeesalary;

SELECT ee.employee_id, ee.first_name, ee.last_name, ee.age, es.occupation
FROM employeedemographics ee
INNER JOIN employeesalary es
ON ee.employee_id = es.employee_id;


-- LEFT JOIN: Lấy tất cả hàng của bảng bên trái và phần chung
SELECT ee.employee_id, ee.first_name, ee.last_name, ee.age, es.occupation
FROM employeedemographics ee
LEFT JOIN employeesalary es
ON ee.employee_id = es.employee_id;

-- RIGHT JOIN: Lấy tất cả hàng của bảng bên phải và phần chung
SELECT ee.employee_id, ee.first_name, ee.last_name, ee.age, es.occupation
FROM employeedemographics ee
RIGHT JOIN employeesalary es
ON ee.employee_id = es.employee_id;


-- SELF JOIN: join với chính nó
SELECT *
FROM employeesalary emp1
JOIN employeesalary emp2
ON emp1.employee_id = emp2.employee_id;

SELECT emp1.employee_id as emp_santa,
emp1.first_name as first_name_santa,
emp1.last_name as lasr_name_santa,
emp2.employee_id as emp_name,
emp2.first_name as first_name_emp,
emp2.last_name as lasr_name_emp
FROM employeesalary emp1
JOIN employeesalary emp2
ON emp1.employee_id + 1 = emp2.employee_id;


-- Join multiple tables

SELECT *
FROM employeedemographics ee
INNER JOIN employeesalary sal
	ON ee.employee_id = sal.employee_id
INNER JOIN departments d
	ON sal.dept_id = d.department_id;
