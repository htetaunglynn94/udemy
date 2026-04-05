
-- Recursive CTE
-- Factorial of a given number

WITH [R CTE] AS
-- Anchor Query
(SELECT 1 AS n

UNION ALL

-- Recursive Query
SELECT n+1 FROM [R CTE] WHERE n<=4 )

-- SELECT * FROM [R CTE]

SELECT EXP(SUM(LOG(n))) [Factorial] FROM [R CTE]
/*
NOTE:
 |__ 5! = 5*4*3*2*1 = 120
 |__ log m + log n = log mn = e^(log mn) = mn
*/

-- Same result for 5!
WITH [R CTE] AS
(SELECT 1 AS n
UNION ALL
SELECT n+1 FROM [R CTE] WHERE n<=4 )
SELECT PRODUCT(n) [Factorial] FROM [R CTE]