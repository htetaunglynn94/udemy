
-- NonClustered Index

USE [Advanced SQL]

SELECT * FROM Students

CREATE NONCLUSTERED INDEX ix_2 ON Students (ID)

SELECT * FROM Students

CREATE NONCLUSTERED INDEX ix_1 ON Students (Gender DESC, Age ASC)

SELECT * FROM Students

DROP INDEX ix_2 ON Students
