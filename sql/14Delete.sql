USE w3schools;

-- Delete

SELECT *
FROM Employees
ORDER BY EmployeeID DESC;

SELECT *
FROM Employees
WHERE FirstName = 'nancy'

#모든 레코드 지우기 : WHERE 없이
DELETE
FROM Employees;
