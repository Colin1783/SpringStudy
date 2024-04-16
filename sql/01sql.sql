# SQL 주석
-- SQL 주석

# 명령문 실행 ctrl + Enter

SELECT *
FROM w3schools.Employees;
SELECT *
FROM w3schools.Customers;

# table : 데이터들이 저장되는 공간
# 행(records, data, row), 열(field, attribute, column)

# schema : table 들이 정의되어 있는 곳

# schema 만들기
CREATE DATABASE test1;
# 새 테이블 만들기
CREATE TABLE test1.test
(
    id   int,
    name varchar(20)
);

# 데이터베이스명.테이블명
SELECT *
FROM test1.test;

# 현재 사용중인 데이터베이스 선택

USE test1;

SELECT *
FROM test;

SELECT *
FROM w3schools.Customers;

USE w3schools;

SELECT *
FROM Customers;
SELECT *
FROM Employees;
SELECT *
FROM Suppliers;

#테이블의 컬럼들 조회
DESCRIBE Customers;

DESC Customers;
DESC Employees;

# SELECT에 나열한 컬럼명의 순선대로 결과가 나옴
SELECT LastName, FirstName
FROM Employees;

#SQL 작성시 관습 : 키워드는 대문자, 나머지는 소문자
