
USE Student

SELECT * FROM Students


------| Finding Row Numbers |------
-- Paritioned based on Subject column then regard row number (Descending)
SELECT *, ROW_NUMBER() OVER(PARTITION BY subject ORDER BY marks desc) [Row Number Desc]
FROM Students

-- Paritioned based on Subject column then regard row number (Asending)
SELECT *, ROW_NUMBER() OVER(PARTITION BY subject ORDER BY marks) [Row Number Asec]
FROM Students

-- Paritioned based on Student Name column then regard row number (Descending)
SELECT *, ROW_NUMBER() OVER(PARTITION BY student_name ORDER BY marks DESC)[Row Number Desc]
FROM Students

------| Finding Rank Numbers |------
-- Paritioned based on Studen Name column then regard rank number (Descending)
SELECT *, RANK() OVER(PARTITION BY student_name 
ORDER BY marks DESC)[Rank Desc on Student Name] 
FROM Students

-- Paritioned based on Subject column then regard rank number (Descending)
SELECT *, RANK() OVER(PARTITION BY subject ORDER BY marks DESC)[Rank Desc on Subject] 
FROM Students

-- Paritioned based on Subject column then regard rank number (Descending)
SELECT *, DENSE_RANK() OVER(PARTITION BY subject 
ORDER BY marks DESC)[DenseRank Desc on Subject] 
FROM Students

-- Paritioned based on Student Name column then regard rank number (Descending)
SELECT *, DENSE_RANK() OVER(PARTITION BY student_name 
ORDER BY marks DESC)[DenseRank Desc on Student Name] 
FROM Students

-- Paritioned based on Student Name column then regard rank number (Ascending)
SELECT *, DENSE_RANK() OVER(PARTITION BY student_name 
ORDER BY marks)[DenseRank Asec on Student Name] 
FROM Students