USE CollegeDB;

CREATE TABLE Course (
    CourseID INT(5) PRIMARY KEY,
    CourseName VARCHAR(30) NOT NULL,
    Credits INT NOT NULL,
    DepartmentID INT(5) NOT NULL,
    CONSTRAINT FK_Course_Department
        FOREIGN KEY (DepartmentID)
        REFERENCES Department(DepartmentID)
);

INSERT INTO Course (CourseID, CourseName, Credits, DepartmentID)
VALUES
(101, 'Database Management', 4, 1),
(102, 'Computer Networks', 3, 1),
(103, 'Operating Systems', 4, 2);

SELECT * FROM Course;

DESCRIBE Department;
DESCRIBE Student;
DESCRIBE Course;
DROP DATABASE IF EXISTS CollegeDB;
CREATE DATABASE CollegeDB;
USE CollegeDB;

-- Create Course table

-- Insert three records

-- Display structure
