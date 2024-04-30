USE mydb2;

SELECT *
FROM product;

SELECT *
FROM category;

SELECT *
FROM category c
         LEFT JOIN product p
                   ON c.id = p.category_id
WHERE p.id IS NULL;

USE w3schools;

SELECT c.CustomerName
FROM Orders o
         RIGHT JOIN Customers c
                    ON o.CustomerID = c.Customerid
WHERE OrderID IS NULL;

SELECT DISTINCT CustomerName
FROM Orders o
         JOIN Customers c
              ON o.CustomerID = c.CustomerID
WHERE OrderDate LIKE '1996-__-__'
ORDER BY CustomerName;

DELETE
FROM Orders
WHERE OrderDate >= '1997-01-01';

SELECT o.OrderID, c.CustomerName
FROM Orders o
         RIGHT JOIN Customers c
                    ON o.CustomerID = c.CustomerID;

INSERT INTO Employees
    (LastName, FirstName)
VALUES ('흥민', '손'),
       ('강인', '이');

SELECT o.OrderID, e.LastName, FirstName
FROM Orders o
         RIGHT JOIN Employees e
                    ON e.EmployeeID = o.EmployeeID
WHERE OrderID IS NULL;
