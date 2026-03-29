
USE [SQL Assignments]

SELECT * FROM Employees

-- 1. Write a SQL query to find the names of employees who have a salary higher than the average 
--    salary of all employees.
SELECT FirstName, LastName FROM Employees
WHERE Salary > (SELECT AVG(Salary) FROM Employees)

-- 2. Write a SQL query to list the employee names and their departments for employees who were 
--    hired after the oldest employee in the company.
SELECT FirstName, LastName, DepartmentID FROM Employees
WHERE HireDate > (SELECT MIN(HireDate) FROM Employees)

-- 3. Write a SQL query to find the details of the employee(s) with the highest salary.
SELECT * FROM Employees 
WHERE Salary = (SELECT MAX(Salary) FROM Employees)

-- 4. Write a SQL query to find the names of employees who work in the same department as 'John Smith'.
SELECT FirstName, LastName DepartmentID FROM Employees
WHERE DepartmentID IN (SELECT DepartmentID FROM Employees
WHERE (FirstName = 'John' AND LastName = 'Smith'))
AND NOT (FirstName = 'John' AND LastName = 'Smith')

-- 5. Write a SQL query to find the names of employees who do not belong to the department with the 
--    highest average salary.
SELECT FirstName, LastName FROM Employees
WHERE DepartmentID <> 
(SELECT DepartmentID FROM Employees
WHERE Salary = (SELECT MAX(Salary) FROM Employees))