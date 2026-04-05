
USE [Advanced SQL]

DROP TABLE IF EXISTS Students

CREATE TABLE Students(
ID INT,
Name NVARCHAR(50),
Age INT,
Gender VARCHAR(20))

INSERT INTO Students VALUES
(1,'Raj',23,'M'),
(4,'Nitin',25,'M'),
(3,'Priya',21,'F'),
(2,'Mikita',20,'F'),
(5,'Monica',20,'F')

SELECT * FROM Students
