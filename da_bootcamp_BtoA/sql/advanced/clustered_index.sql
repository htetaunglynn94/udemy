
-- Clustered Index

USE [Advanced SQL]

-- The ID column is not sorted.
SELECT * FROM Students

-- Created Clustered index on ID column in ascending order.
CREATE CLUSTERED INDEX ix_1 ON Students(ID)

-- The ID column is sorted ascending order now.
SELECT * FROM Students

-- ERROR: Clustered Index cannot created again if old one is not dropped.
CREATE CLUSTERED INDEX ix_2 ON Students(ID DESC)

-- Drop old Clustered Index.
DROP INDEX ix_1 ON Students

-- Created Clustered index on ID column in descending order.
CREATE CLUSTERED INDEX ix_2 ON Students(ID DESC)

-- The ID column is sorted descending order now.
SELECT * FROM Students

-- Drop old Clustered Index.
DROP INDEX ix_2 ON Students

-- Create Clustered index on Gender (descending) and Age (ascending) columns in specific orders.
CREATE CLUSTERED INDEX ix_3 ON Students (Gender DESC, Age ASC)

-- The Gender column is sorted descending and Age column in ascending orders respectively.
SELECT * FROM Students

/*
NOTE:
The created Clustered Index can be seen on the following directory
[Advanced SQL] -> Tables -> [dbo].[Students] -> Indexes -> [ix_3]
*/
