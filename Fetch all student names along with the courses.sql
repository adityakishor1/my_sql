-- Creating the Students table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT
);

-- Creating the Courses table
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    StudentID INT,
    CourseName VARCHAR(50),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
);

-- Inserting data into Students table
INSERT INTO Students (StudentID, Name, Age) VALUES
(1, 'Alice', 20),
(2, 'Bob', 21),
(3, 'Charlie', 22);

-- Inserting data into Courses table
INSERT INTO Courses (CourseID, StudentID, CourseName) VALUES
(101, 1, 'Mathematics'),
(102, 1, 'Physics'),
(103, 2, 'Chemistry');

-- Using INNER JOIN to combine data
SELECT
    Students.Name AS StudentName,
    Courses.CourseName
FROM
    Students
INNER JOIN
    Courses
ON
    Students.StudentID = Courses.StudentID;
