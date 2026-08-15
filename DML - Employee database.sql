Create  database employement_db;
use employement_db;
  CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL UNIQUE
);
CREATE TABLE Location (
    Location_id INT PRIMARY KEY auto_increment,
   Location_name VARCHAR(100) NOT NULL UNIQUE
);
CREATE TABLE Employee (
employee_id VARCHAR(50) Primary Key,
employee_name VARCHAR(100) NOT NULL,
Gender CHAR(1) check (gender in ('M','F')),
Age INT check (age>=18),
hire_date DATE DEFAULT (Current_date),
designation varchar(100),
salary decimal(10,2),
department_id int,
 location_id int,
 Foreign key(department_id) REFERENCES departments(department_id),
 foreign key(Location_id) REFERENCES location(Location_id)
 );
 ----alter the column
  alter table Employee
  add emailaddress varchar(50);
  alter table Employee
  modify column designation Varchar(200);
   alter table Employee
   drop column age;
   alter table Employee
   rename column hire_date to date_of_joining;
   ----Rename table
   rename table departments to Departments_Info;
   rename table Location to Locations;
   INSERT INTO departments (department_id, department_name) VALUES
(1, 'Software Development'),
(2, 'Marketing'),
(3, 'Data Science'),
(4, 'Human Resources'),
(5, 'Product Management'),
(6, 'Content Creation'),
(7, 'Finance'),
(8, 'Design'),
(9, 'Research and Development'),
(10, 'Customer Support'),
(11, 'Business Development'),
(12, 'IT'),
(13, 'Operations');
INSERT INTO locations (Location_name) VALUES
('Chennai'),
('Bangalore'),
('Hyderabad'),
('Pune');
DESCRIBE locations;
INSERT INTO employee (employee_id, employee_name, gender, age, hire_date, designation, department_id, location_id, salary) VALUES
(5001, 'Vihaan Singh', 'M', 27, '2015-01-20', 'Data Analyst', 3, 4, 60000),
(5002, 'Reyansh Singh', 'M', 31, '2015-03-10', 'Network Engineer', 12, 1, 80000),
(5003, 'Aaradhya Iyer', 'F', 26, '2015-05-20', 'Customer Support Executive', 10, 2, 45000),
(5004, 'Kiara Malhotra', 'F', 29, '2015-07-05', NULL, 8, 3, 70000),
(5005, 'Anvi Chaudhary', 'F', 25, '2015-09-11', 'Business Development Executive', 11, 1, 55000),
(5006, 'Dhruv Shetty', 'M', 28, '2015-11-20', 'UI Developer', 8, 2, 65000),
(5007, 'Anushka Singh', 'F', 32, '2016-01-15', 'Marketing Manager', 2, 3, 90000),
(5008, 'Diya Jha', 'F', 27, '2016-03-05', 'Graphic Designer', 8, 4, 70000),
(5009, 'Kiaan Desai', 'M', 30, '2016-05-20', 'Sales Executive', 11, 3, 55000),
(5010, 'Atharv Yadav', 'M', 29, '2016-07-10', 'Systems Administrator', 12, 4, 80000),
(5011, 'Saanvi Patel', 'F', 28, '2016-09-20', 'Marketing Analyst', 2, 1, 60000),
(5012, 'Myra Verma', 'F', 26, '2016-11-05', 'Operations Manager', 13, 2, 95000),
(5013, 'Arnav Rao', 'M', 33, '2017-01-20', 'Customer Success Manager', 10, 3, 75000),
(5014, 'Vihaan Mohan', 'M', 30, '2017-03-10', 'Supply Chain Analyst', 10, 2, 60000),
(5015, 'Ishaan Kumar', 'M', 27, '2017-05-20', 'Financial Analyst', 7, 1, 85000),
(5016, 'Zoya Khan', 'F', 31, '2017-07-05', 'Legal Counsel', 4, 4, 100000),
(5017, 'Kabir Nair', 'M', 28, '2017-09-11', 'IT Support Specialist', 12, 2, 80000),
(5018, 'Ishan Mishra', 'M', 25, '2017-11-20', 'Research Scientist', 9, 3, 75000),
(5019, 'Ishika Patel', 'F', 29, '2018-01-15', 'Talent Acquisition Specialist', 4, 4, 55000),
(5020, 'Aarav Nair', 'M', 32, '2018-03-05', 'Software Engineer', 1, 1, 90000),
(5021, 'Advik Kapoor', 'M', 26, '2018-05-20', 'Finance Analyst', 7, 3, 85000),
(5022, 'Aadhya Iyengar', 'F', 28, '2018-07-10', 'HR Specialist', 4, 4, 60000),
(5023, 'Anika Paul', 'F', 30, '2018-09-20', 'Public Relations Specialist', 2, 2, 70000),
(5024, 'Aryan Shetty', 'M', 27, '2018-11-05', 'Product Manager', 5, 1, 95000),
(5025, 'Avni Iyengar', 'F', 31, '2019-01-20', 'Data Scientist', 3, 4, 100000),
(5026, 'Vivaan Singh', 'M', 29, '2019-03-10', 'Business Analyst', 3, 2, 75000),
(5027, 'Ananya Paul', 'F', 32, '2019-05-20', 'Content Writer', 6, 3, 60000),
(5028, 'Anaya Kapoor', 'F', 26, '2019-07-05', 'Event Coordinator', 6, 1, 60000),
(5029, 'Arjun Kumar', 'M', 33, '2019-09-11', 'Quality Assurance Analyst', 12, 2, 80000),
(5030, 'Sara Iyer', 'F', 28, '2019-11-20', 'Project Manager', 5, 1, 90000);
 ---distinct salaries--
Select Distinct salary from employee;
--AS--
Select Age as employee_age from employee;
Select salary as employee_salary From employee;
salary greater than ₹50000 and hired before
Select* from employee where salary >50000;
Select* from employee where hire_date < '2016-01-01';
Select* from employee where designation IS NULL;
UPDATE EMPLOYEE SET DESIGNATION = 'data scentist' where employee_id = '5004';
//----ORDER by---
SELECT * FROM EMPLOYEE ORDER BY department_id;
SELECT * FROM EMPLOYEE  ORDER BY salary desc;
---LIMIT---
SELECT *
FROM EMPLOYEE
WHERE hire_date >= '2018-01-01'
  AND hire_date < '2019-01-01'
ORDER BY hire_date
LIMIT 5;
--Aggregate---
Select sum(salary) as total_salary From employee where department_id = 7;
-Minimum----
Select Min(age) as age_employee From employee;
----maximum salary for each location----
SELECT Location_id, MAX(salary) AS max_sal
FROM employee
GROUP BY Location_id;
----Average salary for each designation containing the word 'Analyst'---
Select designation, avg(salary) as avg_sal_designation
From employee
Where designation like '%analyst%'
Group by designation;
--- departments with less than 3 employees---
Select department_id, count(*) as department_count 
From employee
Group by department_id
Having count(*) <3;
---Inner Joint---
Select e.employee_name,e.designation, d.department_name
From employee as e
Inner join departments as d on e.department_id = d.department_id;
----List all departments along with the total number of employees in each department, including departments with no employees--
Select e.employee_name, d.department_name
From departments as d
left join employee as e on e.department_id = d.department_id;
Select d.department_name,
count(e.employee_id) as employee_count
From departments as d
left join employee as e on e.department_id = d.department_id
GROUP BY d.department_id, d.department_name;
Select l.Location_name, e.employee_name
From locations as l
Right join employee as e on e. location_id = l.location_id;
delete from departments
where department_id = 66;
INSERT INTO employee (employee_id, employee_name, gender, age, hire_date, designation, department_id, location_id, salary) VALUES
(5033, 'Manoj2', 'M', 34,'2018-11-05', 'Product Manager', 5, null, 1000)
SELECT *
FROM employee
WHERE employee_id = '5032';
DELETE FROM employee
WHERE employee_id = '5032';
