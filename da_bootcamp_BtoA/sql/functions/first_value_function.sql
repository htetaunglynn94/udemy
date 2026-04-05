
USE [Window Func]

SELECT * FROM EmployeeSalaries

-- Take the first value and fill in all rows (Ascending)
SELECT *, 
FIRST_VALUE(Salary) OVER(ORDER BY Salary ASC)[Minimum Salary]
FROM EmployeeSalaries

-- Take the first value and fill in all rows (Descending)
SELECT *, 
FIRST_VALUE(EmployeeName) OVER(ORDER BY Salary DESC)[Minimum Salary]
FROM EmployeeSalaries

SELECT *, 
FIRST_VALUE(EmployeeName) OVER(ORDER BY Salary ASC)[Emp with Minimum Salary],
FIRST_VALUE(Salary) OVER(ORDER BY Salary ASC)[Minimum Salary]
FROM EmployeeSalaries

-- Return EmployeeID with lowest salary in each department (partitioned by - Ascending)
SELECT *,
FIRST_VALUE(EmployeeID) OVER(PARTITION BY Department ORDER BY Salary)[First Value]
FROM EmployeeSalaries

-- Return EmployeeID with lowest salary in each department (partitioned by - Descending)
SELECT *,
FIRST_VALUE(EmployeeID) OVER(PARTITION BY Department ORDER BY Salary DESC)[First Value EID],
FIRST_VALUE(EmployeeName) OVER(PARTITION BY Department ORDER BY Salary DESC)[First Value EName]
FROM EmployeeSalaries