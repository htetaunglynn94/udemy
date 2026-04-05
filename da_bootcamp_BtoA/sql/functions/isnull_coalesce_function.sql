
USE ProfitDB

SELECT * FROM Customers

---------| ISNULL() |---------
-- If the value is NULL, output NULL. Unless ouput value.
SELECT ISNULL(NULL, '1st value null')

SELECT ISNULL('abc', NULL)

SELECT ISNULL(NULL, NULL)

---------| COALESCE() |---------
SELECT COALESCE('A','B','C')   -- OUTPUT: A

SELECT COALESCE(NULL,'B','C')  -- OUTPUT: B

SELECT COALESCE(NULL,NULL,'C') -- OUTPUT: C

-- ERROR: at least one arguments must be NULL
SELECT COALESCE(NULL,NULL,NULL)

----
SELECT * FROM Customers

SELECT CustomerID, Email, PhoneNumber FROM Customers

-- ISNULL(): Replace NULL data with 'Not Available'
SELECT CustomerID, 
ISNULL(Email,'Not Available'), 
ISNULL(PhoneNumber,'Not Available') 
FROM Customers

-- COALESCE(): Replace NULL email with phone number. Unless output 'Contact Not Available'
SELECT CustomerID,
COALESCE(Email, PhoneNumber, 'Contact Not Available') 
FROM Customers