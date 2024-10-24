CREATE DATABASE Company;
USE Company;

-- Employees Table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    department_id INT
);

-- Departments Table

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

-- Insert Data into Employees Table
INSERT INTO employees (employee_id, name, department_id) 
VALUES
(1, 'Alice', 10),
(2, 'Bob', 20),
(3, 'Charlie', 10),
(4, 'David', 30);

-- Insert Data into Departments Table

INSERT INTO departments (department_id, department_name) 
VALUES
(10, 'HR'),
(20, 'IT'),
(30, 'Finance');

SELECT * FROM employees;

-- INNER JOIN (Retrieve matching records from both tables)

SELECT employees.name, departments.department_name
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id;

-- Left Join Example

SELECT employees.name, departments.department_name
FROM employees
LEFT JOIN departments
ON employees.department_id = departments.department_id;
