
USE [SQL Basics Questions]

SELECT * FROM Customers

SELECT * FROM Orders

SELECT * FROM Products

-- 1) Identify pairs of customers who live in the same country.
SELECT C1.CustomerName FROM Customers C1 JOIN Customers C2 ON C1.Country=C2.Country 
AND C1.CustomerID <> C2.CustomerID
AND C1.CustomerID > C2.CustomerID

-- 2) Find the customer who has spent the most on their orders.

-- Using WINDOW FUNCTION
SELECT CustomerName FROM
(SELECT CustomerName, SUM(Price) [Amount Spent],
DENSE_RANK() OVER (ORDER BY SUM(Price) DESC) [DR]
FROM Customers C 
JOIN Orders O ON C.CustomerID = O.CustomerID
JOIN Products P ON O.ProductID = P.ProductID
GROUP BY CustomerName) M WHERE DR = 1

-- 3) Find customers who have ordered more than one type of products.
SELECT CustomerName FROM Customers C JOIN Orders O 
ON C.CustomerID = O.CustomerID
GROUP BY CustomerName
HAVING COUNT(ProductID) > 1
-- NOTE: Removed COUNT(ProductID from SELECT statement

-- 4) List all products and their corresponding orders, using a RIGHT JOIN, including 
--    products that have never been ordered.
SELECT OrderID, O.ProductID, ProductName FROM Orders O RIGHT JOIN Products P
ON O.ProductID = P.ProductID

-- 5) Retrieve all orders placed by customers from the USA.
SELECT OrderID, Country FROM Orders O JOIN Customers C ON C.CustomerID = O.CustomerID
WHERE C.Country LIKE 'USA'

-- 6) Find the names of customers who have ordered a product priced above $500.
SELECT DISTINCT CustomerName FROM Customers C 
JOIN Orders O ON C.CustomerID=O.CustomerID
JOIN Products P ON O.ProductID=P.ProductID
WHERE P.Price > 500

-- 7) Find customers who have ordered the same product more than once.
SELECT CustomerName, COUNT(OrderID)[Order Count] FROM Customers C 
JOIN Orders O ON C.CustomerID = O.CustomerID
GROUP BY CustomerName
HAVING COUNT(OrderID) > 1