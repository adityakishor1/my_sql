use employeesdb;
create table customers(
customer_id int primary key auto_increment,
first_name varchar(55),
last_name varchar (55)
);
select*from customers;
delete from customers;
insert into customers(first_name, last_name)
values("Aditya", "Kishor"),
("Pappu", "Kumar"),
("Shubhanshu", "navadiya");
create  table transection(
transection_id int primary key auto_increment,
amount decimal(5,2),
customer_id int,
foreign key(customer_id) references customers(customer_id)
);

alter table transection
auto_increment=1000;
SET FOREIGN_KEY_CHECKS=0;
insert into transection(amount, customer_id)
values (4.99,3),
	   (5.99,2),
	  (3.56,5),
	 (4.99, 1);
select*from transection;
delete from customers
where customer_id=4;