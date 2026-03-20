
-- Create new database
CREATE DATABASE Student

-- Select table
USE Student

-- Create table
CREATE TABLE Student_details(
Student_Name nvarchar(256),
Gender char(1),
Age tinyint,
Event_Date date,
Distance decimal(5,2))

-- Check table
SELECT * FROM Student_details

-- Insert values
INSERT INTO Student_details(Student_Name, Gender, Age, Event_Date, Distance)
VALUES
('Htet Aung Lynn','M',31,'2024-03-14',123.11),
('Salai No Zin Win','M',28,'2025-03-17',120.15),
('Thuzer Win','F',26,'2023-07-14',144.21),
('Yamin Thant','F',27,'2026-01-08',211.34)

SELECT * FROM Student_details