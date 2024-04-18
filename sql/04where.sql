USE w3schools;
-- SELECT 에 컬럼명
-- FROM에 테이블명
-- WHERE 솎아낼 레코드 조건
SELECT CustomerName, City, Country
FROM Customers
WHERE City = 'Berlin';

SELECT CustomerName, City, Country
FROM Customers
WHERE Country = 'Germany';

-- 컬럼명 비교연산ㄴ자 값
# 값에 ''로 감싸기(수 형식은 생략 가능)

SELECT *
FROM Customers
WHERE CustomerID = 1;

# 비교 연산자 종류 : =, <, >, <=, >= + != or <>
SELECT *
FROM Customers
WHERE CustomerID = 3;

SELECT *
FROM Customers
WHERE CustomerID < 3;

SELECT *
FROM Customers
WHERE CustomerID <= 3;

SELECT *
FROM Customers
WHERE CustomerID > 80;

SELECT *
FROM Customers
WHERE CustomerID >= 80;

SELECT *
FROM Customers
WHERE CustomerID <> 1;
-- WHERE CustomerID != 1;

# 문자열 형식
SELECT *
FROM Customers
WHERE CustomerName >= 'S'; -- 대소문자 구문 없음

SELECT *
FROM Customers
WHERE Country < 'G';

SELECT *
FROM Employees
WHERE BirthDate >= '1960-01-01';

SELECT *
FROM Suppliers
WHERE Country = 'USA';

SELECT FirstName, LastName
FROM Employees;
SELECT *
FROM Products
WHERE CategoryID = 3;

SELECT *
FROM Products
WHERE Price >= 20;

SELECT *
FROM Orders
WHERE OrderDate < '1997-01-01';

SELECT *
FROM Products;

SELECT *
FROM Orders
WHERE OrderDate LIKE '%1997%';