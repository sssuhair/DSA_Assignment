

-- 1. Write SQL queries to create the  table.show databases;
create database employeedetails;
show databases;
use employeeinfo;

CREATE TABLE employeetable(
emp_id varchar(10) NOT NULL,
emp_name varchar(20)NOT NULL,
gender varchar(5)NOT NULL,
department varchar(20)NOT NULL,
salary int NOT NULL,
dob date NOT NULL,
dateofjoining date NOT NULL,
primary key (emp_id)
);

describe employeetable;

INSERT INTO employeetable VALUES
('CPO123','Ann Mery','F','HR',45000,'1989-10-10','2018-01-01'),
('CPO087','Felix M','M','Finance',48000,'1981-04-12','2000-12-10'),
('CPO197','Merlin','M','CEO',80000,'1990-03-01','2011-05-10'),
('CPO213','Philip','M','Retail',47000,'1991-04-01','2012-06-11'),
('CPO243','Michael','M','Retail',40000,'1992-12-01','2016-05-30'),
('CPO289','Susan','F','Retail',40000,'1991-01-01','2016-04-01'),
('CPO298','Abram','M','Relations',30000,'1994-04-17','2016-10-06'),
('CPO300','Alia','F','Relations',30000,'1995-10-17','2016-10-18'),
('CPO321','Raichal','F','Marketing',34000,'1990-10-09','2016-10-22'),
('CPO276','Thomas','M','Marketing',44000,'1983-11-19','2018-10-22')
;

-- 2. Write SQL queries to select employees from the following
-- departments
-- a. Marketing
-- b. Retail
-- c. HR

SELECT * FROM employeetable WHERE department LIKE '%Marketing%' or department LIKE '%HR%' or department LIKE '%Retail%'  ;

-- 3. Write SQL queries to create a table only containing female employees

SELECT * FROM employeetable WHERE gender LIKE '%F%';

-- 4. Write SQL queries to display the Maximum,Minimum and Average Salary
select emp_id ,emp_name, max(salary) from employeetable;

-- min
select emp_id ,emp_name, min(salary) from employeetable;

-- Avg salary
select emp_id, emp_name, avg(salary) 
from employeetable
group by salary;

-- 5. Write SQL query to display the employee details based on the following conditions.
-- a. Male employees having salary greater than 40000
-- b. Female employees having salary less than 45000
-- c. Employee having salary between 30000 and 60000 and working in Marketing or Retail department.


Select * from employeetable where salary < 40000;

Select * from employeetable where gender='F' and salary>45000;
select emp_id, emp_name 
from employeetable where salary <45000;

SELECT emp_id, emp_name,salary,department
FROM employeetable
WHERE salary BETWEEN 30000 AND 60000 
AND department LIKE '%Marketing%' or department LIKE '%Retail%' ;