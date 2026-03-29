
-- Foreign Key constraint
USE constraints

-- Case 1: For new table
CREATE TABLE test_primary_key(
ID INT PRIMARY KEY,
Name VARCHAR(256))

INSERT INTO test_primary_key VALUES (1,'Htet'), (2,'Aung'),(3,'Lynn')

SELECT * FROM test_primary_key

CREATE TABLE test_foreign_key(
ID INT FOREIGN KEY REFERENCES test_primary_key(ID),
Courses VARCHAR(256))

INSERT INTO test_foreign_key VALUES (1, 'A')

SELECT * FROM test_foreign_key

INSERT INTO test_foreign_key VALUES (NULL, 'B')

-- ERROR: The Foreign Key does not included in the table having Primary Key
INSERT INTO test_foreign_key VALUES (5, 'C')

-- Case 2: For existing table
CREATE TABLE test_foreign_key_2 (
ID INT,
Courses VARCHAR(256))

ALTER TABLE test_foreign_key_2
ADD FOREIGN KEY (ID) REFERENCES test_primary_key(ID)


