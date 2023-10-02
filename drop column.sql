use sql_workbench;
rename table employees to employee;
alter table employee
drop column hire_date;
select*from employee

