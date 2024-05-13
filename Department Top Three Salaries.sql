SELECT  d.Name AS Department, e.Name AS Employee , e.Salary 
FROM Employee AS e, Employee as e1, Department AS d
WHERE e.DepartmentId = d.Id
AND e1.DepartmentId = e.DepartmentId
AND e1.Salary >= e.Salary 
GROUP BY e.Id
HAVING COUNT(DISTINCT e1.Salary) <= 3;