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



select abs(-350) ;						-- 350

select emp_name ,salary,abs(salary-60000) as salary_diffrence from employees;


select ceil(33.4);								-- 34

select floor(32.3);								-- 32

select round(32.6);								-- 33

select round(33.2376,2);						-- 33.24

select truncate(36.3567,2);						-- 36.35

select rand();									-- get a random number in between 0-1.  eg:-(0.6458734075034721)
select * from employees order by rand() limit 2;


select pow(2,3);								-- 8

select sqrt(36);								-- 6

select greatest(24,55,74);						-- 74
select emp_name ,salary,greatest(salary,60000)as greates from employees;



select least(34,30,33);
select emp_name ,salary,least(salary,60000)as greates from employees;


select mod(25,6);                  				-- 1


-- STRING Functions
-- --------------------------

select ascii('A');								-- 65

select char('65');								-- blob 

select character_length('yaseen');				-- 6 (spaces also included)
select emp_name ,character_length(emp_name) as total_length from employees;

select emp_name ,upper(emp_name) as Apper_case from employees;

select emp_name ,lower(emp_name) as Lower_case from employees;

select emp_name ,left(emp_name,5) as first_five from employees;   -- to get the 5 charecter from left

select emp_name ,right(emp_name,5) as last_five from employees;  


select emp_name ,locate('a',emp_name) as position from employees;			   -- to get the Position of substring
select emp_name ,position('a' in emp_name) as position from employees;			-- to get the Position of substring syntax :-(substring in emp_name)

select replace('yaseen','e','ê');
select emp_name ,replace(emp_name,'a','@') as modi_name from employees;			

select reverse('yaseen');														-- neesay
select emp_name ,reverse(emp_name) as revesed from employees;			


select concat(emp_name ,' - ',department)as emp_info from employees;
select concat(emp_name ,' - ',department,"Quest")as emp_info from employees;

select concat_ws(' ✅ ',emp_name,department,"Quest",city)as emp_info from employees;    -- Join with separator

select trim('   yaseen    ')as trim_spaces;												-- Remove spaces
select ltrim('   jasil    ')as trim_spaces;												-- Remove left spaces
select rtrim('   shakir    ')as trim_spaces;											-- Remove right spaces





-- DATE Functions
-- --------------------------


select date_format(joining_date,'%d / %m /%y') from employees;						-- 10 / 05 /22
select date_format(joining_date,'%y/%m/%d') from employees; 						-- 22/05/10

select current_time();																-- 12:21:03
select current_date();																-- 2026-07-15
select current_timestamp();															-- 2026-07-15 12:27:51


select dayofyear('2026-07-15');														-- 206











