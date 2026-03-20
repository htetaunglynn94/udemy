
USE [Sales Database]

SELECT * FROM Employees_US

/*
WILDCARDS
1) % - may represent 0, 1 or multiple characcters
2) _ - exactly represent only 1 character
*/

--1) Find Employees whose Last Name starts with 'S'.
SELECT FirstName, LastName FROM Employees_US WHERE LastName LIKE 'S%'

--2) Find Employees whose First Name ends with 'a'.
SELECT FirstName, LastName FROM Employees_US WHERE FirstName LIKE '%a'

--3) Find Employees whose Department contains 'Eng'.
SELECT FirstName, LastName, Department FROM Employees_US WHERE Department LIKE '%eng%'

--4) Find Employees whose Last Name is exactly 5 characters long.
SELECT FirstName, LastName FROM Employees_US WHERE LastName LIKE '_____'

--5) Find Employees whose First Name starts with 'C' or 'D'.
SELECT FirstName, LastName FROM Employees_US WHERE FirstName LIKE '[CD]%'

--6) Find Employees whose Last Name contains 'son'.
SELECT FirstName, LastName FROM Employees_US WHERE LastName LIKE '%son%'

--7) Find Employees whose First Name contains the letter 'i' as the second character.
SELECT FirstName, LastName FROM Employees_US WHERE FirstName LIKE '_i%'

--8) Find Employees whose Last Name starts with any letter between 'A' and 'L'.
SELECT FirstName, LastName FROM Employees_US WHERE LastName LIKE '[A-L]%'

--9) Find Employees whose First Name does not contain 'o'.
SELECT FirstName, LastName FROM Employees_US WHERE FirstName NOT LIKE '%o%'

--10) Find Employees whose Last Name ends with 'a' and is exactly 6 characters long.
SELECT FirstName, LastName FROM Employees_US WHERE LastName LIKE '_____a'

--11) Find Employees whose Department starts with 'Mar' and ends with 'ing'.
SELECT FirstName, LastName, Department FROM Employees_US WHERE Department LIKE 'Mar%ing'

--12) Find Employees whose First Name has an 'a' in the third position.
SELECT FirstName, LastName FROM Employees_US WHERE FirstName LIKE '__a%'

--13) Find Employees whose Last Name starts with 'Br' or 'Bl'.
SELECT FirstName, LastName FROM Employees_US WHERE LastName LIKE 'Br%' or LastName LIKE 'Bl%'

--14) Find Employees whose First Name starts with a vowel.
SELECT FirstName, LastName FROM Employees_US WHERE FirstName LIKE '[AEIOU]__a%'

--15) Find Employees whose First Name does not start with a consonant.
SELECT FirstName, LastName FROM Employees_US WHERE FirstName NOT LIKE '[^AEIOU]%'

--16) Find Employees whose First Name starts with a consonant.
SELECT FirstName, LastName FROM Employees_US WHERE FirstName LIKE '[^AEIOU]%'
