select * from employee;
alter table employee
add constraint chk_hourly_pay check(hourly_pay >= 00);
select*from employee;