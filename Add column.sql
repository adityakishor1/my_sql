use sql_workbench;
alter table employee
add column job varchar(25) AFTER hourly_pay;
select*from employee;