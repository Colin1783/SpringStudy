USE w3schools;

INSERT INTO Customers
    (CustomerName, ContactName, Address, City, PostalCode, Country)
SELECT CustomerName, ContactName, Address, City, PostalCode, Country
FROM Customers;

SELECT *
FROM Customers;

DELETE
FROM Customers
WHERE CustomerID BETWEEN 361 AND 636;

SELECT Count(*)
FROM Employees;

INSERT INTO Employees
    (LastName, FirstName, BirthDate, Photo, Notes)
SELECT LastName, FirstName, BirthDate, Photo, Notes
FROM Employees;

SELECT EmployeeID
FROM Employees
LIMIT 368;

DELETE
FROM Employees
WHERE EmployeeID > 580;

SELECT *
FROM Employees
ORDER BY EmployeeID