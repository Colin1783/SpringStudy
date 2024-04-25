#UNIQUE
#다른 레코드의 컬럼값이 중복되지 않음
USE w3schools;

CREATE TABLE my_table15
(
    col1 VARCHAR(10),
    col2 VARCHAR(3) UNIQUE
);

INSERT INTO my_table15
    (col1, col2)
VALUES ('value1', 'v2');

SELECT *
FROM my_table15;

DESC my_table16;

CREATE TABLE my_table16
(
    a INT,
    b INT UNIQUE,
    c INT NOT NULL UNIQUE
);

INSERT INTO my_table16
    (a, b, c)
VALUES (1, 3, 5);

SELECT *
FROM my_table16;
