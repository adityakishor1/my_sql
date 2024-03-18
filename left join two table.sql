select *
from transection left join customers
on transection.customer_id=customers.customer_id;