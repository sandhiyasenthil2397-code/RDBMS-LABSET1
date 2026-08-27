-- Create Course table
CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50),
    Credits INT
);

-- Insert values into Course
INSERT INTO Course (CourseID, CourseName, Credits)
VALUES
(201, 'Database Systems', 4),
(202, 'Data Structures', 3),
(203, 'Mathematics', 4);


-- Create Enrollment table
CREATE TABLE Enrollment (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);

-- Insert values into Enrollment
INSERT INTO Enrollment (EnrollmentID, StudentID, CourseID)
VALUES
(1, 1001, 201),
(2, 1001, 202),
(3, 1002, 203),
(4, 1003, 201);


-- LEFT JOIN
-- Displays all courses, including courses with no enrollment
SELECT
    Course.CourseID,
    Course.CourseName,
    Course.Credits,
    Enrollment.EnrollmentID,
    Enrollment.StudentID
FROM Course
LEFT JOIN Enrollment
    ON Course.CourseID = Enrollment.CourseID;


-- RIGHT JOIN
-- Displays all enrollments, including enrollments without a matching course
SELECT
    Course.CourseID,
    Course.CourseName,
    Course.Credits,
    Enrollment.EnrollmentID,
    Enrollment.StudentID
FROM Course
RIGHT JOIN Enrollment
    ON Course.CourseID = Enrollment.CourseID;
DROP DATABASE IF EXISTS CollegeDB;
CREATE DATABASE CollegeDB;
USE CollegeDB;

-- Create Course

-- Create Enrollment

-- Insert sample records

-- LEFT JOIN

-- RIGHT JOIN
