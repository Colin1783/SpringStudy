USE w3schools;

#ALTER TABLE: 테이블 구조 변경
# 컬럼 추가
# 컬럼 삭제
# 커럼 변경 (이름, 자료형, 제약사항)

CREATE TABLE my_table23
(
    name VARCHAR(3),
    age  INT
);

INSERT INTO my_table23
    (name, age)
VALUES ('son', 32),
       ('lee', 24);

ALTER TABLE my_table23
    ADD COLUMN address VARCHAR(50);

DESC my_table23;

SELECT *
FROM my_table23;

ALTER TABLE my_table23
    ADD COLUMN country VARCHAR(20) NOT NULL;

ALTER TABLE my_table23
    DROP COLUMN country;

SELECT @@sql_mode;

ALTER TABLE my_table23
    RENAME COLUMN address to residence;

ALTER TABLE my_table23
    MODIFY COLUMN age DEC(4, 2);

show index FROM my_table23;