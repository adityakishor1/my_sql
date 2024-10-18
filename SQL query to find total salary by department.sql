use movie_rental;
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(100),
    Department VARCHAR(50),
    Salary INT
);
INSERT INTO Employees (EmployeeID, EmployeeName, Department, Salary)
VALUES 
(1, 'John Doe', 'HR', 5000),
(2, 'Jane Smith', 'IT', 6000),
(3, 'Bob Johnson', 'HR', 4500),
(4, 'Alice Brown', 'IT', 7000),
(5, 'Charlie Green', 'HR', 4000);

-- Write an SQL query to find the total salary paid to employees in each department.

SELECT Department, SUM(Salary) AS TotalSalary
FROM Employees
GROUP BY Department;