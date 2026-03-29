
USE [Sales Database]

SELECT * FROM Products

-- Example 1: Add a column to categorize each product into categories high, medium & low
SELECT 
*, 
CASE 
	WHEN Price > 500 THEN 'High'
	WHEN Price <= 500 AND Price >= 200 THEN 'Medium'
	ELSE 'Low'
END AS [High/Medium/Low]
FROM Products
------------------- Test -------------------
-- If no ELSE statement, those values will be NULL
SELECT 
*, 
CASE 
	WHEN Price > 500 THEN 'High'
	WHEN Price <= 500 AND Price >= 200 THEN 'Medium'
END AS [High/Medium/Low]
FROM Products

-- Example 2: Provide priorities to each category & sort the data according to that priorities
SELECT * FROM Products
ORDER BY
CASE
	WHEN Category IN ('Electronics') THEN 1
	WHEN Category IN ('Furniture') THEN 2
	ELSE 3
END 
------------------- Test -------------------
SELECT * FROM Products
ORDER BY
CASE
	WHEN Category IN ('Electronics') THEN 3
	WHEN Category IN ('Furniture') THEN 2
	WHEN Category = 'Accessories' THEN 1
END 

------------------- Test -------------------
SELECT 
*,
CASE
	WHEN Price > 500 THEN 'High'
	WHEN Price<=500 AND Price>100 THEN 'Medium'
	ELSE 'Low'
END AS [Price Rank]
FROM Products
ORDER BY 
CASE
	WHEN Price > 500 THEN 3
	WHEN Price<=500 AND Price>100 THEN 2
	ELSE 1
END