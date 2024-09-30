# my_sql

# Basic about MySql

MySQL is one of the most popular relational database management systems (RDBMS) that uses Structured Query Language (SQL) to manage and manipulate data. It's open-source, fast, reliable, and widely used for applications like websites, enterprise applications, and data warehousing.

### Key Concepts in MySQL

#### 1. **Database**
   A database is a collection of tables that stores structured data. In MySQL, you can create multiple databases to store and organize your data.

   - **Example:**
     ```sql
     CREATE DATABASE my_database;
     ```

#### 2. **Table**
   A table is a collection of rows and columns, similar to a spreadsheet. Each table in a database represents an entity and consists of fields (columns) and records (rows).

   - **Example:**
     ```sql
     CREATE TABLE employees (
         id INT AUTO_INCREMENT PRIMARY KEY,
         name VARCHAR(100),
         age INT,
         department VARCHAR(50)
     );
     ```

#### 3. **Row and Column**
   - **Columns** define the data structure of a table. For example, the `name`, `age`, and `department` are columns.
   - **Rows** represent individual entries or records in a table. For example, a row could represent a specific employee's information.

#### 4. **Primary Key**
   A primary key is a column (or set of columns) that uniquely identifies each row in a table. In the above example, the `id` column is the primary key.

#### 5. **Foreign Key**
   A foreign key is a column that establishes a relationship between two tables. It refers to the primary key of another table, ensuring referential integrity.

   - **Example:**
     ```sql
     CREATE TABLE orders (
         order_id INT PRIMARY KEY,
         employee_id INT,
         FOREIGN KEY (employee_id) REFERENCES employees(id)
     );
     ```

#### 6. **Data Types**
   Each column in a table has a specific data type that defines what kind of data it can store. Common MySQL data types include:
   - **INT**: Integer numbers
   - **VARCHAR(size)**: Variable-length string (e.g., names, addresses)
   - **DATE**: Date values (e.g., 'YYYY-MM-DD')
   - **FLOAT, DECIMAL**: Floating-point or decimal numbers
   - **BOOLEAN**: Boolean values (True/False)

#### 7. **CRUD Operations**
   CRUD stands for **Create, Read, Update, Delete**. These are the basic operations you can perform on a database.

   - **Create (INSERT):** Add new records to a table.
     ```sql
     INSERT INTO employees (name, age, department)
     VALUES ('Alice', 30, 'HR');
     ```

   - **Read (SELECT):** Retrieve records from a table.
     ```sql
     SELECT * FROM employees WHERE age > 25;
     ```

   - **Update (UPDATE):** Modify existing records.
     ```sql
     UPDATE employees
     SET department = 'Marketing'
     WHERE id = 1;
     ```

   - **Delete (DELETE):** Remove records from a table.
     ```sql
     DELETE FROM employees WHERE id = 1;
     ```

#### 8. **Constraints**
   Constraints are rules applied to columns to enforce data integrity and correctness.
   - **NOT NULL**: Ensures a column cannot have NULL values.
   - **UNIQUE**: Ensures all values in a column are unique.
   - **CHECK**: Ensures that all values in a column satisfy a specific condition.
   - **DEFAULT**: Assigns a default value to a column when no value is provided.

   - **Example:**
     ```sql
     CREATE TABLE employees (
         id INT AUTO_INCREMENT PRIMARY KEY,
         name VARCHAR(100) NOT NULL,
         age INT CHECK (age > 18),
         department VARCHAR(50) DEFAULT 'Unassigned'
     );
     ```

#### 9. **Indexes**
   Indexes are used to improve the speed of data retrieval operations. They allow faster searches, but they can slow down the performance of data modification operations (INSERT, UPDATE, DELETE).

   - **Example:**
     ```sql
     CREATE INDEX idx_employee_name ON employees (name);
     ```

#### 10. **Joins**
   Joins are used to retrieve data from multiple tables based on relationships between them.
   - **INNER JOIN**: Retrieves records with matching values in both tables.
   - **LEFT JOIN**: Retrieves all records from the left table and matching records from the right table.
   - **RIGHT JOIN**: Retrieves all records from the right table and matching records from the left table.
   - **FULL JOIN**: Retrieves all records when there is a match in either left or right table.

   - **Example:**
     ```sql
     SELECT employees.name, orders.order_id
     FROM employees
     INNER JOIN orders ON employees.id = orders.employee_id;
     ```

#### 11. **Aggregate Functions**
   Aggregate functions perform calculations on multiple rows and return a single value.
   - **COUNT()**: Counts the number of rows.
   - **SUM()**: Returns the sum of a numeric column.
   - **AVG()**: Returns the average value of a numeric column.
   - **MAX() / MIN()**: Returns the maximum or minimum value of a column.

   - **Example:**
     ```sql
     SELECT department, COUNT(*), AVG(age)
     FROM employees
     GROUP BY department;
     ```

#### 12. **GROUP BY and HAVING**
   The `GROUP BY` clause groups rows that have the same values in specified columns, and the `HAVING` clause filters records after grouping.

   - **Example:**
     ```sql
     SELECT department, COUNT(*)
     FROM employees
     GROUP BY department
     HAVING COUNT(*) > 2;
     ```

#### 13. **Transactions**
   A transaction is a group of SQL statements that are executed as a unit. Transactions are used to ensure data integrity.

   Key properties of transactions (ACID):
   - **Atomicity**: All operations must succeed, or none are applied.
   - **Consistency**: The database must remain in a valid state.
   - **Isolation**: Transactions must not interfere with each other.
   - **Durability**: Changes must persist, even in case of system failures.

   - **Example:**
     ```sql
     START TRANSACTION;
     UPDATE employees SET age = age + 1 WHERE id = 1;
     DELETE FROM employees WHERE id = 2;
     COMMIT;  -- Commit the transaction
     -- ROLLBACK;  -- Roll back if needed
     ```

### Sample Workflow

1. **Create a Database:**
   ```sql
   CREATE DATABASE company;
   USE company;
   ```

2. **Create Tables:**
   ```sql
   CREATE TABLE departments (
       dept_id INT PRIMARY KEY AUTO_INCREMENT,
       dept_name VARCHAR(50)
   );
   
   CREATE TABLE employees (
       emp_id INT PRIMARY KEY AUTO_INCREMENT,
       emp_name VARCHAR(100),
       dept_id INT,
       FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
   );
   ```

3. **Insert Data:**
   ```sql
   INSERT INTO departments (dept_name) VALUES ('HR'), ('Finance'), ('Engineering');
   INSERT INTO employees (emp_name, dept_id) VALUES ('Alice', 1), ('Bob', 2), ('Charlie', 3);
   ```

4. **Query Data:**
   ```sql
   SELECT employees.emp_name, departments.dept_name
   FROM employees
   JOIN departments ON employees.dept_id = departments.dept_id;
   ```

### Conclusion
MySQL is a powerful RDBMS with rich functionality for data storage, querying, and manipulation. Understanding these basic concepts will help you get started with building, managing, and querying databases effectively.
