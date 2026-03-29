
USE [SQL Basics Questions]

SELECT * FROM CUSTOMERS

SELECT * FROM ORDERS

SELECT * FROM Products


-- 1) Write an SQL query to find the names of customers who have placed an order.
SELECT DISTINCT CustomerName FROM Customers C INNER JOIN Orders O ON C.CustomerID = O.CustomerID

-- 2) Find the list of customers who have not placed any orders.
SELECT DISTINCT CustomerName FROM Customers C LEFT JOIN Orders O ON C.CustomerID = O.CustomerID
WHERE O.OrderID IS NULL

-- 3) List all orders along with the product name and price.
SELECT DISTINCT ProductName, Price FROM Orders O JOIN Products P ON O.ProductID = P.ProductID

-- 4) Find the names of customers and their orders, including customers who haven't placed any orders.
SELECT DISTINCT CustomerName, OrderID FROM Customers C LEFT JOIN Orders O ON C.CustomerID = O.CustomerID

-- 5) Retrieve a list of products that have never been ordered.
SELECT ProductName FROM Orders O RIGHT JOIN Products P ON O.ProductID = P.ProductID
WHERE O.OrderID IS NULL

-- 6) Find the total number of orders placed by each customer.
SELECT CustomerName, COUNT(OrderID)[Total No of Orders] FROM Orders O JOIN Customers C 
ON C.CustomerID = O.CustomerID
GROUP BY CustomerName
--OR--
SELECT CustomerName, COUNT(OrderID)[Total No of Orders] FROM Orders O RIGHT JOIN Customers C 
ON C.CustomerID = O.CustomerID
GROUP BY CustomerName

-- 7) Display the customers, the products they've ordered, and the order date. Include customers who haven't
-- placed any orders.
SELECT DISTINCT CustomerName, ProductName, OrderDate FROM Customers C LEFT JOIN Orders O 
ON C.CustomerID=O.CustomerID
LEFT JOIN Products P ON P.ProductID=O.ProductID




