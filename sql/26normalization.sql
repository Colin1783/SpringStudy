#Normalization 정규화

#First Normal Form 1NF 제1정규화
# 1) 각 행을 유일하게 구분하는 컬럼이 존재한다(Primary Key가 있다)
# 2) 모든 데이터는 원자적으로 저장된다(쪼갤 수 없음)

CREATE DATABASE mydb1;

USE mydb1;

#Primary Key
#바뀔 가능성이 없고 의미가 없는 컬럼

#고객 정보를 저장한 테이블(고객명, 이메일, 전화번호, 주소, 주민등록 번호)
CREATE TABLE customers
(
    id         INT PRIMARY KEY auto_increment,
    first_name VARCHAR(10),
    last_name  VARCHAR(30)
);

CREATE TABLE phone_number
(
    customer_id  INT,
    phone_number VARCHAR(30),
    FOREIGN KEY (customer_id) REFERENCES customers (id)
);

INSERT INTO customers
    (first_name, last_name)
VALUES ('hm', 'son');

INSERT INTO phone_number
    (customer_id, phone_number)
VALUES (3, '010-1234-5678');

SELECT *
FROM customers;

SELECT *
FROM phone_number;

DELETE
FROM phone_number
where phone_number = '010-1234-5678';
#Second Normal Form 2NF 제2정규화
# 1) 1NF를 만족
# 2) 키가 아닌 컬럼이 키 컬럼 일부분에 의해 결정되면 안됨
# 3) INT PRIMARY KEY AUTO-INCREMENT 컬럼이 있으면 해결
#Third Normal Form 3NF 제3정규화