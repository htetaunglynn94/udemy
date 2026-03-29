USE [SQL Assignments]

SELECT * FROM EmployeeSales

-- 1. Write a query to calculate the total sales amount for each department in the EmployeeSales table.
SELECT Department, SUM(SaleAmount)[Total Sale Amt] FROM EmployeeSales
GROUP BY Department

-- 2. Write a query to count the number of sales made by each employee.
SELECT EmployeeID, COUNT(EmployeeID)[No of Sales] FROM EmployeeSales
GROUP BY EmployeeID

-- 3. Write a query to calculate the average sale amount for each department.
SELECT Department, AVG(SaleAmount)[Avg Sale Amt] FROM EmployeeSales
GROUP BY Department

-- 4. Write a query to find the total sales amount for each employee, but only include employees who 
--    have made more than one sale.
SELECT EmployeeID, SUM(SaleAmount)[Totl Sale Amt] FROM EmployeeSales
GROUP BY EmployeeID
HAVING COUNT(EmployeeID) > 1

-- 5. Write a query to find the total sales for each month in 2023.
SELECT MONTH(SaleDate) [Month], SUM(SaleAmount)[Total Sales] FROM EmployeeSales
WHERE YEAR(SaleDate) = 2023
GROUP BY MONTH(SaleDate)
