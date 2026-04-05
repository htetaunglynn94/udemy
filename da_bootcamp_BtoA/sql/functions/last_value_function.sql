
USE [Window Func]

SELECT  * FROM EmployeeSalaries

-- Incorrect query
SELECT *,
LAST_VALUE(EmployeeName) OVER(ORDER BY Salary DESC)[Emp with lowest Salary]
FROM EmployeeSalaries

-- Correct query
-- Based on the whole Salary data
SELECT *,
LAST_VALUE(EmployeeName) 
OVER(ORDER BY Salary DESC ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING)[Emp with lowest Salary],
LAST_VALUE(Salary) 
OVER(ORDER BY Salary DESC ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING)[Lowest Salary]
FROM EmployeeSalaries

-- Based on Department (Partitioned by Department)
SELECT *,
LAST_VALUE(EmployeeName) 
OVER(PARTITION BY Department 
ORDER BY Salary ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING)[Emp with highest Salary],
LAST_VALUE(Salary) 
OVER(PARTITION BY Department ORDER BY Salary ROWS BETWEEN UNBOUNDED PRECEDING 
AND UNBOUNDED FOLLOWING)[Highest Salary]
FROM EmployeeSalaries

-- Based on Department (Partitioned by Department) [Using LAST_VALUE]
SELECT *,
LAST_VALUE(EmployeeName) 
OVER(PARTITION BY Department 
ORDER BY Salary ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING)[Emp with lowest Salary],
LAST_VALUE(Salary) 
OVER(PARTITION BY Department ORDER BY Salary ROWS BETWEEN UNBOUNDED PRECEDING 
AND UNBOUNDED FOLLOWING)[Lowest Salary]
FROM EmployeeSalaries

-- Based on Department (Partitioned by Department) [Using FIRST_VALUE]
SELECT *,
FIRST_VALUE(EmployeeName) 
OVER(PARTITION BY Department 
ORDER BY Salary DESC)[Emp with Highest Salary],
FIRST_VALUE(Salary) 
OVER(PARTITION BY Department ORDER BY Salary DESC)[Highest Salary]
FROM EmployeeSalaries

-- Note: Use DESCENDING in FIRST_VALUE(), while use ASCENDING in LAST_VALUE()