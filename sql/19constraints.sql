# 19constraints.sql 제약사항
USE w3schools;

# 특정 컬럼에 제약사항을 줘서
# 필수 값, 기본값, 중복불허 등

# NOT NULL

CREATE TABLE my_table11
(
    col1 VARCHAR(10),
    col2 VARCHAR(10) NOT NULL
);

INSERT INTO my_table11
    (col1, col2)
VALUES ('value1', 'value2');

INSERT INTO my_table11
    (col2)
VALUES ('value1');

SELECT *
FROM my_table11
WHERE col1 IS NULL;

SELECT *
FROM my_table11
WHERE col1 IS NOT NULL;

DESC my_table11;

CREATE TABLE my_table12
(
    ID   INT UNIQUE  NOT NULL,
    Name VARCHAR(12) NOT NULL
);

INSERT INTO my_table12
    (ID, Name)
VALUES (1, '홍길동');

DESC my_table12;

SELECT *
FROM my_table12