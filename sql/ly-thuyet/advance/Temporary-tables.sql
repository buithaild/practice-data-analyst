-- Temporary tables

CREATE TEMPORARY TABLE temp_table
(first_name varchar(50),
last_name varchar(50),
favorite_movie varchar(50)
);

SELECT *
FROM temp_table;

INSERT INTO temp_table
VALUE ('Thai Bui', 'Van', 'End game');

SELECT * FROM temp_table;

SELECT *
FROM employeesalary;

CREATE TEMPORARY TABLE salary_over_50k
SELECT *
FROM employeesalary
WHERE salary > 25000;

SELECT * FROM salary_over_50k;

-- Chỉ tồn tại ở phiên làm việc này thôi, tắt đi bật lại thì sẽ mất bảng temporary này
