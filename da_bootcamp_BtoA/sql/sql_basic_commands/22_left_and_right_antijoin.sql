
USE [Sales Database]


SELECT * FROM table1

SELECT * FROM table2

SELECT * FROM table1 LEFT JOIN table2 ON table1.C1 = table2.C1

-- Left anti-join
SELECT * FROM table1 A LEFT JOIN table2 B ON A.C1 = B.C1
WHERE B.C3 IS NULL

SELECT * FROM table1 A RIGHT JOIN table2 B ON A.C1 = B.C1

-- Right anti-join
SELECT * FROM table1 A RIGHT JOIN table2 B ON A.C1 = B.C1
WHERE A.C2 IS NULL