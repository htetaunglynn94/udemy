
USE [Sales Database]

SELECT * FROM table1

SELECT * FROM table2

SELECT * FROM table1
RIGHT JOIN table2
ON table1.C1 = table2.C1

SELECT B.C1, A.C2, B.C3 FROM table1 A
RIGHT JOIN table2 B
ON A.C1 = B.C1