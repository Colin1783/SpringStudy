USE w3schools;

# LIKE WILDCARD로 조회
# _ 한글자 아무거나
#% 0개 이상의 글자 아무거나

SELECT *
FROM Products
WHERE ProductName LIKE 'cha__';

SELECT *
FROM Orders
WHERE OrderDate LIKE '199_-12-__';

SELECT *
FROM Products
WHERE ProductName LIKE '%anton%';

SELECT *
FROM Customers
WHERE CustomerName LIKE 'b%';

SELECT *
FROM Customers
WHERE Country LIKE '%a';

SELECT *
FROM Orders
WHERE OrderDate LIKE '____-__-_1';