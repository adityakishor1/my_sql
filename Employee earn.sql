SELECT months*salary, COUNT(*) 
FROM Employee
WHERE months*salary >= 
(SELECT MAX(salary * months) 
FROM Employee)