-- Step 1: Create the 'students' table
CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    age INT,
    grade VARCHAR(10),
    city VARCHAR(50)
);

-- Step 2: Insert data into the 'students' table
INSERT INTO students (name, age, grade, city)
VALUES 
('Alice', 20, 'A', 'New York'),
('Bob', 22, 'B', 'Los Angeles'),
('Charlie', 19, 'A', 'Chicago'),
('Diana', 21, 'C', 'San Francisco');

-- Step 3: Retrieve all data from the 'students' table
SELECT * FROM students;

-- Step 4: Filter students based on a condition (e.g., grade 'A')
SELECT * FROM students
WHERE grade = 'A';

-- Step 5: Update the city of a student
UPDATE students
SET city = 'Boston'
WHERE student_id = 3;

-- Step 6: Delete a student record
DELETE FROM students
WHERE student_id = 4;

-- Step 7: View the final state of the 'students' table
SELECT * FROM students;
