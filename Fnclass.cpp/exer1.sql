CREATE DATABASE school;
USE school;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    major VARCHAR(50),
    age INT,
    score INT,
    enroll_date DATE
);
INSERT INTO students VALUES
(1, 'Dara', 'IT', 20, 85, '2024-01-15'),
(2, 'Sopheak', 'Business', 22, 78, '2023-11-10'),
(3, 'Rina', 'IT', 19, 90, '2024-03-05'),
(4, 'Vuthy', 'Engineering', 21, 72, '2023-09-01'),
(5, 'Lina', 'IT', 23, 88, '2024-02-20');
SELECT * FROM students;
SELECT name, major, score FROM students;
SELECT * FROM students WHERE major='IT';
SELECT * FROM students ORDER BY score DESC;
