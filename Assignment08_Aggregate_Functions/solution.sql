DR-- Create the Employee table
CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10,2)
);

-- Insert sample records
INSERT INTO Employee (EmployeeID, EmployeeName, Department, Salary)
VALUES
(101, 'Ravi', 'HR', 25000),
(102, 'Meena', 'IT', 40000),
(103, 'Kumar', 'Finance', 35000),
(104, 'Suresh', 'IT', 45000),
(105, 'Latha', 'HR', 30000);

-- COUNT(): Count the number of employees
SELECT COUNT(Salary) AS TotalEmployees
FROM Employee;

-- MAX(): Find the highest salary
SELECT MAX(Salary) AS MaximumSalary
FROM Employee;

-- MIN(): Find the lowest salary
SELECT MIN(Salary) AS MinimumSalary
FROM Employee;

-- AVG(): Find the average salary
SELECT AVG(Salary) AS AverageSalary
FROM Employee;
OP DATABASE IF EXISTS CollegeDB;
CREATE DATABASE CollegeDB;
USE CollegeDB;

-- Create Employee table

-- Insert records

-- COUNT()

-- MAX()

-- MIN()

-- AVG()
