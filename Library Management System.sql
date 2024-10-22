CREATE DATABASE LibraryDB;
USE LibraryDB;
CREATE TABLE Authors (
    AuthorID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) UNIQUE,
    Country VARCHAR(100)
);

CREATE TABLE Books (
    BookID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(255),
    AuthorID INT,
    PublishedYear INT,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);
CREATE TABLE Members (
    MemberID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255),
    Email VARCHAR(255) UNIQUE,
    JoinDate DATE
);

CREATE TABLE Loans (
    LoanID INT AUTO_INCREMENT PRIMARY KEY,
    BookID INT,
    MemberID INT,
    LoanDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);

INSERT INTO Authors (Name, Country)
VALUES ('J.K. Rowling', 'UK'), 
       ('George R.R. Martin', 'USA');
       
INSERT INTO Books (Title, AuthorID, PublishedYear)
VALUES ('Harry Potter and the Sorcerer''s Stone', 1, 1997),
       ('A Game of Thrones', 2, 1996);
       
INSERT INTO Members (Name, Email, JoinDate)
VALUES ('Alice', 'alice@example.com', '2023-01-15'),
       ('Bob', 'bob@example.com', '2023-03-22');
       
INSERT INTO Loans (BookID, MemberID, LoanDate, ReturnDate)
VALUES (1, 1, '2024-01-01', '2024-01-15'),
       (2, 2, '2024-01-10', '2024-01-25');
       
SELECT Members.Name AS MemberName, Books.Title AS BookTitle, Loans.LoanDate, Loans.ReturnDate
FROM Loans
JOIN Members ON Loans.MemberID = Members.MemberID
JOIN Books ON Loans.BookID = Books.BookID;