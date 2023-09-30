create database sql_workbench;


use sql_workbench;
#student table
create table students
(stu_id int primary key,
stu_name varchar(25),
age int, gender char(1),
 doa date, city varchar(20));

insert into students values
(101, "joseph", 22, "M", "2016-11-23", "pune");

select *  from students;
select stu_name,age,city from students

insert into students values
(102,"asss",23,"M","2022-02-02","pune"),
(103,"aditi",22,"F","2022-03-20","mumbai"),
(122,"kishor",19,"M","2004-03-30", "bihar");
select * from students;
select stu_id,stu_name,age,doa,city from studentsstu_id
delete table students;