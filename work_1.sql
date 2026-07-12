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





-- DML
-- Increase the salary of all IT employees by 10%.
-- Reduce the salary of Sales employees by 5%.
-- Update the city to Calicut for employees whose experience is greater than 5 years.
-- Change the designation to Senior Developer for all Developers earning more than ₹60,000.
-- Delete employees who joined before 2019-01-01.
-- Delete employees from the HR department whose experience is less than 3 years.
-- Increase the experience by 1 year for employees who joined before 2022.



