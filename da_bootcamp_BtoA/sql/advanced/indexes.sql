

-- Indexes
USE [Advanced SQL]

SELECT * FROM Employees

CREATE INDEX IX_1 ON Employees(Salary DESC)

-- Indexes can be checked at Databases -> Advanced SQL -> Tables -> DBO.Employees -> Indexes

CREATE INDEX IX_2 ON Employees(FirstName, LastName)

-- Drop created indexes
DROP INDEX Employees.IX_1