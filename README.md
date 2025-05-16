# JFS-Project-Introduction-to-MySQL

The purpose of this project is to help you get hands-on experience with basic database concepts and creating your first tables. By the end of this assignment, you will have a solid foundation to start building and managing databases using MySQL.

## Instructions

### Create Your First Database

- Open the MySQL command-line client or MySQL Workbench.
- Create a new database called StudentRecords using the following SQL command: `CREATE DATABASE StudentRecords`
- Verify that the database was created successfully.

```SQL
CREATE DATABASE StudentRecords;
SHOW DATABASES;
USE studentrecords;
```

### Create a Table with Appropriate Data Types

Inside the StudentRecords database, create a table named Students with the following columns

- studentId (INT, Primary Key)
- firstName (VARCHAR, up to 50 characters)
- lastName (VARCHAR, up to 50 characters)
- age (INT)
- email (VARCHAR, up to 100 characters)
- Use this SQL command to create the table: `CREATE TABLE`

``` SQL
CREATE TABLE Students (
    studentId int PRIMARY KEY,
    firstName varchar(50),
    lastName varchar(50),
    age int,
    email varchar(100)
);
```

### Insert Sample Data

- Make sure to add 5 different records with varied details.
- Add at least 5 sample student records into the Students table. Use the following syntax:

```
INSERT [LOW_PRIORITY | DELAYED | HIGH_PRIORITY] [IGNORE]
    [INTO] tbl_name
    [PARTITION (partition_name [, partition_name] ...)]
    [(col_name [, col_name] ...)]
    { {VALUES | VALUE} (value_list) [, (value_list)] ... }
    [AS row_alias[(col_alias [, col_alias] ...)]]
    [ON DUPLICATE KEY UPDATE assignment_list]

INSERT [LOW_PRIORITY | DELAYED | HIGH_PRIORITY] [IGNORE]
    [INTO] tbl_name
    [PARTITION (partition_name [, partition_name] ...)]
    SET assignment_list
    [AS row_alias[(col_alias [, col_alias] ...)]]
    [ON DUPLICATE KEY UPDATE assignment_list]

INSERT [LOW_PRIORITY | HIGH_PRIORITY] [IGNORE]
    [INTO] tbl_name
    [PARTITION (partition_name [, partition_name] ...)]
    [(col_name [, col_name] ...)]
    { SELECT ... 
      | TABLE table_name 
      | VALUES row_constructor_list
    }
    [ON DUPLICATE KEY UPDATE assignment_list]

value:
    {expr | DEFAULT}

value_list:
    value [, value] ...

row_constructor_list:
    ROW(value_list)[, ROW(value_list)][, ...]

assignment:
    col_name = 
          value
        | [row_alias.]col_name
        | [tbl_name.]col_name
        | [row_alias.]col_alias

assignment_list:
    assignment [, assignment] ...
```
```SQL
INSERT INTO Students (studentId, firstName, lastName, age, email) VALUES
(1, 'Carlos', 'Gómez', 20, 'carlos.gomez@example.com'),
(2, 'Ana', 'Martínez', 22, 'ana.martinez@example.com'),
(3, 'Luis', 'Rodríguez', 19, 'luis.rodriguez@example.com'),
(4, 'Sofía', 'Fernández', 21, 'sofia.fernandez@example.com'),
(5, 'Miguel', 'Vargas', 23, 'miguel.vargas@example.com');
```

### Bonus Challenge (Optional)

- Create a second table named Courses with columns like courseId, courseName, and courseDescription.
- Practice creating relationships by adding a column studentId to link each student to a course.

``` SQL
CREATE TABLE Courses (
    courseId int PRIMARY KEY,
    courseName varchar(50),
    courseDescription TEXT,
    studentId int,
    FOREIGN KEY (studentId) REFERENCES Students(studentId)
);
```

```SQL
INSERT INTO Courses (courseName, courseDescription, studentId) VALUES
('Database Management', 'Learn SQL and database principles.', 1),
('Web Development', 'Introduction to HTML, CSS, and JavaScript.', 2),
('Machine Learning', 'Fundamentals of AI and data science.', 3),
('Cybersecurity', 'Explore digital security and ethical hacking.', 4),
('Software Engineering', 'Understand coding principles and best practices.', 5);

```

``` SQL
SELECT * FROM Courses;
```

---

## Understanding Database Basics

Write a short paragraph (50-100 words) explaining what a database is, how it stores data, and why databases are essential for managing information. Provide real-world examples of where databases are commonly used (e.g., schools, banks, e-commerce platforms).

A database is an organized collection of data that allows efficient storage, retrieval, and management of information. It stores data in tables with rows and columns, making it easy to search, update, and analyze. Databases are essential because they enable businesses, institutions, and applications to handle vast amounts of information securely and accurately. For example, schools use databases to track student records, banks rely on them to manage transactions and accounts, and e-commerce platforms store customer details, inventory, and order histories. Without databases, modern systems would struggle to process and organize the massive amounts of data they handle daily.

### Basic Commands - Insert, Select, and Update Data

#### Insert Data
Add more records into the Students table using the INSERT command. For example:
```SQL
INSERT INTO Students (studentId, firstName, lastName, age, email) VALUES
(6, 'Roberto', 'Hernández', 24, 'roberto.hernandez@example.com'),
(7, 'Gabriela', 'López', 21, 'gabriela.lopez@example.com'),
(8, 'Javier', 'Ramírez', 22, 'javier.ramirez@example.com'),
(9, 'Mariana', 'Torres', 20, 'mariana.torres@example.com'),
(10, 'Fernando', 'Castillo', 23, 'fernando.castillo@example.com');
```

#### Select Data
Use the SELECT command to retrieve and display all the records in the Students table:
```SQL
SELECT * FROM Students;
```

| studentId | firstName | lastName    | age | email                      |
|-----------|------------|-------------|-----|----------------------------|
| 1         | Carlos     | Gómez       | 20  | carlos@gomez.com           |
| 2         | Ana        | Martínez    | 22  | ana.martinez@example.com   |
| 3         | Luis       | Rodríguez   | 19  | luis.rodriguez@example.com |
| 4         | Sofía      | Fernández   | 21  | sofia.fernandez@example.com |
| 5         | Miguel     | Vargas      | 23  | miguel.vargas@example.com  |
| 6         | Roberto    | Hernández   | 24  | roberto.hernandez@example.com |
| 7         | Gabriela   | López       | 21  | gabriela.lopez@example.com |
| 8         | Javier     | Ramírez     | 22  | javier.ramirez@example.com |
| 9         | Mariana    | Torres      | 20  | mariana.torres@example.com |
| 10        | Fernando   | Castillo    | 23  | fernando.castillo@example.com |

#### Update Data
Modify the age of one student using the UPDATE command:
```SQL
UPDATE Students SET age = 56 WHERE studentId = 4;
```

| studentId | firstName | lastName    | age | email                      |
|-----------|------------|-------------|-----|----------------------------|
| 1         | Carlos     | Gómez       | 20  | carlos@gomez.com           |
| 2         | Ana        | Martínez    | 22  | ana.martinez@example.com   |
| 3         | Luis       | Rodríguez   | 19  | luis.rodriguez@example.com |
| 4         | Sofía      | Fernández   | 56  | sofia.fernandez@example.com |
| 5         | Miguel     | Vargas      | 23  | miguel.vargas@example.com  |
| 6         | Roberto    | Hernández   | 24  | roberto.hernandez@example.com |
| 7         | Gabriela   | López       | 21  | gabriela.lopez@example.com |
| 8         | Javier     | Ramírez     | 22  | javier.ramirez@example.com |
| 9         | Mariana    | Torres      | 20  | mariana.torres@example.com |
| 10        | Fernando   | Castillo    | 23  | fernando.castillo@example.com |

#### Verify Changes
Use the SELECT command again to confirm that the data has been updated.
```SQL
SELECT * FROM Students WHERE studentId = 4;
```

| studentId | firstName | lastName | age | email |
| --- | --- | --- | --- | --- |
| 4 | Sofía | Fernández | 56 | sofia.fernandez@example.com |

---

## Reflection Questions

### Question 1 
Why did you choose specific data types for the columns in the Students table? Explain how these data types help in storing student information efficiently.

Choosing the right data types in a database optimizes storage and performance. studentId is an INT because it's a unique identifier that benefits from efficient indexing. firstName and lastName use VARCHAR(50) to allow variable-length names without wasting space. age is an INT since it's always a whole number, ensuring fast calculations. email is stored as VARCHAR(100) to accommodate different lengths while enabling quick lookups. These data types ensure efficient data retrieval, storage, and accuracy.

---

### Question 2 
What are some benefits of using databases over simple file storage systems (like spreadsheets)?

Databases offer significant advantages over simple file storage systems like spreadsheets. Efficiency is key—databases can store and retrieve large amounts of structured data much faster than spreadsheets. They support multi-user access, allowing multiple people to update data simultaneously without conflicts. Data integrity is improved through constraints like primary keys and foreign keys, ensuring accurate relationships between records. Additionally, databases offer advanced querying capabilities through SQL, making it easier to filter, analyze, and extract meaningful insights. Real-world applications include banks, where databases track financial transactions, hospitals for patient records, and e-commerce platforms to manage inventory and customer details.

---
