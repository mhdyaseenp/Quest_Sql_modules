 -- TCL-(Transaction control language) (start transaction or begin , rollback ,release ) 
 
create database bank_db;

use bank_db;

create table accounts(
			account_no int primary key,
            customer_name varchar(50),
            balance decimal(10,2));

insert into accounts values (1001,'Rahul',50000),
							(1002,'Anjali',46000),
                            (1003,'Jasil',60000),
                            (1004,'Yaseen',5000),
                            (1005,'Shakir',85000);
                            

select * from accounts;


-- begin;
start transaction;   							-- we can use bot start transaction;  and  begin;

 
update accounts set balance = balance +20000 where account_no =1004;

select * from accounts;

commit;



begin;

update accounts set balance = balance +5000 where account_no =1004;
select * from accounts;

rollback;																		-- transaction ends here


begin;

insert into accounts values(1006,'Niysa',30000);
savepoint bonus;

insert into accounts values(1007,'Richu',10000);
savepoint bonus1;

insert into accounts values(1008,'Najad',7500);


 select * from accounts;
 
rollback to bonus;														-- when we give like this this transaction not end

rollback to bonus1;	

release savepoint bonus;											-- remove savepoint





commit 				;												-- then transaction closed











-- ------------------------------------------------------------

drop table accounts;

-- SQL Constrains
-- unique,not null,check,

create table accounts(
			account_no int not null unique,
            customer_name varchar(50) not null,
            balance decimal(10,2) not null);
		
 insert into accounts value(2000,'yaseeen',20000);           
            
 insert into accounts value(2000,'jasil',20300);           
            
 
 insert into accounts value(null,'shaal',20300);            
            
            
            
            