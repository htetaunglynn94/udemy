use employee_details

-- Filter "LastName" and "EmployeeID" using int 3
select * from EmployeeRecords
where LastName = 'Miller' and EmployeeID = 3

-- Filter "LastName" and "EmployeeID" using string 3
select * from EmployeeRecords
where LastName = 'Miller' and EmployeeID = '3'

-- Filter Dempartment using 'HR' and 'Finance' parameters
select * from dbo.EmployeeRecords
where Department = 'HR' or Department = 'Finance'

-- Filter Dempartment using 'HR' and 'Finance' parameters, finally 'Salary'
select * from dbo.EmployeeRecords
where (Department = 'HR' or Department = 'Finance')
and Salary = 60000