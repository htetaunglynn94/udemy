
-- Deleting Duplicates 01
-- In this scenario, the data inside the whole row is duplicated

USE [SQL IQuestions]

SELECT * FROM EmployeeRecords
ORDER BY EmployeeID, EmployeeName, ManagerID

-- Using DENSE_RANK() is not effective
WITH CTE AS (
SELECT *,
DENSE_RANK() OVER(
	PARTITION BY EmployeeID 
	ORDER BY EmployeeID) [DR]
FROM EmployeeRecords)

SELECT * FROM CTE

-- Using ROW_NUMBER() is effective
-- RN = 2 are the duplicated ones.
WITH CTE AS (
SELECT *,
ROW_NUMBER() OVER(
	PARTITION BY EmployeeID, EmployeeName, ManagerID 
	ORDER BY EmployeeID) RN
FROM EmployeeRecords)

SELECT * FROM CTE

-- Create back up table
SELECT * INTO emprecords_bkp FROM EmployeeRecords

-- Then delete duplicates (impacts to the EmployeeRecords table)
WITH CTE AS (
SELECT *,
ROW_NUMBER() OVER(
	PARTITION BY EmployeeID, EmployeeName, ManagerID 
	ORDER BY EmployeeID) RN
FROM EmployeeRecords)

DELETE FROM CTE WHERE RN = 2

-- Check CTE
WITH CTE AS (
SELECT *,
ROW_NUMBER() OVER(
	PARTITION BY EmployeeID, EmployeeName, ManagerID 
	ORDER BY EmployeeID) RN
FROM EmployeeRecords)

SELECT * FROM CTE

-- Impact to the main table
SELECT * FROM EmployeeRecords

SELECT * FROM emprecords_bkp -- Check table

SELECT DISTINCT * INTO #1 FROM emprecords_bkp -- Create table with unique data

SELECT * FROM #1 -- No duplicate included

TRUNCATE TABLE emprecords_bkp -- Remove all data

SELECT * FROM emprecords_bkp -- Check table

INSERT INTO emprecords_bkp SELECT * FROM #1 -- Insert data into backup table

SELECT * FROM emprecords_bkp -- Check table