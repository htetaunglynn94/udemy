
/*
A Common Table Expresson (CTE) in SQL is a temporary result set that you can 
reference within a SELECT , INSERT, UPDATE or DELETE statements. CTEs are 
defined using the WITH keyword, and they can make complex queries easier to write, 
understand and maintain by breaking them into simpler parts.
*/

USE employee_details

SELECT * FROM Employees

SELECT * INTO #temp1 FROM Employees

SELECT * FROM #temp1

-- Example 1: CTE

WITH CTE AS (
SELECT * FROM #temp1
)
SELECT * FROM CTE
-- NOTE: Needs to select the whole script from line 19 to line 22

-- Example 2: 
WITH Test_CTE AS(
SELECT EmployeeID, FirstName FROM #temp1 WHERE EmployeeID IN (2,4)
)
SELECT * FROM Test_CTE

-- Example 3:
WITH [Common Table Expression] AS (
SELECT * FROM #temp1 WHERE EmployeeID IN (1,2,3)
)
SELECT * INTO #temp2 FROM [Common Table Expression]

SELECT * FROM #temp2

-- Example 4: UPDATE
WITH CTE_1 AS (
-- SELECT * FROM #temp1 WHERE EmployeeID=101)
SELECT * FROM #temp1 WHERE EmployeeID IN (2,4,6))
UPDATE #temp1 SET EmployeeID = 200 WHERE EmployeeID IN (SELECT DISTINCT EmployeeID FROM CTE_1)

-- Same result with Example 4
WITH CTE_1 AS (
SELECT * FROM #temp1 WHERE EmployeeID IN (2,4,6))
UPDATE CTE_1 SET EmployeeID = 101

SELECT * FROM #temp1

-- Example 5: DELETE
WITH CTE_2 AS (
SELECT * FROM #temp1 WHERE EmployeeID = 1)
DELETE FROM #temp1 WHERE EmployeeID IN (SELECT DISTINCT EmployeeID FROM CTE_2)

SELECT * FROM #temp1

-- Example 6: INSERT
WITH CTE_3 AS (
SELECT * FROM #temp1 WHERE EmployeeID IN (200))
INSERT INTO #temp1 SELECT * FROM CTE_3

SELECT * FROM #temp1