
USE [SQL Basics Questions]

SELECT * FROM Employees

-- 1. How do you select employees who work in the 'IT' department and have a salary greater than 75,000?
SELECT * FROM Employees WHERE Department = 'IT' AND Salary > 75000
--OR--
SELECT * FROM Employees WHERE Department LIKE 'IT' AND Salary > 75000
--OR--

SELECT * FROM Employees WHERE Department IN ('IT') AND Salary > 75000
-- 2. How do you find employees who work in the 'HR' department or have a salary less than 60,000?
SELECT * FROM Employees WHERE Department = 'HR' OR Salary < 60000
--OR--
SELECT * FROM Employees WHERE Department LIKE 'HR' OR Salary < 60000
--OR--
SELECT * FROM Employees WHERE Department IN ('HR') OR Salary < 60000

-- 3. How do you select employees who do not work in the 'Finance' department?
SELECT * FROM Employees WHERE Department NOT LIKE 'Finance'
--OR--
SELECT * FROM Employees WHERE NOT Department LIKE 'Finance'
--OR--
SELECT * FROM Employees WHERE NOT Department = 'Finance'
--OR--
SELECT * FROM Employees WHERE Department != 'Finance'
--OR--
SELECT * FROM Employees WHERE Department NOT IN ('Finance')
--OR--
SELECT * FROM Employees WHERE NOT Department IN ('Finance')

-- 4. How do you find employees whose salary is between 60,000 and 70,000 and who work in the 'Finance' department?
SELECT * FROM Employees WHERE Salary BETWEEN 60000 AND 70000 AND Department = 'Finance'
--OR--
SELECT * FROM Employees WHERE Salary BETWEEN 60000 AND 70000 AND Department LIKE 'Finance'
--OR--
SELECT * FROM Employees WHERE Salary BETWEEN 60000 AND 70000 AND Department IN ('Finance')

-- 5. How do you find employees who work in the 'Finance' department and do not have a salary greater than 80,000?
SELECT * FROM Employees WHERE Department LIKE 'Finance' AND Salary <= 80000
--OR--
SELECT * FROM Employees WHERE Department = 'Finance' AND NOT Salary > 80000

-- 6. How do you find employees who work in the 'HR' or 'Finance' departments and have a salary greater than 65,000?
SELECT * FROM Employees WHERE Department IN ('HR','FINANCE') AND Salary > 65000
--OR--
SELECT * FROM Employees WHERE (Department = 'HR' OR Department  = 'Finance') AND Salary > 65000
--OR--
SELECT * FROM Employees WHERE (Department IN ('HR') OR Department IN ('Finance')) AND Salary > 65000

-- 7. How do you select employees whose last name starts with 'D' and do not work in the 'HR' department?
SELECT * FROM Employees WHERE LastName LIKE 'D%' AND Department NOT LIKE 'HR'
--OR--
SELECT * FROM Employees WHERE LastName LIKE 'D%' AND Department NOT IN ('HR')

-- 11. How do you select employees whose last name includes 'o' and do not work in the 'HR' department?
SELECT * FROM Employees WHERE LastName LIKE '%o%' AND Department !='HR'

-- 8. How do you find employees who do not work in the 'IT' department and have a salary greater than 70,000?
SELECT * FROM Employees WHERE Department!='IT' AND Salary>70000
--OR--
SELECT * FROM Employees WHERE NOT Department='IT' AND Salary>70000

-- 9. How do you select employees who work in the 'IT' department and either have a salary greater 
-- than 75,000 or have the first name 'Laura'?
SELECT * FROM Employees WHERE Department='IT' AND (Salary>75000 OR FirstName LIKE 'Laura')
--OR--
SELECT * FROM Employees WHERE (Salary>75000 OR FirstName LIKE 'Laura') AND Department='IT'

--10. How do you find employees who do not work in the 'HR' or 'IT' departments?
SELECT * FROM Employees WHERE NOT Department IN ('HR','IT')