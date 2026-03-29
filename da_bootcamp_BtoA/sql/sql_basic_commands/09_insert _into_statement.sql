
use employee_details

select * from dbo.Employees

-- Insert a new value to the table
insert into dbo.Employees (EmployeeID,FirstName,LastName,Department,Salary,HireDate)
values (6,'Raj','Ambani','IT',67000,'2023-04-20')

-- Insert a new value to the table for specific columns
insert into dbo.Employees (EmployeeID,FirstName,LastName)
values (7,'Rohat','Mahera')

-- Insert a new value to the table without column names
insert into dbo.Employees
values (8, 'Htet','Aung','Engineer',80000,'2026-03-10')

select * from dbo.Employees

-- Check schema information 
SELECT * FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'EMPLOYEES'