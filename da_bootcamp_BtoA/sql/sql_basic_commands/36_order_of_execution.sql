
USE employee_details

SELECT * FROM EmployeeSalaries

-- Correct query
SELECT DISTINCT TOP 1 Department, AVG(Salary) [Avg Salary] FROM EmployeeSalaries
WHERE Salary > 50000
GROUP BY Department
HAVING AVG(Salary) > 55000
ORDER BY Department

/*
Order of Execution
******************
1. FROM & JOIN
2. WHERE
3. GROUP BY
4. HAVING
5. SELECT
6. DINSTINCT
7. ORDER BY
8. TOP
*/

-- ERROR: Invalid column name 'Avg Salary'.
-- NOTE: SELECT executed after HAVING 
SELECT DISTINCT TOP 1 Department, AVG(Salary) [Avg Salary] FROM EmployeeSalaries
WHERE Salary > 50000
GROUP BY Department
HAVING [Avg Salary] > 55000
ORDER BY Department