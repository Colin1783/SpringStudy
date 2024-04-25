USE w3schools;

#CREATE TABLE: 새 테이블 만들기
#테이블 만들 때 column 명을 정해줘야 함

#CREATE TABLE (
#컬럼명 1 컬럼 타입,
#컬럼명 2 컬럼 타입,
#)

#Table, column : (upper/lower)snake case
CREATE TABLE my_table1
(
    address varchar(30),
    city    varchar(50),
    country varchar(20)
);

INSERT INTO my_table1
    (address, city, country)
VALUES ('신촌', '서울', '한국');

SELECT *
FROM my_table1;

DESCRIBE my_table1;

CREATE TABLE my_table2
(
    name varchar(30),
    age  varchar(30)
);

DESCRIBE my_table2;

INSERT INTO my_table2
    (name, age)
VALUES ('손흥민', '32세');

SELECT *
FROM my_table2;