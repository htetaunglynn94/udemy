
USE Student

SELECT * FROM Students

SELECT *, ROW_NUMBER() OVER(PARTITION BY Subject ORDER BY marks desc) 
FROM Students

