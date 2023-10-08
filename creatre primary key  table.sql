use sql_workbench;
create table transactions(
transaction_id int primary key,
amount decimal(5,2)
);
select*from transactions;