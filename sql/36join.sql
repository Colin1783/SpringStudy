USE w3schools;

SELECT *
FROM Products
WHERE ProductID = 1;

SELECT *
FROM Products
         JOIN Categories ON Products.CategoryID = Categories.CategoryID
WHERE ProductID = 1;

SELECT p.ProductName, s.SupplierName, s.Country
FROM Products p
         JOIN Suppliers s ON p.SupplierID = s.SupplierID
WHERE ProductID = 10;

#10249 번 주문을 한 고객의 이름
SELECT o.OrderID, c.CustomerName
FROM Orders o
         JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE OrderID = 10249;

#10249 번 주문을 배송한 Shipper의 이름
SELECT o.OrderID, s.ShipperName
FROM Orders o
         JOIN Shippers s ON o.ShipperID = s.ShipperID
WHERE OrderID = 10249


#3번 직원이 주문을 처리한 날짜들을 오름차순으로 조회
SELECT e.LastName, e.FirstName, o.OrderDate
FROM Employees e
         JOIN Orders o ON e.EmployeeID = o.EmployeeID
WHERE e.EmployeeID = 3
ORDER BY OrderDate;