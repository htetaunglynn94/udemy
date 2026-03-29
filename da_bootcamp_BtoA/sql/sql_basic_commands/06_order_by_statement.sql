
use employee_details

-- Order by ascending order
select * from [dbo].[Employees]
order by Salary

-- Order by descending order
select * from [dbo].[Employees]
order by Salary desc

-- Order by "FirstName" (Ascending) and "Salary" (Descending) 
select * from [dbo].[Employees]
order by FirstName asc, Salary desc

-- Order by "Department" (Ascending) and "Salary" (Descending) 
select * from [dbo].[Employees]
order by Department asc, Salary desc