drop database company;
create database company;
use company;

CREATE TABLE Employee (
    id INT PRIMARY KEY,
    ename VARCHAR(10),
    elocation VARCHAR(50),
    edepartment VARCHAR(30)
);

INSERT INTO Employee (id, ename, elocation, edepartment) VALUES 
(1, 'AB', 'Mumbai', 'Information Technology'),
(2, 'CD', 'Pune', 'Computer Science'),
(3, 'EF', 'Nashik', 'Data Science'),
(4, 'GH', 'Kolkata', 'Artificial Intelligence'),
(5, 'IJ', 'Goa', 'Machine Learning'),
(6, 'KL', 'Delhi', 'Big Data'),
(7, 'MN', 'Kerala', 'Full Stack'),
(8, 'OP', 'Bangalore', 'Software Development'),
(9, 'QR', 'Punjab', 'Cloud Computing'),
(10, 'ST', 'Gujarat', 'Web Services');

SELECT * FROM Employee;

CREATE TABLE Admin (
    id INT PRIMARY KEY,
    aDepartment VARCHAR(20),
    aEMP_Salary INT
);

INSERT INTO Admin (id, aDepartment, aEMP_Salary) VALUES
(16, 'Logistics', 55000),
(17, 'Quality Assurance', -75000),
(18, 'Operations', 80000),
(19, 'Legal', -60000),
(20, 'Public Relations', 35000),
(21, 'Customer Support', 45000),
(22, 'Facilities', 60000),
(23, 'R&D', -70000),
(24, 'Training', 30000),
(25, 'Security', 65000);

-- Display the updated Admin table
SELECT * FROM Admin;


-- adding experience column instead of joining column
alter table Employee add eExperience int;

-- fetching record using a different ID condition
select * from Admin where id = 20;

-- getting salary data within a different range
select * from Admin where aEMP_Salary >= 25000 and aEMP_Salary <=75000;

-- getting data from department starting with letter 'b'
select * from Employee where edepartment like 'b%';

-- getting data from department whose second last letter is 's'
select * from Employee where edepartment like '%s_';

-- getting salary details in ascending order using order by
select * from Admin order by aEMP_Salary;

-- getting salary details in descending order using order by
select * from Admin order by aEMP_Salary desc;

-- getting sum of total salary
select sum(aEMP_Salary) from Admin;

-- getting current system date
select current_date();

-- getting month from a different date
select month('2023-11-15');

-- getting current date and time using now()
select now();

-- performing inner join using different columns
select * from Employee as E inner join Admin as A on E.id = A.id;

-- getting the highest salary amount
select max(aEMP_Salary) from Admin;

-- getting the average of total salary with different syntax
select avg(aEMP_Salary) from Admin;

-- updating name to 'AB' instead of 'XY'
update Employee set ename = 'AB' where id=10 ;

-- making all letters lowercase instead of uppercase
select lower(elocation) from Employee;

-- getting the total count of characters in edepartment
select character_length(edepartment) from Employee;

-- getting the square root of salary instead of power
select sqrt(aEMP_Salary) from Admin;

-- getting the rounded value of 5.66
select round(5.66);

-- dropping a different table
drop table if exists Personnel;

-- dropping a different database
drop database corporation;
