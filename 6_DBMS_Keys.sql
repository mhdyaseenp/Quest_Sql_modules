use college;

create table students (id int primary key,
					s_name varchar(50) not null,
                    email varchar(100)not null unique,
                    address text not null,
                    phone bigint );
                    
select * from students;

insert into students(id,s_name, email,address,phone) values(202,'Yaseen','yaseen12@gamail.com','Areecode',9223798770);

-- primary key


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

-- to remove primary key 
alter table students drop primary key;

-- to show the definaton of the table 
desc students;
describe students;												-- both are same


-- -------------------------------------------------------------------------------------------------



-- foregn key

create table student (
id int not null unique auto_increment ,
d_id int,
s_name char(50) not null ,
email char(60) not null unique ,
addres text not null ,
phone bigint not null ,

foreign key (d_id) 
references departmets (departmet_id) 
on update cascade
on delete cascade
) ;

drop table student ;

create table departmets (
departmet_id int primary key ,
departmet_name varchar (50)
) ;

drop table departmets ;

select * from student ;
select * from departmets ;

insert into student values (20006 , 2 , "shabin" , "shabin@gmail.com" , "shabin home" , 9876543210 ) ;
insert into student (d_id , s_name , email , addres ,phone) values ( 1, "richu" , "richu@gmail.com" , "richu home" , 9876543550 ) ;
insert into student (d_id , s_name , email , addres ,phone) values 
( 3, "shahal" , "shaha@gmail.com" , "shaha home" , 9876853550 ),
( 2, "najad" , "najad@gmail.com" , "najad home" , 9876588550 ),
( 1, "aju" , "aju@gmail.com" , "aju home" , 9556543550 ),
( 2, "fasil" , "fasil@gmail.com" , "fasil home" , 9876543550 )
 ;
 

insert into departmets value (1,"hr"),(2,"it"),(3,"finance");

update departmets set departmet_id = 101
where departmet_id = 1 ;

delete from departmets where departmet_id = 2 ;

show create table student ;



alter table student drop foreign key student_ibfk_1 ;

-- -------------------------------------------------------------------------------------------------
























