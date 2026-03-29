
-- Primary Key constraint
USE constraints

-- Case 1: For new table
CREATE TABLE test_pk_1 (
EID INT PRIMARY KEY,
Gender CHAR(1),
Age TINYINT,
FirstName VARCHAR(256))

INSERT INTO test_pk_1 VALUES(1,'M',31,'Htet')

-- Error: EID is a Primary Key (must be unique value)
INSERT INTO test_pk_1 VALUES(1,'F',31,'Sinthia')

-- Error: EID is a Primary Key (must be non-null value)
INSERT INTO test_pk_1 VALUES (NULL,'M',21,'Lynn')

TRUNCATE TABLE test_pk_1

SELECT * FROM test_pk_1

-- Case 2: For existing table
-- Error: Only one Primary Key must have in a table
ALTER TABLE test_pk_1
ADD PRIMARY KEY (Age)

CREATE TABLE test_pk_2(
SID INT,
FirstName NVARCHAR(256),
Age TINYINT)

-- NOTE: Primary Key can be 2 columns but must non-nullable
-- ALTER COLUMN can takes once a time
ALTER TABLE test_pk_2
ALTER COLUMN SID INT NOT NULL

ALTER TABLE test_pk_2
ALTER COLUMN Age TINYINT NOT NULL

ALTER TABLE test_pk_2
ADD PRIMARY KEY (SID, Age) 

DROP TABLE test_pk_2

CREATE TABLE test_pk_2(
SID INT NOT NULL UNIQUE,
FirstName NVARCHAR(256),
Age TINYINT NOT NULL)

ALTER TABLE test_pk_2
ADD PRIMARY KEY (SID)

SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME LIKE 'test_pk_2'