USE w3schools;

# and 여러조건 만족
# or 하나의 조건 만족

SELECT *
FROM Products
WHERE ProductName LIKE 'a%'
   OR ProductName LIKE 'c%';

SELECT *
FROM Products
WHERE ProductName LIKE 'c%'
  AND ProductName LIKE '%ng'
  AND Price < 20;

# where 의  조건을 () 사용해서 우선순위 결정
SELECT *
FROM Products
WHERE SupplierID = 2
  AND (CategoryID = 2
    OR Price > 20);

SELECT *
FROM Customers
WHERE Country = 'usa'
   OR Country = 'uk';

SELECT *
FROM Customers
WHERE City = 'madrid'
   OR City = 'london';

SELECT *
FROM Orders
WHERE OrderDate >= '1997-05-01'
  AND OrderDate <= '1997-05-31'