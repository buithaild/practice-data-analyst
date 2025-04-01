DROP DATABASE IF EXISTS `thai_database`;
CREATE DATABASE `thai_database`;
USE `thai_database`;

-- Create table
DROP TABLE IF EXISTS thai_database.employeedemographics;
Create Table EmployeeDemographics 
(employee_id int, 
first_name varchar(50), 
last_name varchar(50), 
age int, 
gender varchar(50), 
birth_date date
);

-- Create table
DROP TABLE IF EXISTS `employeesalary`;
Create Table EmployeeSalary 
(employee_id int, 
first_name varchar(50),
last_name varchar(50),
occupation varchar(100),
salary int,
dept_id int
);

-- Insert
Insert into employeedemographics VALUES
(1, 'Thai', 'Bui', 26, 'Male', '1999-08-23'),  
(2, 'An', 'Nguyen', 30, 'Male', '1994-05-12'),  
(3, 'Minh', 'Tran', 28, 'Female', '1996-09-30'),  
(4, 'Huy', 'Le', 35, 'Male', '1989-07-15'),  
(5, 'Lan', 'Pham', 27, 'Female', '1997-02-10'),  
(6, 'Nam', 'Hoang', 31, 'Male', '1993-11-20'),  
(7, 'Phuong', 'Dang', 29, 'Female', '1995-06-05'),  
(8, 'Tuan', 'Vo', 33, 'Male', '1991-04-18'),  
(9, 'Hoa', 'Ly', 25, 'Female', '1999-12-03'),  
(10, 'Khoa', 'Do', 32, 'Male', '1992-03-25'),  
(11, 'Linh', 'Vu', 26, 'Female', '1998-10-07'),  
(12, 'Dung', 'Phan', 34, 'Male', '1990-08-14'),  
(13, 'Thao', 'Ngo', 27, 'Female', '1997-07-21'),  
(14, 'Vinh', 'Ta', 29, 'Male', '1995-01-29'),  
(15, 'My', 'Truong', 28, 'Female', '1996-05-17');  

-- Insert
Insert Into EmployeeSalary VALUES
(1, 'Thai', 'Bui', 'Developer', 20000, 1),  
(2, 'An', 'Nguyen', 'Data Analystic', 18000, 2),  
(3, 'Minh', 'Tran', 'HR Specialist', 15000, 3),  
(4, 'Huy', 'Le', 'Project Manager', 25000, 4),  
(5, 'Lan', 'Pham', 'Marketing Executive', 16000, 5),  
(6, 'Nam', 'Hoang', 'Data Engineer', 22000, 2),  
(7, 'Phuong', 'Dang', 'UX Designer', 17000, 6),  
(8, 'Tuan', 'Vo', 'System Administrator', 19000, 7),  
(9, 'Hoa', 'Ly', 'Content Writer', 14000, 5),  
(10, 'Khoa', 'Do', 'DevOps Engineer', 23000, 1),  
(11, 'Linh', 'Vu', 'Business Analyst', 18500, 3),  
(12, 'Dung', 'Phan', 'Security Engineer', 24000, 7),  
(13, 'Thao', 'Ngo', 'Product Manager', 26000, 4),  
(14, 'Vinh', 'Ta', 'Software Tester', 16500, 1),  
(15, 'My', 'Truong', 'Sales Executive', 15500, 5);  

--
DROP TABLE IF EXISTS `departments`;
Create table departments (
department_id INT NOT NULL AUTO_INCREMENT,
department_name varchar(50) NOT NULL,
PRIMARY KEY(department_id)
);

INSERT INTO departments (department_name)
VALUES
('Engineering'),  
('Data & Analytics'),  
('HR'),  
('Management'),  
('Marketing'),  
('Design'),  
('IT & Security');