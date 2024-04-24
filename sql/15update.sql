#15update.sql

USE w3schools;

#UPDATE 테이블명
#SET 컬럼명 = 바꿀 값, 컬럼명 = 바꿀 값...
#WHERE 레코드 조건

#UPDATE 전에 같은 WHERE로 SELECT 해보기!

SELECT *
FROM Customers
WHERE CustomerID = 10;

UPDATE Customers
SET ContactName = 'Elizabeth Olson'
WHERE CustomerID = 10;

UPDATE Customers
SET Address     = 'Avengers Tower',
    ContactName = 'Elizabeth Olson',
    City        = 'NewYork',
    Country     = 'USA'
WHERE CustomerID = 10;

SELECT *
FROM Customers
WHERE Country = 'United Kingdom';

UPDATE Customers
Set Country = 'United Kingdom'
WHERE Country = 'UK';

SELECT *
FROM Products
WHERE ProductID = 1;

UPDATE Products
SET Price = price * 2
WHERE ProductID = 1;

SELECT *
FROM Products
WHERE CategoryID = 2;

UPDATE Products
SET Price = price / 3
WHERE CategoryID = 2;
