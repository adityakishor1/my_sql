a) For each department, find the highest paid person and their salary.

SELECT e.name, m.max_s
FROM employees e
JOIN(
SELECT dept, max(salary) as max_s
from employees
group by 1) m
ON e.salary = m.max_s
AND e.dept = m.dept

b) Find the 2nd highest salary in the company.

select max(salary) from employees
WHERE salary not in (
SELECT max(salary)
FROM employees)

c) Find the N-th highest salary in the company.
SELECT e1.name, e1.salary
from employees e1
WHERE N-1 = (
SELECT SUM(CASE WHEN e2.salary > e1.salary THEN 1 ELSE 0 END)
FROM employees e2)

SELECT e1.name, e1.salary
FROM employees e1
WHERE N-1 = (
SELECT count(distinct e2.salary)
FROM employees e2
where e2.salary > e1.salary
)