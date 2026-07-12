create database company;
use company;

create table employee (id int, name varchar(50), age int);

select * from company;

show tables;

insert into employee values(101, "Jasil", 21),(102, "Arshad", 24),(103, "Rajin", 20);
select * from employee;

alter table employee add email varchar(50) first;                  -- add email column first

-- Create new column specific position
alter table employee add phone varchar(50) after name;            --  add phone column after name


-- Create new column and set default value
alter table employee add department varchar(50) default "IT";

-- Delete a column
alter table employee drop column email;


-- Rename Table Name
alter table employee rename to staff;
select * from staff;