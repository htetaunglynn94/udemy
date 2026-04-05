
USE ProfitDB

SELECT * FROM ProfitData

-- Add new column that shows previous month's profit for each product
SELECT *,
LAG(Profit) OVER(PARTITION BY Product ORDER BY MonthNumber)[Previous Month Profit]
FROM ProfitData

-- Show each month's total profit shown by MonthNumber and MonthName. 
-- Add new column for previous month's total profit.
SELECT MonthNumber, MonthName, SUM(Profit)[Tot Profit],
LAG(SUM(Profit)) OVER(ORDER BY MonthNumber)[Prev Month Tot Profit]
FROM ProfitData
GROUP BY MonthNumber, MonthName

