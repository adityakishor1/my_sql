alter table transactions
auto_increment=1000;
insert into transactions(amount, customer_id)
values(4.99,3),
(2.89,2),
(3.38,3),
(4.99,1);

delete from customers
where customer_id=3;
select*from transactions