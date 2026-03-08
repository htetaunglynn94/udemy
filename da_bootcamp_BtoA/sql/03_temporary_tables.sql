use employee_details

-- Create temporary table "#temp1" from Employees table
select * into #temp1 from [dbo].[Employees]

select * from #temp1
select * from dbo.Employees
-- NOTE: one '#' signed temp table cannot be called from new query. Test in new auery.

-- Create temporary table "##temp2" from EmployeeRecords table
select * into ##temp2 
from [dbo].[EmployeeRecords]

select * from ##temp2
-- NOTE: two '#' signed temp table can be called from new query. Test in new query.
-- But it can be only showed while the original instance has been opened.