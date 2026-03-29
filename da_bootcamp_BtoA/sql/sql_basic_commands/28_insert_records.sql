
USE Student

SELECT * FROM Student_details

INSERT INTO Student_details
VALUES
('Thazin Oo','F',27,'2023-12-30',125.31),
('Thura Maung','M',25,'2026-02-11',101.37),
('Thazin Oo','F',27,'2023-12-30',125.31),
('Kyaw Thiha','M',32,'2025-10-30',211.95)

SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME LIKE 'Student_details'

INSERT INTO Student_details(Student_Name, Gender)
VALUES('Thadar Htet','F')

SELECT * FROM Student_details