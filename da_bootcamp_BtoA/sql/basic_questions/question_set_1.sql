
USE [SQL Basics Questions]

--1) How do you select all columns from the Employees table?
SELECT * FROM Employees

--2) How do you select only the FirstName and Last Name columns from the Employees table?
SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS
SELECT FirstName, LastName FROM EMPLOYEES

--3) How do you find all employees who work in the 'IT' department?
SELECT * FROM Employees WHERE Department = 'IT'
--OR--
SELECT * FROM Employees WHERE Department LIKE 'IT'

--4) How do you select employees with a salary greater than 70,000?
SELECT * FROM Employees WHERE Salary > 70000

--5) How do you sort the results by Last Name in ascending order?
SELECT * FROM Employees ORDER BY LastName
--OR--
SELECT * FROM Employees ORDER BY LastName ASC

--6) How do you select distinct departments from the Employees table?
SELECT DISTINCT Department FROM Employees

--7) How do you count the number of employees in each department?
SELECT Department, COUNT(*) [No. of Employees] FROM Employees GROUP BY Department
--OR--
-- EmployeeID is Primary Key and not have null values
SELECT Department, COUNT(EmployeeID) [No. of Employees] FROM Employees GROUP BY Department

--8) How do you find the maximum salary in the Employees table?
SELECT MAX(Salary) [Max Salary] FROM Employees

--9) How do you find the average salary of employees in the 'Finance' department?
SELECT AVG(Salary)[Avg Salary] FROM Employees WHERE Department = 'Finance'
--OR--
SELECT AVG(Salary)[Avg Salary] FROM Employees WHERE Department LIKE 'Finance'

--10) How do you select employees whose last name starts with 'M'?
SELECT * FROM Employees WHERE LastName LIKE 'M%'