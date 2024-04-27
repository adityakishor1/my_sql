
SELECT DISTINCT c1.first_name,
                c1.last_name,
                c2.email,
                o.order_id,
                o.item
  FROM orders AS o
  LEFT JOIN customers AS c1
    ON o.customer_id = c1.customer_id
  LEFT JOIN contacts AS c2
    ON o.customer_id = c2.customer_id
 ORDER BY c1.last_name;