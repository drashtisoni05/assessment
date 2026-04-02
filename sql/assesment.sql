create database test_db;
use test_db;

Create table Workers(
Work_Id int primary key not null,
First_Name varchar(20) not null,
Last_Name varchar(20) not null,
Salary int not null,
Joining_Date date not null,
Department varchar(20)not null );

insert into workers values
(1,'Monika','Arora',100000,'2014-02-20','HR'),
(2,'Niharika','Verma',80000,'2014-06-11','Admin'),
(3,'Vishal','Singhal',300000,'2014-02-20','HR'),
(4,'Amitabh','Singh',500000,'2014-02-20','Admin'),
(5,'Vivek','Bhati',500000,'2014-06-11','Admin'),
(6,'Vipul','Diwan',200000,'2014-06-11','Account'),
(7,'Satish','Kumar',75000,'2014-01-20','Account'),
(8,'Geetika','Chauhan',90000,'2014-04-11','Account');

Select * from Workers;

Select * from Workers 
order by First_Name,Department Desc;

Select * from Workers Where First_Name IN('Vipul','Satish');

Select * from Workers Where First_Name Like '%h' And length(First_Name)=6;

SELECT FIRST_NAME, LAST_NAME, COUNT(*)
FROM Workers
GROUP BY FIRST_NAME, LAST_NAME
HAVING COUNT(*) > 1;

SELECT * FROM Workers limit 6; 

SELECT DEPARTMENT, COUNT(*) AS total_people
FROM Workers
GROUP BY DEPARTMENT
HAVING COUNT(*) < 5;

SELECT DEPARTMENT, COUNT(*) AS total_people
FROM Workers
GROUP BY DEPARTMENT;

SELECT DEPARTMENT, MAX(SALARY) AS highest_salary
FROM Workers
GROUP BY DEPARTMENT;

CREATE TABLE student (
    StdID INT PRIMARY KEY,
    StdName VARCHAR(50),
    Sex VARCHAR(10),
    Percentage DECIMAL(5,2),
    Class INT,
    Sec VARCHAR(10),
    Stream VARCHAR(20),
    DOB DATE
);

Insert Into student values
(1001,'Surekha Joshi','Female',82,12,'A','Science','1998-03-08'),
(1002,'Mahi Agrawal','Female',56,11,'C','Commerce','2008-11-23'),
(1003,'Sanam Verma','Male',59,11,'C','Commerce','2006-06-29'),
(1004,'Ronit Kumar','Male',63,11,'C','Commerce','1997-11-05'),
(1005,'Dipesh Pulkit','Male',78,11,'B','Science','2009-09-14'),
(1006,'Jahanvi Puri','Female',60,11,'B','Commerce','2008-07-11'),
(1007,'Sanam Kumar','Male',23,12,'F','Commerce','1998-03-08'),
(1008,'Sahil Saras','Male',56,11,'C','Commerce','2008-07-11'),
(1009,'Akshara Agrawal','Female',72,12,'B','Commerce','1996-01-10'),
(1010,'Stuti Mishra','Female',39,11,'F','Science','2008-11-23'),
(1011,'Harsh Agrawal','Male',42,11,'C','Science','1998-03-08'),
(1012,'Nikunj Agrawal','Male',49,12,'C','Commerce','1998-06-28'),
(1013,'Akriti Saxena','Female',89,12,'A','Science','2008-11-23'),
(1014,'Tani Rastogi','Female',82,12,'A','Science','2008-11-23');

Select * from Student;

Select stdname,dob from student;

Select * from student Where Percentage >=80;

Select StdName,stream,percentage from student where percentage > 80;

Select * from Student Where Stream = 'Science' And Percentage > 75;
