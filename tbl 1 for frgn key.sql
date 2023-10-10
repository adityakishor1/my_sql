use sql_workbench;
create table customers(
customer_id int primary key auto_increment,
first_name varchar(50),
last_name varchar(50)
);
insert into customers(first_name, last_name)
values("fred","fist"),
("larry","lobster"),
("Bubble","bass");
select *from customers;

