
USE [Sales Database]

SELECT * FROM DBO.Sales

SELECT MIN(Quantity)[Minimum Quantity] FROM DBO.Sales

SELECT MIN(SaleDate)[Minimum SaleDate] FROM DBO.Sales

SELECT MIN(PaymentMethod)[Minimum Pay Method] FROM DBO.Sales

-- Show minimum total amount for each storeid
SELECT StoreID, MIN(TotalAmount)[Minimum Total Amount] FROM DBO.Sales
GROUP BY StoreID

