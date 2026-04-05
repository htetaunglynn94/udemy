
USE ProfitDB

SELECT * FROM ProfitData

-- Add new column that shows next month's profit for each product
SELECT *, 
LEAD(Profit) OVER(PARTITION BY Product ORDER BY MonthNumber)[Next Month's Profit]
FROM ProfitData

-- Remove Product column in the output, create months's total profit shown by monthnumber & monthname.
SELECT MonthNumber, MonthName, 
SUM(Profit) [Total Profit],
LEAD(SUM(Profit)) OVER(ORDER BY MONTHNUMBER ASC) [Next Month's Total Profit]
FROM ProfitData
GROUP BY MonthNumber, MonthName
ORDER BY MonthNumber

-- Another way, but not included aggregation column
SELECT MonthNumber, MonthName, 
LEAD(SUM(Profit)) OVER(ORDER BY MonthNumber ASC) [Next Month's Total Profit]
FROM ProfitData
GROUP BY MonthNumber, MonthName

-- Not showing MonthNumber column
SELECT MonthName,
LEAD(SUM(Profit)) OVER(ORDER BY MonthNumber) [Next Month's Profit]
FROM ProfitData
GROUP BY MonthNumber, MonthName