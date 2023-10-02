use sql_workbench;
rename table employees to employee;
alter table employee
add phone_no varchar(25);
select*from employee

alter table employee
modify column phone_no varchar(20);
