USE [Sales Database]

SELECT
ProductID, PaymentMethod,
SUM(TotalAmount) AS [Sum of Sales]
FROM DBO.Sales
GROUP BY ProductID, PaymentMethod
ORDER BY ProductID

SELECT
ProductID, PaymentMethod,
SUM(TotalAmount) AS [Sum of Sales]
FROM DBO.Sales
GROUP BY ProductID, PaymentMethod
ORDER BY PaymentMethod
