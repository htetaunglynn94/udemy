USE [Sales Database]

SELECT * FROM DBO.Sales
WHERE TotalAmount >= 161

SELECT 
ProductID,
SUM(TotalAmount) [Sum of Sales]
FROM DBO.Sales
GROUP BY ProductID
HAVING SUM(TotalAmount) < 700

SELECT
ProductID,
SUM(TotalAmount) [Sum of Sales]
FROM DBO.Sales
WHERE TotalAmount>=161
GROUP BY ProductID
HAVING SUM(TotalAmount)>=250
ORDER BY ProductID DESC

SELECT
ProductID,
SUM(TotalAmount) [Sum of Sales]
FROM DBO.Sales
WHERE TotalAmount>=161
GROUP BY ProductID
HAVING SUM(TotalAmount)>=250
ORDER BY SUM(TotalAmount) ASC