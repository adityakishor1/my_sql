/* Q10. Create following columns from order_dim data -

order_date
Order day
Order month
Order year */
 
 select order_date, 
 substr(order_date,1,2) as order_day,
 substr(order_date,4,2) as order_month,
 substr(order_date,7) as order_year
 from orders
 where order_type="buy";