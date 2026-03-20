
USE [Sales Database]

SELECT * FROM DBO.Sales

SELECT SUM(Quantity)[Total Quantity] FROM DBO.Sales

SELECT SUM(Quantity) [Total Quantity], SUM(TotalAmount) [Sum of Amount] 
FROM DBO.Sales

SELECT AVG(Quantity)[Avg Quantity] FROM DBO.Sales

SELECT AVG(Quantity)[Avg Quantity], AVG(TotalAmount)[Avg Amount] FROM DBO.Sales

/*
Sum of Quantity , sum of Total amount, avg of quantity, avg of total amount for each distinct
product
*/
SELECT
ProductID,
SUM(Quantity) AS [Total Quantity],
SUM(TotalAmount) AS [Sum of Amount],
AVG(Quantity) [Average Quantity Sold],
AVG(TotalAmount) [Average Amount]
FROM DBO.Sales
GROUP BY ProductID

SELECT * FROM DBO.Sales

/*
Sum of Quantity, sum of amount, avg of quantity & avg of amount for distinct combinations of 
ProductID & Storeid
*/
SELECT
ProductID,
StoreID,
SUM(Quantity) [Total Quantity],
SUM(TotalAmount) [Sum of Amount],
AVG(Quantity) [Avg of Quantity],
AVG(TotalAmount) [Avg of Amount]
FROM DBO.Sales
GROUP BY ProductID, StoreID

SELECT COUNT(*)[Number of Rows] FROM DBO.Sales

SELECT COUNT(PaymentMethod)[No of Records] FROM DBO.Sales

SELECT COUNT(DISTINCT ProductID) [Distinct Products] FROM DBO.Sales

-- Show distinct value of PaymentMethod
SELECT PaymentMethod, COUNT(DISTINCT PaymentMethod) [Distinct Pay Mode] FROM DBO.Sales
GROUP BY PaymentMethod

-- Show all value count of PaymentMethod
SELECT PaymentMethod, COUNT(PaymentMethod) [Pay Mode] FROM DBO.Sales
GROUP BY PaymentMethod

-- Show all value count of PaymentMethod by rows
SELECT PaymentMethod, COUNT(*) [Pay Mode] FROM DBO.Sales
GROUP BY PaymentMethod