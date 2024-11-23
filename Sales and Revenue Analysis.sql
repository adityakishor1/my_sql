use company;

-- Create Customers Table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    Region VARCHAR(50),
    JoinDate DATE
);

-- Create Products Table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10, 2)
);

-- Create Sales Table
CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    CustomerID INT,
    ProductID INT,
    Quantity INT,
    SaleDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);


-- Insert into Customers
INSERT INTO Customers (CustomerID, CustomerName, Region, JoinDate)
VALUES
(1, 'Alice', 'North', '2024-01-10'),
(2, 'Bob', 'South', '2024-02-15'),
(3, 'Charlie', 'East', '2024-03-20');

-- Insert into Products
INSERT INTO Products (ProductID, ProductName, Category, Price)
VALUES
(101, 'Laptop', 'Electronics', 800.00),
(102, 'Smartphone', 'Electronics', 500.00),
(103, 'Desk Chair', 'Furniture', 150.00);

-- Insert into Sales
INSERT INTO Sales (SaleID, CustomerID, ProductID, Quantity, SaleDate)
VALUES
(1, 1, 101, 1, '2024-04-01'),
(2, 2, 102, 2, '2024-04-05'),
(3, 3, 103, 3, '2024-04-10'),
(4, 1, 102, 1, '2024-05-01'),
(5, 2, 103, 4, '2024-05-15');

-- Retrieve all sales data for a specific region

SELECT s.SaleID, c.CustomerName, c.Region, p.ProductName, s.Quantity, s.SaleDate
FROM Sales s
JOIN Customers c ON s.CustomerID = c.CustomerID
JOIN Products p ON s.ProductID = p.ProductID
WHERE c.Region = 'North';


