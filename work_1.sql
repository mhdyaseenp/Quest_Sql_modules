create database work_db;
use work_db;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_name VARCHAR(100),
    department VARCHAR(50),
    designation VARCHAR(50),
    gender VARCHAR(10),
    salary DECIMAL(10,2),
    city VARCHAR(50),
    joining_date DATE,
    experience INT
);

INSERT INTO employees (emp_name, department, designation, gender, salary, city, joining_date, experience) VALUES
					('Rahul Sharma','IT','Developer','Male',55000,'Delhi','2022-05-10',3),
					('Priya Nair','HR','HR Executive','Female',42000,'Kochi','2021-02-15',5),
					('Amit Kumar','Finance','Accountant','Male',47000,'Mumbai','2020-08-20',6),
					('Sneha Das','IT','Developer','Female',62000,'Bangalore','2019-06-12',7),
					('Arjun Menon','Sales','Sales Executive','Male',39000,'Kochi','2023-01-18',2),
					('Anjali Roy','Marketing','Marketing Executive','Female',48000,'Chennai','2021-09-05',4),
					('Vivek Singh','IT','Tester','Male',51000,'Hyderabad','2022-07-09',3),
					('Meera Joseph','HR','HR Manager','Female',68000,'Kochi','2018-03-21',8),
					('Rohit Verma','Finance','Manager','Male',85000,'Delhi','2017-11-11',10),
					('Neha Kapoor','Sales','Sales Manager','Female',73000,'Mumbai','2019-04-17',7),
					('Kiran Kumar','IT','Developer','Male',59000,'Bangalore','2020-01-30',5),
					('Divya Pillai','Marketing','Designer','Female',46000,'Kochi','2022-10-14',2),
					('Sanjay Rao','IT','Team Lead','Male',92000,'Hyderabad','2016-08-08',11),
					('Asha Thomas','Finance','Accountant','Female',52000,'Chennai','2021-12-25',4),
					('Nikhil Raj','Sales','Sales Executive','Male',41000,'Kochi','2023-03-10',1);
                    

select * from employees;

-- DDL Questions
-- 1.Create a table named projects with appropriate columns and constraints.
create table projects(prj_name varchar(50),
						description varchar(500),
                        start_date date,
                        end_date date
                        );

insert into projects  (prj_name, description, start_date, end_date) VALUES
							('E-Commerce Website','Online shopping platform.','2026-06-15','2026-10-15'),
							('Student Management System','Manages student records and attendance.','2026-07-10','2026-11-30'),
                            ('Hospital Management System','Manages patient records and appointments.','2026-08-01','2026-12-20');             
select * from projects;


-- 2.Add a new column phone_number after the emp_name column.

alter table employees add phone_number int after emp_name;
select * from employees;


-- 3.Rename the column experience to years_of_experience.

alter table employees rename column experience to years_of_experience;
select * from employees;


-- 4.Modify the salary column so that it cannot contain NULL values.
alter table employees modify column salary int not null;
select * from employees;

-- 5.Add a CHECK constraint so salary must be greater than 20000.
alter table employees add constraint ck_salary check (salary >20000);


-- 6.Drop the phone_number column.
alter table employees drop column phone_number;
select * from employees;

-- 7.Rename the table employees to company_employees.

alter table employees rename to company_employees;
select * from company_employees;


drop table company_employees;
set sql_safe_updates =0;






-- chenged the table to how they show in the above
-- DML

-- --------------------------------------
-- Increase the salary of all IT employees by 10%.
select *,salary * 1.10 as increase_salary from employees where department ='it';

-- Reduce the salary of Sales employees by 5%.
select *,salary * .95 as decrese_salary from employees where department ='sales';

-- Update the city to Calicut for employees whose experience is greater than 5 years.
update employees set city='Calicut' where experience>5;

UPDATE employees SET city = 'Calicut' WHERE experience > 5;
select*from employees;

-- Change the designation to Senior Developer for all Developers earning more than ₹60,000.
UPDATE employees SET designation = 'Senior Developer' WHERE salary > 60000;
select * from employees;

-- Delete employees who joined before 2019-01-01.
delete from employees where joining_date < '2019-01-01';
select * from employees;

-- Delete employees from the HR department whose experience is less than 3 years.
delete from employees where department='hr' and experience <3;
select * from employees;

-- Increase the experience by 1 year for employees who joined before 2022.
update employees set experience= experience + 1 where joining_date < '2022-01-01';
select *,experience + 1 as updated_experience from employees where joining_date < '2022-01-01';
select * from employees;



drop table employees;
set sql_safe_updates =0;





-- chenged the table to how they show in the above
-- DQL + Operators
-- ------------------------------------


-- Display employees earning between ₹45,000 and ₹70,000 who belong to the IT department.
select * from employees where salary between 45000 and 70000 and department ='it';


-- Display employees from Kochi or Bangalore whose salary is above ₹50,000.
select * from employees where (city= 'Kochi' or city= 'Bangalore') and salary>50000;


-- Display female employees whose experience is greater than 4 years.
select * from employees where gender='female' and experience>4;


-- Display employees who are not Developers.
select * from employees where designation <> 'developer';


-- Display employees whose salary is not between ₹40,000 and ₹60,000.
select * from employees where salary not between 40000 and 60000 ;


-- Display employees from Delhi, Mumbai, or Kochi.
select * from employees where city= 'Mumbai' or  city= 'Kochi' ;


-- Display employees whose experience is exactly 2, 4, or 6 years.
select * from employees where experience=2 or
							  experience=4 or
                              experience=6 ;


-- Display employees who joined after 2021-01-01 and whose salary is less than ₹60,000.
select * from employees where joining_date>'2021-01-01';


-- Display employees whose department is not IT and salary is greater than ₹50,000.
select * from employees where department <> 'it' and salary>50000;


-- Display employees whose salary is greater than ₹50,000 but less than ₹80,000.
select * from employees where salary between 50000 and 80000 ;





-- Wildcards--
-- ------------------------------------------


-- 1. Find employees whose names start with M and end with h.
select * from employees where emp_name like 'm%h';


-- 2. Find employees whose names contain ra anywhere.
select * from employees where emp_name like '%ra%';


-- 3. Find employees whose names have exactly 6 characters.
select * from employees where emp_name like '__________';


-- 4. Find employees whose second letter is n.
select * from employees where emp_name like '_n%';


-- 5. Find employees whose city starts with C.
select * from employees where city like 'c%';


-- 6. Find employees whose department ends with s.
select * from employees where department like '%s';


-- 7. Find employees whose designation contains the word Manager.
select * from employees where designation like '%Manager%';


-- 8. Find employees whose names do not start with R.
select * from employees where emp_name not like 'R%';


-- 9. Find employees whose names contain at least two occurrences of the letter a.
select * from employees where emp_name  like '%a%a%';


-- 10. Find employees whose names end with a and whose salary is above ₹50,000.
select * from employees where emp_name  like '%a' and salary >50000;








-- Combined Questions (Good Practice)
-- Display all female employees from Kochi whose salary is above ₹45,000 and experience is more than 3 years.


-- Increase the salary by ₹3,000 for all employees from Bangalore working in the IT department.
-- Delete employees from Sales whose salary is less than ₹40,000.
-- Display employees whose names start with S or P and whose designation contains the word Executive.
-- Display employees from IT or Finance whose experience is between 3 and 7 years.
-- Update the city to Trivandrum for employees whose names start with A.
-- Display employees who joined between 2020-01-01 and 2022-12-31.
-- Display employees whose names contain ar but do not belong to the HR department.
-- Delete employees who have less than 2 years of experience and earn less than ₹40,000.
-- Display employees whose salary is greater than ₹50,000 and whose names contain the letter e.
-- Increase the salary by 5% for employees whose designation contains Manager.
-- Display employees whose city is neither Kochi nor Bangalore.
-- Display employees whose names start with A, P, or S and whose salary is greater than ₹45,000.
-- Update all female employees in the HR department to have the designation HR Specialist.
-- Delete employees whose names end with y and experience is less than 5 years.
-- Display all employees except those whose city starts with D.











