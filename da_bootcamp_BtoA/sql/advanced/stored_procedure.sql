
USE [Advanced SQL]

SELECT * FROM Employees

-- Example 1: Create a Stored Procedure
CREATE PROCEDURE SP_Test AS 
BEGIN
	SELECT * FROM Employees
END

-- Three ways to operate Stored Procedure
SP_Test            -- Method 1
EXEC SP_Test       -- Method 2
EXECUTE SP_Test    -- Method 3

-- Example 2: Create to show specific columns
CREATE PROC SP_Test_1 AS
BEGIN
	SELECT FirstName, LastName FROM Employees
END

SP_Test_1

-- Example 3: Alter or Update the created Stored Procedure
ALTER PROC SP_Test_1 AS
BEGIN
	SELECT EmployeeID, FirstName, LastName FROM Employees
END

SP_Test_1