#Third Normal Form 3NF 제3정규화
# 1) 제2정규형을 만족
# 2) 키가 아닌 컬럼끼리 종ㅎ속되면 안됨

USE mydb1;

DROP TABLE customers;

CREATE TABLE customers
(
    id         INT PRIMARY KEY auto_increment,
    first_name VARCHAR(10),
    last_name  VARCHAR(30),
    grade      INT,
    FOREIGN KEY (grade) REFERENCES grade (grade)
);

CREATE TABLE grade
(
    grade   INT PRIMARY KEY,
    benefit VARCHAR(100)
);

INSERT INTO customers
    (first_name, last_name, `grade`)
VALUES ('heungmin', 'son', 1),
       ('gangin', 'lee', 1),
       ('hasung', 'kim', 2),
       ('hasun', 'park', 2),
       ('steve', 'cap', 3);

INSERT INTO grade
    (grade, benefit)
VALUES (1, '무료배송'),
       (2, '할인'),
       (3, '라운지 이용');

DROP TABLE customers, grade;

SELECT *
FROM customers;