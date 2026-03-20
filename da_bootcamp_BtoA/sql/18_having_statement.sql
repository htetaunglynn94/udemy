USE [Sales Database]

SELECT * FROM DBO.Sales

	-- Total Sales, Avg Sales, Total Quantity, Avg Quantity for each distinct product
	SELECT 
	ProductID,
	SUM(TotalAmount) [Total Sales],
	AVG(TotalAmount) [Avg Sales],
	SUM(Quantity) [Total Quantity],
	AVG(Quantity) [Avg Quantity]
	FROM Sales
	GROUP BY ProductID
	HAVING SUM(TotalAmount)<700 AND SUM(Quantity)=21