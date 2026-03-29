USE employee_details

SELECT * FROM DBO.Employees

SELECT * INTO #3 FROM DBO.Employees

-- Delete data using condition
DELETE FROM #3 
WHERE LastName = '' OR Department = '0'

SELECT * INTO #4 FROM DBO.Employees

SELECT * FROM #4

-- Delete all rows
DELETE FROM #4

-- Remove all data but structure of the table only remain
TRUNCATE TABLE #3

SELECT * FROM #3

-- Delete the table forever
DROP TABLE #3