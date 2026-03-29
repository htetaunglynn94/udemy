
use employee_details

-- Usage of NOT operator
select * from dbo.EmployeeRecords
where not FirstName = 'John'
and not Salary = 60000

select * from dbo.EmployeeRecords
where not LastName = 'Miller'
or not Department = 'HR'

-- Usage of BETWEEN---AND operator
select * from dbo.EmployeeRecords
where Salary between 75000 and 85000

select * from dbo.EmployeeRecords
where Salary>=75000 and Salary<=85000

select * from dbo.EmployeeRecords
where Salary not between 75000 and 85000

select * from dbo.EmployeeRecords
where not Salary between 75000 and 85000

-- Usage of "IN" operator 
select * from dbo.EmployeeRecords
where Department = 'HR' or Department = 'IT'

select * from dbo.EmployeeRecords
where Department in ('HR','IT')

select * from dbo.EmployeeRecords
where Department not in ('HR','IT')