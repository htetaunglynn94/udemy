
-- Reportee & Manager

USE [SQL IQuestions]

SELECT * FROM ReportingStructure

SELECT B.EmployeeName [Reportee Name], A.EmployeeName[Manager Name]
FROM ReportingStructure A
JOIN ReportingStructure B ON 
A.EmployeeID = B.ManagerID
UNION ALL -- May include duplicates
SELECT EmployeeName, NULL [Manager Name] FROM ReportingStructure
WHERE ManagerID IS NULL

/*
NOTE:
- Table A gives Manager Name based on Employee ID.
- Table B gives Reportee Name with respect to their Manager ID.
- In JOIN function, NULL values are not considered.
*/