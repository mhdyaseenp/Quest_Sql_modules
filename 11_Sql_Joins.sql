use college;

drop table departments;
drop table employ;


create table departments( department_id int primary key,
						department_name varchar(50));

insert into departments values
			(101,'HR'),
            (102,'Financr'),
            (103,'IT'),
            (104,'Sales');
            
create table employ(
			employee_id int primary key,
            employee_name varchar(40),
            department_id int,        
            salary decimal(10,2));
            
insert into employ values
				(1,'Rahul',101,45000),
                (2,'Anu',102,55000),
                (3,'John',103,60000),
                (4,'Sara',104,52000),
                (5,'David',null,48000);
                
                
select * from employ 
		inner join departments on employ.department_id = departments.department_id  ;            
                


select employee_name ,department_name from employ 
		inner join departments on employ.department_id = departments.department_id   ;            
                



select employee_name ,department_name ,salary from employ e
		left join departments d on e.department_id = d.department_id   ;            
                



select employee_name ,department_name ,salary from employ e
		right join departments d on e.department_id = d.department_id   ;            
                





                