-- SQL Student Database Project
-- Created by: Anjali Rawat
-- Purpose: Practice basic SQL operations for Data Analytics portfolio

create database anjali_da;
use anjali_da;
-- create a table 
create table student(
rollno int primary key,
name varchar(50),
gender varchar(10),
age int,
city varchar(50)
);

 -- insert data
 insert into student (rollno,name,gender,age,city) values
 (101,'anjali', 'F',21,'nainital'),
 (102,'rohan','M',24,'haldwani'),
 (103,'risha','F',22,'rudrapur'),
 (104,'rahul','M',25,'rampur');
 
 -- select to display the data 
 select* from student; -- * means everything
 select gender from student;
 select age from student;
 
 -- want to see only top two rows
 select*from student limit 2;
 
 -- select last two rows
 select*from student limit 2 offset 2;

 select * from student limit 2 offset 1;
