use sql_workbench;
rename table employees to employee;
alter table employee
modify phone_no varchar(20)
after last_name;
select*from employee

