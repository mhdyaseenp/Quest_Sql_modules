use college;

create table students (id int primary key,
					s_name varchar(50) not null,
                    email varchar(100)not null unique,
                    address text not null,
                    phone bigint );
                    
select * from students;

insert into students(id,s_name, email,address,phone) values(202,'Yaseen','yaseen12@gamail.com','Areecode',9223798770);

-- to set auto incriment on id
alter table students modify id int auto_increment;

insert into students(s_name, email,address,phone) values('Jasil','jasil233@gamail.com','Adivaram',99887665433);

drop table students;


-- to set primary key for 2 colums

create table students (id int ,
					s_name varchar(50) not null,
                    email varchar(100),
                    address text not null,
                    phone bigint ,
                    primary key(id ,email));
                    
insert into students(id,s_name, email,address,phone) values(202,'Yaseen','yaseen12@gamail.com','Areecode',9223798770);                    
                    
select * from students;

-- to show the definaton of the table 
desc students;
describe students;												-- both are same







