

-- Create a new database called StudentRecords using the following SQL command: CREATE DATABASE StudentRecords
CREATE DATABASE StudentRecords;

-- Verify that the database was created successfully.
SHOW DATABASES;

-- Use New Database
USE studentrecords;

/* 
Inside the StudentRecords database, create a table named Students with the following columns

studentId (INT, Primary Key)
firstName (VARCHAR, up to 50 characters)
lastName (VARCHAR, up to 50 characters)
age (INT)
email (VARCHAR, up to 100 characters)
Use this SQL command to create the table: CREATE TABLE
*/
CREATE TABLE Students (
    studentId int PRIMARY KEY,
    firstName varchar(50),
    lastName varchar(50),
    age int,
    email varchar(100)
);

-- Make sure to add 5 different records with varied details.
INSERT INTO Students (studentId, firstName, lastName, age, email) VALUES
(1, 'Carlos', 'Gómez', 20, 'carlos.gomez@example.com'),
(2, 'Ana', 'Martínez', 22, 'ana.martinez@example.com'),
(3, 'Luis', 'Rodríguez', 19, 'luis.rodriguez@example.com'),
(4, 'Sofía', 'Fernández', 21, 'sofia.fernandez@example.com'),
(5, 'Miguel', 'Vargas', 23, 'miguel.vargas@example.com');

-- Create a second table named Courses with columns like courseId, courseName, and courseDescription.
-- Practice creating relationships by adding a column studentId to link each student to a course.
CREATE TABLE Courses (
    courseId int PRIMARY KEY,
    courseName varchar(50),
    courseDescription TEXT,
    studentId int,
    FOREIGN KEY (studentId) REFERENCES Students(studentId)
);

-- Make sure to add 5 different records with varied details.
INSERT INTO Courses (courseName, courseDescription, studentId) VALUES
('Database Management', 'Learn SQL and database principles.', 1),
('Web Development', 'Introduction to HTML, CSS, and JavaScript.', 2),
('Machine Learning', 'Fundamentals of AI and data science.', 3),
('Cybersecurity', 'Explore digital security and ethical hacking.', 4),
('Software Engineering', 'Understand coding principles and best practices.', 5);

-- Use the SELECT command again to confirm that the data has been updated.
SELECT * FROM Courses;

-- Add more records into the Students table using the INSERT command. For example:
INSERT INTO Students (studentId, firstName, lastName, age, email) VALUES
(6, 'Roberto', 'Hernández', 24, 'roberto.hernandez@example.com'),
(7, 'Gabriela', 'López', 21, 'gabriela.lopez@example.com'),
(8, 'Javier', 'Ramírez', 22, 'javier.ramirez@example.com'),
(9, 'Mariana', 'Torres', 20, 'mariana.torres@example.com'),
(10, 'Fernando', 'Castillo', 23, 'fernando.castillo@example.com');

-- Use the SELECT command to retrieve and display all the records in the Students table:
SELECT * FROM Students;

-- Modify the age of one student using the UPDATE command:
UPDATE Students SET age = 56 WHERE studentId = 4;

-- Use the SELECT command again to confirm that the data has been updated.
SELECT * FROM Students WHERE studentId = 4;
