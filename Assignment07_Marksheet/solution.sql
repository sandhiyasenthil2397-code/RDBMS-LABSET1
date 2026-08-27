USE CollegeDB;

CREATE TABLE Marksheet (
    RollNo INT PRIMARY KEY,
    Name VARCHAR(20) NOT NULL,
    Department VARCHAR(20) NOT NULL,
    Marks INT NOT NULL
);

INSERT INTO Marksheet (RollNo, Name, Department, Marks)
VALUES
(1, 'Arun', 'CSE', 85),
(2, 'Divya', 'IT', 78),
(3, 'Karthik', 'CSE', 92),
(4, 'Nisha', 'ECE', 67),
(5, 'Rahul', 'IT', 88);

-- Display students with marks greater than 80
-- in descending order of marks
SELECT *
FROM Marksheet
WHERE Marks > 80
ORDER BY Marks DESC;
DROP DATABASE IF EXISTS CollegeDB;
CREATE DATABASE CollegeDB;
USE CollegeDB;
-- Create Marksheet table

-- Insert sample records

-- Display students with Marks > 80

-- Sort by Marks DESC
