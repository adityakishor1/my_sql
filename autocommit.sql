use sql_workbench;
set autocommit=off;
commit;
delete from employee;
select * from employee
rollback;   