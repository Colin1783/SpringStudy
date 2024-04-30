USE mydb2;

CREATE TABLE product
(
    id          INT PRIMARY KEY AUTO_INCREMENT,
    name        VARCHAR(10) NOT NULL,
    price       INT         NOT NULL DEFAULT 0,
    category_id INT,
    FOREIGN KEY product (category_id) REFERENCES category (id)
);

CREATE TABLE category
(
    id   INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(10) NOT NULL
);

INSERT INTO category
    (id, name)
VALUES (1, '초콜릿'),
       (2, '탄산음로'),
       (3, '과자'),
       (4, '유제품'),
       (5, '생필품');


INSERT INTO product
    (name, price, category_id)
VALUES ('가나', 500, 1),
       ('페레로로쉐', 700, 1),
       ('크런키', 400, 1),
       ('콜라', 300, 2),
       ('사이다', 300, 2),
       ('포카칩', 600, 3),
       ('새우깡', 550, 3);

SELECT *
FROM product
         JOIN category;

SELECT *
FROM product
         JOIN category ON category_id = category.id;