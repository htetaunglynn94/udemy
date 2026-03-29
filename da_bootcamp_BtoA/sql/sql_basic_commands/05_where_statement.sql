
use employee_details

select * from [dbo].[EmployeeRecords]
where EmployeeID = 2

select concat(FirstName, ' ',  LastName) 
from [dbo].[EmployeeRecords]
where EmployeeID = 2

select * from [dbo].[EmployeeRecords]
where Salary >= 75000.00

select * from [dbo].[EmployeeRecords]
where Salary < 75000.00

select distinct * from [dbo].[Employees]
where Salary < 75000.00

select FirstName, LastName, Department, Salary
from [dbo].[EmployeeRecords]
where Salary < 75000.00

select distinct FirstName, LastName, Department, Salary
from [dbo].[EmployeeRecords]
where Salary < 75000.00
-- NOTE: 'distinct' can only place at the first parameter

