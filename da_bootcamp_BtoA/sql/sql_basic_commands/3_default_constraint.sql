
/*
Default constraint
*****************
It provides default values to columns.
*/

USE constraints

-- Case 1: For new tables
CREATE TABLE test_default(
EID INT DEFAULT 5,
FirstName VARCHAR(256) DEFAULT 'Htet',
LastName VARCHAR(256),
Age TINYINT)

SELECT * FROM test_default

INSERT INTO test_default VALUES (1,'Htet','Aung',31)

INSERT INTO test_default(LastName, Age) VALUES ('Lynn',32)

INSERT INTO test_default VALUES (NULL,NULL,'Aung',22)

INSERT INTO test_default(LastName) VALUEs('Naing')

SELECT * FROM test_default

-- Case 2: For existing tables
ALTER TABLE test_default
ADD DEFAULT 20 FOR Age

INSERT INTO test_default(LastName) VALUES('Jame')

SELECT * FROM test_default