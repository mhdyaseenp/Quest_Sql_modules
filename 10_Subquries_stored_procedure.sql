-- SQL Subquries

-- in nsted qures first inner query will exicute


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


-- details of eployyes whos salary grater than avg salary
select * from employees where salary > (select avg (salary) from employees);


-- find employee with highest salary
select * from employees where salary = (select max(salary) from employees );


-- find employee who earn more than rahul
select * from employees where salary <(select salary from employees where emp_name='Rahul Sharma' );


-- find employee working in the same city as priya nair
select * from employees where city =(select city from employees where emp_name='Priya Nair' );


-- find employee 
select * from employees where city = 'Kochi' and salary > (select avg(salary) from employees ) ;


-- 
select * from employees where department in (select department from employees where salary>80000);

select department from employees where salary>80000;




-- find emp whoes department same as sneha
select * from employees where department in (select department from employees where emp_name='Sneha Das');








-- Stored Procedure
-- ------------------------------------------

set @result=20;

select @result ;
select @result as Results;


set @counts=(select count(*) from employees);
select @counts;

select count(*) into @counts1 from employees;
select @counts1;



select max(salary) into @max_sal from employees;
select @max_sal;





   -- ________________
-- -- Stored Procedure --
	-- -------------

delimiter //
create procedure show3_employees() 
begin
	select * from employees;
end //
delimiter ;

call show3_employees();



-- get it employees details
delimiter //
create procedure show2_employees() 
begin
	select * from employees where department='it';
end //
delimiter ;

call show2_employees();













delimiter //
create procedure count_procedure(out total int) 
begin
	select count(*) from employees;
end //
delimiter ;

call count_procedure(@count);
select @count;



delimiter //
create procedure dep_details(in dep varchar (70)) 
begin
	select *  from employees where department=dep;
end //
delimiter ;

call dep_details('it');
call dep_details('hr');


-- to add two numbers
delimiter //
create procedure add_prced(in num1 int ,in num2 int)
begin
	select num1+num2 as sum;
end //
delimiter ;

call add_prced(10,20);

delimiter //
create procedure sqr_prced(inout num int)
begin
	select pow(num,2) as Powers;
end //
delimiter ;

set @value= 20;
call sqr_prced(@value);													-- 400


select @value;
























