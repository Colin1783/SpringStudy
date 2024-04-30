CREATE DATABASE mydb2;

USE mydb2;

CREATE TABLE table1
(
    col_a INT
);

CREATE TABLE table2
(
    col_b INT
)

INSERT INTO table1
(col_a)
VALUES (1),(2),(3),(4);

SELECT *
FROM table2;

INSERT INTO table2
(col_b)
VALUES (2),(3),(4),(5);

# 컬럼수 두 테이블 컬럼의 합
# 행 수 두 테이블 행의 곱
# Cartesian Product
SELECT *
FROM table1 JOIN table2
ORDER BY col_a, col_b;

SELECT *
FROM table1
    INNER JOIN table2 ON col_a = col_b
ORDER BY col_a, col_b;
# 다르게 쓰면
SELECT *
FROM table1 JOIN table2
where col_a = col_b;


CREATE TABLE table3
(col_a INT);

CREATE TABLE table4
(col_b INT);

INSERT INTO table3
(col_a)
VALUES (5), (6), (7);

INSERT INTO table4
(col_b)
VALUES (7), (6), (7), (8);

SELECT *
FROM table3 JOIN table4;

SELECT *
FROM table3
INNER JOIN table4 ON col_a = col_b;