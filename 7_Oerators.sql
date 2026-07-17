-- Opereators in DBMS

use college;

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


-- 1.arithmatics



-- 2.Comparision alter



-- 3.Logical 

select * from employees where department = 'IT' or salary >50000;

select * from employees where department = 'IT' and salary >50000;

-- to get the details of employee whoes places are at kochi and chennai
select * from employees where city = 'Chennai' or city ='Kochi';

-- 
select * from employees where (department = 'HR' or department ='IT') and salary >60000;


select * from employees where not (department = 'HR') ;





-- 4.Special Operators 

-- in,between,like,any,all

select * from employees where city in ('Kochi','mumbai');

-- to get details of employees whoes department it,hr,sales
select * from employees where department in ('it','hr','sales');

-- to get details of employees whoes salery in between 60000 and 80000 
select * from employees where salary between 60000 and 80000;

select * from employees where emp_name between 'a' and 'j';

-- like 
select * from employees where department like 'sales';



-- ----------------------------------


-- whild cards %(percentage) and _ (undersore)
-- % - Represents zero, one, or many characters
-- -- Represents exactly one character

-- get the details of employee whoes name start with a
select * from employees where emp_name like 'a%';

-- stat or in between a 
select * from employees where emp_name like '%a%';

-- after a only 3 leters (bcz we use 3 undersore)
select * from employees where emp_name like 'a___';


-- to get asha thomas in our table
select * from employees where emp_name like 'a___ t%';






