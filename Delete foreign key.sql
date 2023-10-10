use sql_workbench;
create table transactions(
transaction_is int primary key auto_increment,
amount decimal(5,2),
customer_id int,
foreign key(customer_id) references customers( customer_id)
);
select*from transactions;
alter table transactions
drop foreign key transactions_ibfk_1;