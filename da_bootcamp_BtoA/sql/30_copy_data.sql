
USE [Sales Database]

-- Remove tables first
DROP TABLE New_Table_1, New_Table_2, New_Table_3

/*
Copying data from existing table to the new table

Case 1: The new table simply doesn't exist
Case 2: The new table may exist
*/

/*
Case 1
******
1. All columns will be copied
2. Certain columns will be copied
*/

-- 1. All columns will be copied
SELECT * INTO New_Table_1 FROM DBO.Sales
SELECT * FROM New_Table_1

/*
NOTE: This statement will result in the creation of New_Table_1 which 
will be having structure & records both same as DBO.Sales table
*/

-- Remove table from database
DROP TABLE New_Table_1

-- 2. Certain columns will be copied
SELECT ProductID, Quantity INTO New_Table_1 FROM DBO.Sales
SELECT * FROM New_Table_1

/*
Case 2: The new table may exist
1. Only copy the structure
2. Copy all columns
3. Copy certain columns
*/
-- 1. Only copy the structure
SELECT TOP 0 * INTO New_Table_2 FROM DBO.Sales -- copy only schema structure
SELECT * FROM New_Table_2

-- 2. Copy all columns
INSERT INTO New_Table_2 SELECT * FROM DBO.Sales
SELECT * FROM New_Table_2

-- 3. Copy certain columns
-- Copy structure only
SELECT * INTO New_Table_3 FROM DBO.Sales WHERE 1 = 0  -- copy only schema structure
SELECT * FROM New_Table_3

-- Copied ProductID and SaleDate data
INSERT INTO New_Table_3 (ProductID, SaleDate) SELECT ProductID, SaleDate FROM DBO.Sales
SELECT * FROM New_Table_3

-- Copied Quantity and TotalAmount data (Wrong way)
INSERT INTO New_Table_3 (CustomerID, StoreID) SELECT Quantity, TotalAmount FROM DBO.Sales
SELECT * FROM New_Table_3
-- NOTE: Better to use only JOIN

/*
NOTE: Cannot use the following script cause the table already existed. 
SELECT Quantity, TotalAmount INTO New_Table_3 FROM DBO.Sales
*/