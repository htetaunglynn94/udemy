
-- CREATE DATABASE constraints

USE constraints

/*
Constraints
***********
Conditions that can be applied on columns of a table & these conditions are to be followed 
while inserting records into the table.
*/

-- DROP TABLE test_not_null

-- Case 1: create new table
CREATE TABLE test_not_null(
EID INT NOT NULL,
Age TINYINT,
FirstName VARCHAR(256))

SELECT * FROM test_not_null

SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME LIKE 'TEST_NOT_NULL'

INSERT INTO test_not_null VALUES (1, 23,'Htet')

-- EID column is a non-nullable column. Shows error.
INSERT INTO test_not_null VALUES (NULL, 23,'Aung') -- Add null val to EID (NOK)

INSERT INTO test_not_null VALUES (2, NULL,'Lynn') -- Add null val to Age (OK)

INSERT INTO test_not_null VALUES (3, 33,NULL) -- Add null val to FirstName (OK)

-- To alter data type, remove null data first from FirstName column
DELETE FROM test_not_null WHERE FirstName IS NULL

SELECT * FROM test_not_null

-- Case 2: existed table
-- Convert FirstName column non-nullable
SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME LIKE 'test_not_null'

ALTER TABLE test_not_null
ALTER COLUMN FirstName VARCHAR(256) NOT NULL

INSERT INTO test_not_null VALUES (5,34,NULL) -- Add null val to FirstName (NOK)

INSERT INTO test_not_null VALUES (3,NULL,'Aung')

SELECT * FROM test_not_null



