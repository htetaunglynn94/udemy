USE employee_details

SELECT * FROM DBO.Employees

-- Create # TABLE not to touch main table
SELECT * INTO #1 FROM DBO.Employees

SELECT * FROM #1

-- Update NULL value in "Department"
UPDATE #1 
SET Department = 'HR'
WHERE DEPARTMENT IS NULL

-- Update the specific row
UPDATE #1
SET Salary = 89000, HireDate = '2023-01-01'
WHERE EmployeeID = 7

SELECT * FROM #1 WHERE EmployeeID = 7

SELECT * INTO #2 FROM DBO.Employees

SELECT * FROM #2

-- Without condition, effect the whole column
UPDATE #2
SET Department = 'Finance'
