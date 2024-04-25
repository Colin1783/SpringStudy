#default
USE w3schools;
#Default : 값을 주지 않을 때의 기본값

CREATE TABLE my_table13
(
    col1 VARCHAR(10),
    col2 VARCHAR(10) DEFAULT 'abc'
);

INSERT INTO my_table13
    (col1, col2)
VALUES ('가', '나');

INSERT INTO my_table13
    (col1)
VALUES ('def');

SELECT *
FROM my_table13;

INSERT INTO my_table13
    (col1, col2)
VALUES ('123', NULL);

CREATE TABLE my_table14
(
    ID    INT NOT NULL,
    Name  VARCHAR(10)  DEFAULT '홍길동',
    Age   INT NOT NULL DEFAULT 18,
    Hobby VARCHAR(3000)
);

INSERT INTO