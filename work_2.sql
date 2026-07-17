-- SQL Lab Practice – Operators


USE work_db;

create table  employees2 (
        emp_id INT PRIMARY KEY,
        emp_name VARCHAR(100),
        department VARCHAR(50),
        designation VARCHAR(50),
        gender VARCHAR(10),
        age INT,
        salary DECIMAL(10,2),
        bonus DECIMAL(10,2),
        city VARCHAR(50),
        experience INT
    );

INSERT INTO employees VALUES
    (101,'Rahul','IT','Developer','Male',24,45000,5000,'Kochi',2),
    (102,'Anjali','HR','HR Executive','Female',29,38000,4000,'Kochi',5),
    (103,'Akhil','IT','Tester','Male',27,42000,3500,'Calicut',4),
    (104,'Neha','Finance','Accountant','Female',31,52000,6000,'Trivandrum',7),
    (105,'Arjun','Sales','Sales Executive','Male',26,36000,2500,'Kannur',3),
    (106,'Meera','IT','Developer','Female',30,68000,7000,'Kochi',8),
    (107,'Vishnu','Marketing','Marketing Executive','Male',28,41000,3000,'Thrissur',5),
    (108,'Sneha','Finance','Manager','Female',36,85000,12000,'Calicut',12),
    (109,'Nikhil','Sales','Manager','Male',39,90000,15000,'Kochi',15),
    (110,'Fathima','HR','Manager','Female',34,78000,9000,'Malappuram',10);

-- Lab Questions

-- Arithmetic Operators

-- 1.  Display employee name and salary + bonus as total income.


-- 2.  Display salary after adding ₹5000.
-- 3.  Display annual salary (salary × 12).
-- 4.  Display monthly salary after deducting ₹2000.
-- 5.  Display salary, bonus and total earnings.

-- Comparison Operators

-- 6.  Display employees whose salary > 50000.
-- 7.  Display employees whose salary < 40000.
-- 8.  Display employees whose experience >= 5.
-- 9.  Display employees whose age <= 30.
-- 10. Display employees whose department <> ‘IT’.
-- 11. Display employees whose city = ‘Kochi’.
-- 12. Display employees whose designation != ‘Manager’.

-- Logical Operators

-- 13. Display IT employees earning more than 50000.
-- 14. Display employees from Kochi OR Calicut.
-- 15. Display female employees with experience greater than 5.
-- 16. Display employees whose salary is greater than 40000 AND less than
--     70000.
-- 17. Display employees who are NOT from Kochi.
-- 18. Display managers working in HR OR Finance.
-- 19. Display employees whose age is above 25 AND salary below 50000.
-- 20. Display employees from IT AND experience greater than 3.

-- Special Operators

-- IN

-- 21. Display employees working in IT, HR and Finance.
-- 22. Display employees from Kochi, Calicut and Thrissur.

-- BETWEEN

-- 23. Display employees whose salary is between 40000 and 70000.
-- 24. Display employees whose experience is between 5 and 10 years.
-- 25. Display employees whose age is between 25 and 35.

-- LIKE

-- 26. Display employees whose name starts with ‘A’.
-- 27. Display employees whose name ends with ‘a’.
-- 28. Display employees whose name contains ‘h’.
-- 29. Display employees whose city starts with ‘K’.
-- 30. Display employees whose designation ends with ‘er’.

-- IS NULL / IS NOT NULL

-- 31. Update the bonus of one employee to NULL.
-- 32. Display employees whose bonus IS NULL.
-- 33. Display employees whose bonus IS NOT NULL.

-- Challenge Questions

-- 34. Display employees whose salary is between 40000 and 80000 AND
--     department is IT.
-- 35. Display female employees from Kochi OR Calicut.
-- 36. Display employees whose name starts with ‘N’ AND experience > 5.
-- 37. Display employees whose department is not Sales and salary >= 50000.
-- 38. Display employees whose city is not in (‘Kochi’,‘Calicut’).
-- 39. Display employees whose age is between 25 and 30 and gender is Male.
-- 40. Display employees whose designation contains the word ‘Manager’.