
/*
Check constraint
****************
It checks for certain condition that can be applied on the columns of a table,
if this condition does not fulfilled, we will not be able to insert the records into 
the table.
*/

USE constraints

-- Case 1: For new table
CREATE TABLE test_check(
EID INT,
FirstName VARCHAR(256),
Age TINYINT CHECK(AGE>=10)) -- Condition check before added data

SELECT * FROM test_check

INSERT INTO test_check VALUES (1,'Htet','20')

-- Error: Age does not meet the condition
INSERT INTO test_check VALUES (2,'Aung','9')
INSERT INTO test_check VALUES (2,'Aung',19)

-- Case 2: For existing table
UPDATE test_check SET EID = 11 WHERE EID = 1

UPDATE test_check SET EID = 6 WHERE EID = 2

ALTER TABLE	test_check
ADD CHECK (EID > 5)

SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME LIKE 'test_check'

-- Error: EID does not meet the condition
INSERT INTO test_check VALUES (3,'lynn','24')

SELECT * FROM test_check