 CREATE DATABASE employeesdb;  
 use employeesdb;
 show databases;
 CREATE TABLE Employee_details (
    EmpID int,
    EmpName varchar(255),
    position varchar(255),
    Address varchar(255),
    City varchar(255)
);

alter table Employee_details
add ContectNo int;
select*from Employee_details;
