
USE constraints
/*
Unique Constraint
*****************
It ensures that a column consists of unique values.

Case 1: Create new tables
Case 2: Existing tables
*/

-- Case 1: Create new tables
CREATE TABLE test_unique(
SID INT UNIQUE,                          -- must be unique values
Age TINYINT NOT NULL,                    -- must be non-nullable
FirstName VARCHAR(256) NOT NULL UNIQUE,  -- must be unique & non-nullable
LastName VARCHAR(256))                   -- normal

SELECT * FROM test_unique

INSERT INTO test_unique VALUES (1,22,'Htet','Aung')

-- ERROR: SID must be unique
INSERT INTO test_unique VALUES (NULL,24,'Thiha','Naing')

-- SID col is nullable
INSERT INTO test_unique VALUES (NULL,34,'Lady','Gaga')

-- ERROR: SID must be unique (not NULL again)
INSERT INTO test_unique VALUES (NULL,32,'Thida','Oo')

-- Remove all data
TRUNCATE TABLE test_unique

-- Case 2: Existing table
ALTER TABLE test_unique
ADD UNIQUE (LastName) -- convert LastName column as UNIQUE

SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME LIKE 'test_unique'

INSERT INTO test_unique VALUES (NULL,24,'Thiha','Naing')
-- ERROR: LastName must be UNIQUE
INSERT INTO test_unique VALUES (1,26,'Thura','Naing')