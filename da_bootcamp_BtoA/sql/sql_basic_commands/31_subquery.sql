
USE [employee_details]

SELECT * FROM Customers

SELECT * FROM Orders

-- Show customer data whose orders are in August 2024
SELECT * FROM Customers
WHERE customer_id IN (
SELECT DISTINCT customer_id FROM Orders
WHERE order_date BETWEEN '2024-08-01' AND '2024-08-31')

-- Show customer data whose orders are not in August 2024
SELECT * FROM Customers
WHERE customer_id IN
(SELECT DISTINCT customer_id FROM Orders 
WHERE order_date NOT BETWEEN '2024-08-01' AND '2024-08-31')

SELECT * FROM Employees

-- Fetch the data from employees table where salary > average salary
SELECT * FROM Employees
WHERE Salary >
(SELECT AVG(Salary) FROM Employees)
