
USE [SQL Assignments]

-- 1. Write a SQL query to select all columns and rows from the Employees table.
SELECT * FROM Employees

-- 2. Write a SQL query to find the names and email addresses of all employees who work 
--    in the department with DepartmentID = 101.
SELECT FirstName, LastName, Email FROM Employees
WHERE DepartmentID = 101

-- 3. Write a SQL query to find the total number of employees in the Employees table.
SELECT COUNT(EmployeeID) [Total No of Employees] FROM Employees

-- 4. Write a SQL query to find the details of employees who were hired in the year 2020.
SELECT * FROM Employees
WHERE YEAR(HireDate) = 2020

-- 5. Write a SQL query to update the salary of 'Jane Doe' to 90,000.
UPDATE Employees SET Salary = 90000 WHERE FirstName = 'Jane' AND LastName = 'Doe'

