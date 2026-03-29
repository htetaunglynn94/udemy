
USE [Sales Database]

SELECT * FROM Products

-- Group the data based on columns category & price into different categories i.e affordable & premium
SELECT 
*,
CASE
	WHEN Category = 'Electronics' THEN
		CASE 
			WHEN Price>=300 THEN 'Premium Electronics'
		ELSE 'Affordable Electronics'
	END
	WHEN Category = 'Furniture' THEN
		CASE 
			WHEN Price>=300 THEN 'Premium Furniture'
		ELSE 'Affordable Furniture'
	END
ELSE
		CASE 
			WHEN Price>=300 THEN 'Premium Accessories'
		ELSE 'Affordable Accessories'
	END
END AS [Groups]
FROM Products