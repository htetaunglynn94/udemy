
USE Student

SELECT * FROM Students

------ Descending Order ------

-- ROW_NUMBER() function
-- Order marks column in descending and shown with row numnbers
-- All numbers are unique
SELECT *, ROW_NUMBER() OVER(ORDER BY marks DESC) AS [Row Number]
FROM Students

-- RANK() function
-- Same rank values for same scores
-- In this case, rank numbers -> 2,5,6,8,12,13,1,15 and 18 are skipped due to same ranks.
SELECT *, RANK() OVER(ORDER BY marks DESC) AS [Rank Function]
FROM Students

-- DENSE_RANK() function
-- In this case, rank numbers won't be skipped
SELECT *, DENSE_RANK() OVER(ORDER BY marks DESC) AS [Rank Function]
FROM Students

------ Ascending Order ------

-- RANK() function
SELECT *, ROW_NUMBER() OVER(ORDER BY marks) AS [Row Number]
FROM Students

-- RANK() function
SELECT *, RANK() OVER(ORDER BY marks) AS [Rank Function]
FROM Students

-- DENSE_RANK() function
SELECT *, DENSE_RANK() OVER(ORDER BY marks) AS [Rank Function]
FROM Students
