
-- Deleting Duplicates 02
-- In this scenario, the data in some columns are duplicated. 
-- But some columns are unique.

USE [SQL IQuestions]

SELECT * FROM EmployeeRecords_1

-- Copy table as #1 with unique rows (still has duplicates)
SELECT DISTINCT * INTO #1 FROM EmployeeRecords_1 

SELECT * FROM #1

TRUNCATE TABLE EmployeeRecords_1 -- Remove all data from the table

INSERT INTO EmployeeRecords_1 SELECT * FROM #1

SELECT * FROM EmployeeRecords_1 ORDER BY Email -- Check table

-- Records with lower employee ID should be remained.
WITH CTE AS (
SELECT *,
DENSE_RANK() OVER(PARTITION BY Email ORDER BY EmployeeID) [DR]
FROM EmployeeRecords_1)

-- SELECT * FROM CTE

DELETE FROM CTE WHERE DR = 2 -- Delete duplicated email with highest Employee ID

SELECT * FROM EmployeeRecords_1

SELECT * INTO EmployeeRecords_2 FROM #1

SELECT * FROM EmployeeRecords_2

-- Records with higher employee ID should be remained.
WITH CTE AS(
SELECT *,
DENSE_RANK() OVER(PARTITION BY Email ORDER BY EmployeeID DESC) DR
FROM EmployeeRecords_2)

-- SELECT * FROM CTE

DELETE FROM CTE WHERE DR = 2 -- Delete duplicated email with lowest Employee ID

SELECT * FROM EmployeeRecords_1 -- EmployeeID = 5 is retained.
SELECT * FROM EmployeeRecords_2 -- EmployeeID = 6 is retained.