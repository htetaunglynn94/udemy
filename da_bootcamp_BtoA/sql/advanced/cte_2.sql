
USE employee_details

SELECT * FROM Employees

SELECT * INTO #1 FROM Employees

-- Example 1
WITH CTE1 AS (
SELECT * FROM #1 WHERE EmployeeID IN (1,2)),
CTE2 AS (
SELECT * FROM #1 WHERE EmployeeID IN (3,4))
SELECT * FROM CTE1
UNION ALL
SELECT * FROM CTE2

-- EXAMPLE 2
WITH CTE3 AS 
(SELECT EmployeeID, FirstName FROM #1 WHERE EmployeeID = 1),
CTE4 AS 
(SELECT EmployeeID, FirstName FROM #1 WHERE EmployeeID IN (3))
SELECT * INTO #2 FROM
(SELECT * FROM CTE3 UNION ALL SELECT * FROM CTE4) X

SELECT * FROM #2

/*
NOTE: 
- CTE is a temporary named query
- #2 is a temporary table
- 'X' is the alias name for CTE3 UNION CTE4
=> This code creates two Common Table Expressions (CTE3 and CTE4) to filter specific employees 
from temporary table #1, combines their results using UNION ALL, and stores the combined data 
into a new temporary table #2.
*/

-- Example 3
WITH CTE3 AS 
(SELECT EmployeeID, FirstName FROM #1 WHERE EmployeeID = 1),
CTE4 AS 
(SELECT EmployeeID, FirstName FROM #1 WHERE EmployeeID IN (3))
INSERT INTO #2 SELECT * FROM
(SELECT * FROM CTE3 UNION ALL SELECT * FROM CTE4) X

SELECT * FROM #2
/*
#2 temporary table has already had the same 2 values. Inserted 2 same values into #2 table makes
duplicated values (total 4 values: 2 same values)
*/


-- Example 4: Delete data of EmployeeID 2 and 
WITH CTE3 AS 
(SELECT EmployeeID, FirstName, Salary FROM #1 WHERE EmployeeID = 2),
CTE4 AS 
(SELECT EmployeeID, FirstName, Salary FROM #1 WHERE EmployeeID IN (4))
DELETE FROM #1 WHERE EmployeeID IN 
(SELECT DISTINCT EmployeeID FROM CTE3
UNION ALL
SELECT DISTINCT EmployeeID FROM CTE4)


SELECT * FROM #1

-- Example 5: Except EmployeeID 9 and 10, set value 100 to all EmployeeID
WITH CTE3 AS 
(SELECT EmployeeID, FirstName, Salary FROM #1 WHERE EmployeeID = 9),
CTE4 AS 
(SELECT EmployeeID, FirstName, Salary FROM #1 WHERE EmployeeID IN (10))
UPDATE #1 SET EmployeeID = 100 WHERE EmployeeID NOT IN 
(SELECT DISTINCT EmployeeID FROM CTE3
UNION ALL
SELECT DISTINCT EmployeeID FROM CTE4)

SELECT * FROM #1
