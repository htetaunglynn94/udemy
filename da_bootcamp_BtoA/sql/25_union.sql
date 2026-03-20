
USE [Sales Database]

SELECT * FROM [dbo].[append1]

SELECT * FROM [dbo].[append2]

-- May include duplicates
SELECT C1, C2, C3 FROM APPEND1 -- C1 is int, C2 is nvarchar and C3 is int
UNION ALL
SELECT C1, C2, C3 FROM APPEND2

-- Cannot include duplicates
SELECT C1, C2, C3 FROM APPEND1
UNION
SELECT C1, C2, C3 FROM APPEND2

-- Only first alias names will be shown
SELECT C1[Col1], C2[Col2], C3[Col3] FROM APPEND1
UNION
SELECT C1[Co1], C2[Co2], C3[Co3] FROM APPEND2

/*
NOTE: UNION OR UNION ALL
- Numbers of columns present in the selected list must be the same
- The data types of the columns must be the same
- Order in which columns are written must be the same
- Alias names that are specified in 1st select statement will be assigned to the columns
*/


