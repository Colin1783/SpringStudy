# Join : 여러 테이블을 묶어서 조회하는 법

USE w3schools;

SELECT *
FROM Products;

SELECT *
FROM Categories;

SELECT *
FROM Products
WHERE ProductName = 'chais';
SELECT *
FROM Categories
WHERE CategoryID = 1;

SELECT ProductName, CategoryName
FROM Products
         JOIN Categories
WHERE ProductName = 'chais';

