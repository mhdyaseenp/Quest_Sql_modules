-- DML commands (insert,update,delet)

create database college;
use college;


create table employee(em_id int,
					e_name varchar(50),
                    department varchar(30),
                    salary decimal(10,2),
                    age int,
                    city varchar(40));
				
select * from employee;
 
insert into employee values(201,'Yaseen','IT',200000.00,22,'Areecode'),
							(202,'Jasil','Python',33000.00,23,'Adivaram'),
                            (203,'Niyas','Java',44000.00,26,'Wayanad'),
                            (204,'Shakir','Python',23000.00,22,'Pyyoli'),
                            (205,'Najad','Java',13400.00,22,'Puthiyappa');
                            
-- Insert                            
                            
-- to copy an table datas into another table                             
create table employee_backup as select*from employee ;									
select*from employee_backup;


-- to copy the skelton of the table into another table                             
create table employee_backup_2 as select*from employee where 1=0; 						
select*from employee_backup_2;


-- to add the details of department(Python) intp new table						
insert into employee_backup_2 select*from employee where department='Python'; 			



-- Update
update employee_backup set city='Calicut';													-- to update the city into callicut 

update employee_backup set city='Calicut' where em_id=202 ;				
select*from employee_backup;


-- to off safe update mode
set sql_safe_updates =0;


update employee_backup set salary =salary+5000 where department ='Java';				-- to incriment the salary of emp who work under department Java

update employee_backup set salary =salary-500 where department ='it';					-- salary decrement

select*from employee_backup;


update employee_backup set salary =salary+500 ,e_name ="Shabin" where department ='it';



-- Delete


select*from employee_backup;

delete from employee_backup where em_id=201;					

delete from employee_backup where department='python';					-- to delete the department='python';			


delete from employee_backup;											-- to delete all, remains the skelton



-- -------------------------------

insert into employee_backup values(201,'Yaseen','IT',200000.00,22,'Areecode'),
							(202,'Jasil','Python',33000.00,23,'Adivaram'),
                            (203,'Niyas','Java',44000.00,26,'Wayanad'),
                            (204,'Shakir','Python',23000.00,22,'Pyyoli'),
                            (205,'Najad','Java',13400.00,22,'Puthiyappa');
                            
select*from employee_backup;						

-- Limit And offset

select * from employee_backup where em_id between 203 and 205;			  -- 

select * from employee_backup limit 10;									   --  to get first 10 data to diplay

select * from employee_backup limit 10 offset 7; 							-- to get first 10 data to diplay after the skiping first 7


select * from employee_backup limit 4,3;									-- skip 4 rows and return next 3 














