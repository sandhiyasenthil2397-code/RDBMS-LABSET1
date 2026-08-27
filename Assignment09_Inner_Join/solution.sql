-- Create Department table
CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

-- Insert values into Department
INSERT INTO Department (DepartmentID, DepartmentName)
VALUES
(101, 'Computer Science'),
(102, 'Mathematics'),
(103, 'Physics');


-- Create Student table
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

-- Insert values into Student
INSERT INTO Student (StudentID, StudentName, DepartmentID)
VALUES
(1001, 'Arun', 101),
(1002, 'Divya', 102),
(1003, 'Karthik', 101),
(1004, 'Nisha', 103);


-- INNER JOIN to display Student Name with Department Name
SELECT
    Student.StudentName,
    Department.DepartmentName
FROM Student
INNER JOIN Department
    ON Student.DepartmentID = Department.DepartmentID;
DROP DATABASE IF EXISTS CollegeDB;
CREATE DATABASE CollegeDB;
USE CollegeDB;


-- Create Department

-- Create Student

-- Insert sample records

-- INNER JOIN query
