
-- VIEW

USE [Advanced SQL]

SELECT * FROM Employees

SELECT * INTO EMP_BKP FROM Employees

/*
A VIEW is a virtual table, it is a stored SQL query
It helps in reducing the complexity of the code and helps in
implementing security
*/

CREATE VIEW View_1 AS 
(SELECT * FROM EMP_BKP)

SELECT * FROM View_1

-- Remove Salary column for security concern and shared to others
CREATE VIEW View_2 AS
(SELECT EmployeeID, FirstName, LastName, 
Email, DepartmentID, HireDate
FROM EMP_BKP)

SELECT * FROM View_2

-- If I update View_1, it can impact the base table as well.
UPDATE View_1 SET EmployeeID = 100

-- Impact to the temporary table
SELECT * FROM EMP_BKP

-- Not impact to the original table
SELECT * FROM Employees

-- Impact to the View_1 table
SELECT * FROM View_1

-- Impact to the View_2 table
SELECT * FROM View_2