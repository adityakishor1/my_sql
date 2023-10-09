use sql_workbench;
create table transactions(
transaction_id int primary key auto_increment,
amount decimal(5,2)
);
select *from transactions;
insert into transactions (amount)
values(3.99); 

