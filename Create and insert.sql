use sql_workbench;
create table employee(
employee_id int,
first_name varchar(50),
last_name varchar(20),
hourly_pay decimal(5, 2),
hire_date date
);
select * from employee;
rename table employee to employees
alter table employees
add phone_number varchar(25);
select * from employees;

insert into employees 
values(1, "aditya","kishor",25.80,"2024-02-02", 1252655);
select * from employees;