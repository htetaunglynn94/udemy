
USE Student

SELECT * FROM Student_details

INSERT INTO Student_details (Age, Event_Date)
VALUES (34,'2023-02-23'),(22,'2024-05-21'),(33,'2025-11-20')

SELECT * FROM Student_details

-- Check data type of age column
SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME LIKE 'Student_details'

-- The tinyint range is from 0 to 255
-- The result will show overflow
INSERT INTO Student_details (Age)
VALUES (257)