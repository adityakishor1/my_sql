insert into transection(amount, customer_id)
values(1.00, NULL);
select *from transection;
insert customers(first_name,last_name)
values("papp","ksdd");
select *
from transection inner join customers
on transection.customer_id=customers.customer_id;