
-- Title: Nth Highest Salary

USE [SQL IQuestions]

SELECT * FROM Employees

-----------| METHOD 1 |-----------

-- 2nd highest salary
SELECT MAX(Salary) [2nd Highest Salary] 
FROM Employees WHERE Salary <
(SELECT MAX(Salary) FROM Employees)

-- 3rd highest salary
SELECT MAX(Salary) [3rd Highest Salary]
FROM Employees WHERE Salary <
(SELECT MAX(Salary)
FROM Employees WHERE Salary <
(SELECT MAX(Salary) FROM Employees))

-----------| xxxxxxxx |-----------

-----------| METHOD 2 |-----------

-- Using CTE and DENSE_RANK()
-- 2nd Highest salary
WITH CTE AS(
SELECT *,
DENSE_RANK() 
OVER(ORDER BY Salary DESC) [DR]
FROM Employees)

SELECT Salary [2nd Highest Salary] FROM CTE WHERE DR = 2

-- 3rd Highest Salary
WITH CTE AS
(SELECT *, DENSE_RANK() OVER(ORDER BY Salary DESC)[DR] FROM Employees)

SELECT Salary[3rd Highest Salary] FROM CTE WHERE DR = 3

-- 5th Highest Salary
WITH CTE AS
(SELECT *, DENSE_RANK() OVER(ORDER BY Salary DESC)[DR] FROM Employees)

SELECT Salary[3rd Highest Salary] FROM CTE WHERE DR = 5

-----------| xxxxxxxx |-----------

-----------| METHOD 3 |-----------

-- Sub Query along with DENSE_RANK()

-- 2nd Highest Salary
SELECT Salary[2nd Highest Salary] FROM 
(SELECT *, DENSE_RANK() OVER(ORDER BY Salary DESC)[DR] FROM Employees) X
WHERE DR = 2

-- 2nd Highest Salary
SELECT Salary[3rd Highest Salary] FROM 
(SELECT *, DENSE_RANK() OVER(ORDER BY Salary DESC)[DR] FROM Employees) X
WHERE DR = 3

-----------| xxxxxxxx |-----------

-----------| METHOD 4 |-----------

-- Only Sub Query
-- 2nd Highest Salary
SELECT TOP 1 SALARY [2nd Highest Salary] FROM 
(SELECT DISTINCT TOP 2 SALARY FROM Employees ORDER BY SALARY DESC) X
ORDER BY SALARY ASC

-- 3rd Highest Salary
SELECT TOP 1 SALARY [2nd Highest Salary] FROM 
(SELECT DISTINCT TOP 3 SALARY FROM Employees ORDER BY SALARY DESC) X
ORDER BY SALARY ASC