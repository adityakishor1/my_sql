1. Create `Students` table:

CREATE TABLE Students (
  student_id INT PRIMARY KEY,
  student_name VARCHAR(50),
  age INT,
  class_id INT
);

2. Insert record in `Students` table:

INSERT INTO Students (student_id, student_name, age, class_id)
VALUES 
  (1, 'Alice', 18, 101),
  (2, 'Bob', 17, 102),
  (3, 'Carol', 18, 101),
  (4, 'David', 17, 103);

3. Create `Classes` table:

CREATE TABLE Classes (
  class_id INT PRIMARY KEY,
  class_name VARCHAR(50)
);


4. Insert record in `Classes` table:

INSERT INTO Classes (class_id, class_name)
VALUES
  (101, 'Math'),
  (102, 'Science'),
  (103, 'History');


5. Create `Scores` table:

CREATE TABLE Scores (
  student_id INT,
  subject VARCHAR(50),
  score INT,
  FOREIGN KEY (student_id) REFERENCES Students(student_id)
);


6. Insert record in `Scores` table:

INSERT INTO Scores (student_id, subject, score)
VALUES
  (1, 'Math', 90),
  (1, 'Science', 85),
  (2, 'Math', 78),
  (2, 'Science', 92),
  (3, 'Math', 88),
  (3, 'Science', 79),
  (4, 'History', 95);