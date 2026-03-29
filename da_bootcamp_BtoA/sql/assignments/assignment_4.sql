
USE [SQL Assignments]

SELECT * FROM Employees

update Employees set DepartmentID = 104 where EmployeeID = 6

SELECT * FROM Departments

-- 1. Write a SQL query to list the names of employees along with the names of the departments they work in.
SELECT FirstName, LastName, D.DepartmentName FROM Employees E
JOIN Departments D ON E.DepartmentID = D.DepartmentID

-- 2. Write a SQL query to list all the departments and the employees working in them, including departments
--    with no employees.
SELECT D.DepartmentName, FirstName, LastName FROM Departments D 
LEFT JOIN Employees E ON
E.DepartmentID = D.DepartmentID

-- 3. Write a SQL query to find the names of employees who do not belong to any department (i.e., no matching
--    department ID).
SELECT FirstName, LastName FROM Employees E 
LEFT JOIN Departments D ON E.DepartmentID = D.DepartmentID
WHERE DepartmentName IS NULL


-- 4. Write a SQL query to list the names of employees who work in the same department as 'Jane Doe'.
SELECT FirstName, LastName FROM Employees
WHERE DepartmentID = (SELECT DepartmentID FROM Employees
WHERE FirstName = 'Jane' AND LastName = 'Doe') 
AND NOT (FirstName = 'Jane' AND LastName = 'Doe')

-- 5. Write a SQL query to find the department with the highest total salary paid to its employees.
SELECT DepartmentName FROM Departments
WHERE DepartmentID = 
(SELECT TOP 1 DepartmentID FROM Employees
GROUP BY DepartmentID
ORDER BY SUM(Salary) DESC)
