
USE [SQL Assignments]

SELECT * FROM Employees

-- 1. Write a SQL query to find the names of employees whose first names start with the letter 'J'.
SELECT FirstName, LastName FROM Employees WHERE FirstName LIKE 'J%'

-- 2.  Write a SQL query to find the names of employees whose last names end with the letter 'n'.
SELECT FirstName, LastName FROM Employees WHERE LastName LIKE '%n'

-- 3. Write a SQL query to find the email addresses of employees that contain the word "john".
SELECT Email FROM Employees WHERE Email LIKE '%john%'

-- 4. Write a SQL query to find the names of employees whose first names have exactly 5 characters.
SELECT FirstName FROM Employees WHERE FirstName LIKE '_____'

-- 5. Write a SQL query to find the names of employees whose last names contain the letter 'a' as 
--    the second character.
SELECT FirstName, LastName FROM Employees WHERE LastName LIKE '_a%'