USE PEM;
# CHECK CONSTRAINT
# a) create a check constraint on a column;
CREATE TABLE IF NOT EXISTS student(
s_age int(20) CHECK (s_age>=18),
s_name char(20), s_gender char(20),
s_city varchar(50), s_phone_number int(30));
SELECT * FROM student;
DESC STUDENT;
INSERT INTO student VALUES ( 19, 'TASHI', 'MALE', 'BANGALORE', 123456789);
SELECT * FROM STUDENT;
# INSERT INTO student VALUES ( 16, 'PEMA', 'MALE', 'MYSORE', 01234567545);
#16:40:08	INSERT INTO student VALUES ( 16, 'PEMA', 'MALE', 'MYSORE', 01234567545)	Error Code: 3819. Check constraint 'student_chk_1' is violated.	0.000 sec
# HERE I RECEIVE ERROR SAYING CHECK CONSTRAINT VIOLATED

#b) add a check constraint to a column:
ALTER TABLE student ADD CONSTRAINT PLACE CHECK ( s_city = 'bangalore');
INSERT INTO student VALUES ( 22, 'tsewang', 'male', 'bangalore', 987654321);
 SELECT * FROM student;
 SELECT s_city FROM STUDENT;
 # here we can see that all the city column = 'bangalore'
 
 # c) drop a check constraint to a column:
 ALTER TABLE student DROP CONSTRAINT PLACE;
 INSERT INTO student VALUES ( 23, 'PHUNTSOK', 'MALE', 'SIKKIM', 563214789);
# 16:59:45	INSERT INTO student VALUES ( 23, 'PHUNTSOK', 'MALE', 'SIKKIM', 563214789)	Error Code: 3819. Check constraint 'student_chk_2' is violated.	0.000 sec
# I HAVE ALREADY EXECUTED THE 2ND CONSTRAINTS BEFORE NAMING THE CONSTRAINTS,
# SO NAMED CHECKED CONSTRAINTS AND DROP THE CHECK CONSTRAINTS , NO USE;


# DEFAULT CONSTRAINTS 
# a) create a default constraint on a column;
CREATE TABLE IF NOT EXISTS OCCUPATION (SALARY INT(50), NAME CHAR(20),
AGE INT(20), PLACE VARCHAR(20));
SELECT * FROM OCCUPATION;
DESC OCCUPATION;
DROP TABLE OCCUPATION;
DESC OCCUPATION;
CREATE TABLE IF NOT EXISTS OCCUPATION (SALARY INT(50) DEFAULT 15000, NAME CHAR(20),
AGE INT(20), PLACE VARCHAR(20));
DESC OCCUPATION;
# HERE WE SEE THAT DEFAULT VALUE FOR SALARY IS 15000;

SELECT * FROM BOOKS;
DESC BOOKS;
ALTER TABLE BOOKS ADD (AUTHOR CHAR(30), AUTH_ID INT(20), GENRE CHAR(20));
DESC BOOKS;
# b) add a default constraint to a column;
ALTER TABLE BOOKS MODIFY genre char(20) DEFAULT 'adventure';
DESC BOOKS;
# notice that we have genre = adventrure by default;
INSERT INTO BOOKS VALUES ( 'harry', 'j k', 12, 'adventrue');
# 17:29:06	INSERT INTO BOOKS VALUES ( 'harry ', 'j k rowling', 12)	Error Code: 1136. Column count doesn't match value count at row 1	0.000 sec
SELECT * FROM BOOKS;
INSERT INTO BOOKS VALUES ('POTTER' , 'JK', 10, 'MAGIC');
SELECT * FROM BOOKS;


# c) drop a default constraint to a column;
ALTER TABLE BOOKS ALTER GENRE DROP DEFAULT;
DESC BOOKS;
# we see that default genre 'adventrue' has changed to null;