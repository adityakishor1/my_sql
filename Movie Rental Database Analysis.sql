create database Movie_Rental;
use Movie_Rental;

-- Creating Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(20),
    Address VARCHAR(255)
);

-- Creating Movies table
CREATE TABLE Movies (
    MovieID INT PRIMARY KEY,
    Title VARCHAR(255),
    Genre VARCHAR(100),
    ReleaseYear INT
);

-- Creating Rentals table
CREATE TABLE Rentals (
    RentalID INT PRIMARY KEY,
    CustomerID INT,
    MovieID INT,
    RentalDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (MovieID) REFERENCES Movies(MovieID)
);

-- Inserting data into Customers table
INSERT INTO Customers (CustomerID, Name, Email, Phone, Address)
VALUES (1, 'John Doe', 'johndoe@gmail.com', '555-1234', '123 Elm St'),
       (2, 'Jane Smith', 'janesmith@yahoo.com', '555-5678', '456 Oak St'),
       (3, 'Robert Brown', 'robertb@gmail.com', '555-8765', '789 Pine St');

-- Inserting data into Movies table
INSERT INTO Movies (MovieID, Title, Genre, ReleaseYear)
VALUES (1, 'Inception', 'Sci-Fi', 2010),
       (2, 'The Godfather', 'Crime', 1972),
       (3, 'The Dark Knight', 'Action', 2008),
       (4, 'Pulp Fiction', 'Crime', 1994),
       (5, 'Avengers: Endgame', 'Action', 2019);

-- Inserting data into Rentals table
INSERT INTO Rentals (RentalID, CustomerID, MovieID, RentalDate, ReturnDate)
VALUES (1, 1, 1, '2024-09-01', '2024-09-05'),
       (2, 2, 2, '2024-09-02', '2024-09-08'),
       (3, 1, 3, '2024-09-03', '2024-09-07'),
       (4, 3, 4, '2024-09-04', NULL),
       (5, 2, 5, '2024-09-05', '2024-09-10');
       
-- Analysys starts from here

-- list the customers
SELECT * FROM Customers;

-- List all available movies
SELECT * FROM Movies;

-- Get the rental history of a particular customer (e.g., John Doe):

SELECT c.Name, m.Title, r.RentalDate, r.ReturnDate
FROM Rentals r
JOIN Customers c ON r.CustomerID = c.CustomerID
JOIN Movies m ON r.MovieID = m.MovieID
WHERE c.Name = 'John Doe';

-- Find out which movies are currently rented out (i.e., not yet returned):
SELECT m.Title, c.Name, r.RentalDate
FROM Rentals r
JOIN Movies m ON r.MovieID = m.MovieID
JOIN Customers c ON r.CustomerID = c.CustomerID
WHERE r.ReturnDate IS NULL;

-- Find the most popular movie genre (by the number of rentals):

SELECT m.Genre, COUNT(r.RentalID) AS RentalCount
FROM Rentals r
JOIN Movies m ON r.MovieID = m.MovieID
GROUP BY m.Genre
ORDER BY RentalCount DESC;

-- Find how many times each movie has been rented:
SELECT m.Title, COUNT(r.RentalID) AS TimesRented
FROM Rentals r
JOIN Movies m ON r.MovieID = m.MovieID
GROUP BY m.Title
ORDER BY TimesRented DESC;

-- Get the total number of rentals for each customer:
SELECT c.Name, COUNT(r.RentalID) AS TotalRentals
FROM Rentals r
JOIN Customers c ON r.CustomerID = c.CustomerID
GROUP BY c.Name
ORDER BY TotalRentals DESC;

-- Find customers who have rented movies more than once:
SELECT c.Name, COUNT(r.RentalID) AS RentalCount
FROM Rentals r
JOIN Customers c ON r.CustomerID = c.CustomerID
GROUP BY c.Name
HAVING COUNT(r.RentalID) > 1;








