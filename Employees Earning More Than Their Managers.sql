select name as Employee
from Employee as e1 
where salary > (select salary from Employee as e2 where e2.id = e1.managerId )