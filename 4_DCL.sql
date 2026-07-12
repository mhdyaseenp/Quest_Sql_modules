-- DCL comands(Revoke,Grant)

-- syntax :-  create user 'username'@'localhost' identified by 'password';


-- create a new user
create user 'yaseen'@'localhost' identified by 'yaseen';

select user, host from mysql.user;


-- GRANT
-- selecting Privilagos
grant select
on college.employee
to 'yaseen'@'localhost';



grant all privileges
on college.employee
to 'yaseen'@'localhost';

show privileges;


-- REVOKE
revoke select on college.employee from 'yaseen'@'localhost';


show grants for 'yaseen'@'localhost';


-- change user name password
alter user 'yaseen'@'localhost' identified by 'yaseen123';


-- Rename User
rename user 'yaseen'@'localhost' to 'yas'@'localhost';



-- Delete user
drop user 'yaseen'@'localhost'




