SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department
HAVING total_salary > 50000;