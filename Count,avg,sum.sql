-- Total Revenue Calculation:

SELECT SUM(total_amount) AS total_revenue
FROM Orders;

-- Average Order Value:
SELECT AVG(total_amount) AS average_order_value
FROM Orders;

-- Order Count by Customer:
SELECT customer_id, COUNT(order_id) AS order_count
FROM Orders
GROUP BY customer_id;

-- Average Quantity Sold per Product:
SELECT product_id, AVG(quantity) AS avg_quantity_sold
FROM Order_Items
GROUP BY product_id;

-- Total Revenue by Product Category:
SELECT p.category, SUM(o.total_amount) AS total_revenue
FROM Orders o
JOIN Order_Items oi ON o.order_id = oi.order_id
JOIN Products p ON oi.product_id = p.product_id
GROUP BY p.category;

-- Customer Orders Above a Certain Amount:
SELECT customer_id, COUNT(order_id) AS high_value_orders
FROM Orders
WHERE total_amount > 1000
GROUP BY customer_id;

