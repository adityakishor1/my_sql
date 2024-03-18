select*
from transection right join customers
on transection.customer_id=customers.customer_id;