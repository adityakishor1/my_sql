select transection_id, amount,first_name,last_name
from transection inner join customers
on transections.customer_id=customers.customer_id;