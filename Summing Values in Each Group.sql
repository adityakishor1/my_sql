SELECT column_name, SUM(some_value_column) AS total_value
FROM table_name
GROUP BY column_name;