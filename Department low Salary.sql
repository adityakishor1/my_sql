SELECT d.name AS Department, e.name AS Employee, e.salary AS Salary
FROM Employee e, Department d
WHERE e.departmentId = d.id
AND (e.departmentId, e.salary) in 
(SELECT DepartmentId, max(Salary) as max FROM Employee GROUP BY DepartmentId)