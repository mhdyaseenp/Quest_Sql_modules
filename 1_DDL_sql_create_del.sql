create database Quest;
use Quest;

show tables;

create table student(id int ,stname varchar(50),address text);

select * from student;


insert into student(id,stname,address) values(101,"yaseen","Malappuram");           -- add one row  and also duplication allowed

insert into student values(102,"Jasil","Adivaram"); 								-- we can alsos add rows like this ,in this case we mist give 3 itams

insert into student(id) values(103);    											--  we can also add one value only		


select id from student;																-- to show what we want in a table eg one coloumn only 

select id,stname from student;																

select *from student where id=102;

insert into student values(104,"shakir","Payyoli"),(105,"Niyas","Wayanad"),(106,"Razin","Omesheri");

select * from student;


truncate student; 														-- it remove entire rows from a table ,it only show the skelten of the table


drop table student;														-- drop is used to delete entire data (table , databse)

show tables;

drop database Quest;


-- ALTER

alter table student add salery decimal(10,2);						-- add a new column salary (add)

alter table student modify stname varchar(200);						-- data type chage using (modify)

select * from student;

alter table student rename column s_id to ss_id;					-- column name changing 








