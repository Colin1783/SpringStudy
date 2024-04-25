#사용할 DB(==schema)
USE w3schools;

SHOW tables;

#새 데이터 베이스 만들기
CREATE DATABASE mydb1;
USE mydb1;

SHOW TABLES;

CREATE TABLE my_table1
(
    name VARCHAR(10),
    age  INT
);

CREATE DATABASE mydb2;
USE mydb2;
CREATE TABLE my_table1
(
    engine VARCHAR(15),
    tire   VARCHAR(10),
    frame  VARCHAR(20)
);

SHOW TABLES;

DROP DATABASE mydb2;

DROP DATABASE mydb1;

USE w3schools;