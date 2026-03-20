
USE employee_details

SELECT * FROM DBO.Employees

INSERT INTO DBO.Employees
VALUES (9, 'Jay', '', 'IT',73000,'2022-04-04')

INSERT INTO DBO.Employees
VALUES (10, 'Nition', 'Shamani', '0',54000,'2021-04-04')

-- Wrong statement
SELECT * FROM DBO.Employees WHERE Department = NULL

-- Correct statement to check NULL values
SELECT * FROM DBO.Employees WHERE Department IS NULL
-- Correct statement to check Non-NULL values
SELECT * FROM DBO.Employees WHERE Department IS NOT NULL