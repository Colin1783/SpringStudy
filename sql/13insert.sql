USE w3schools;


#INSERT INTO Table(Columns)
# VALUE (Or VALUES)

SELECT *
FROM Employees
ORDER BY EmployeeID DESC;

DESC Employees;

INSERT INTO Employees
    (LastName, FirstName, BirthDate, Photo, Notes)
VALUES ('Stark', 'Tony', '1959-05-01', 'EmpID9', 'Tony is Ironman wearing MK42');

DELETE
FROM Employees
WHERE EmployeeID BETWEEN 2036 AND 2037;

INSERT INTO Employees
    (LastName, FirstName, BirthDate, Photo, Notes)
VALUES ('Logers', 'Steve', '1905-01-01', 'pic1', 'Steve Logers is Captain America, having shield.');

INSERT INTO Employees
    (FirstName, LastName)
VALUES ('Natasha', 'Romanoff');




# todo: 새 고객을

INSERT INTO Customers
(CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Wayne Entertainment', 'Bruce Wayne', 'wherever','Gotham city, Washington','12345','USA')

INSERT INTO Customers
(CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Ásgarðr', 'Thor Odinson', 'wherever','whatever','12345','Sweden');

DELETE
FROM Customers
WHERE CustomerID = (SELECT MAX(CustomerID) FROM Customers);

SELECT *
FROM Customers
ORDER BY CustomerID DESC;

SELECT *
FROM Employees
ORDER BY EmployeeID DESC;