USE w3schools;

# PRIMARY KEY = NOT NULL UNIQUE
CREATE TABLE my_table17
(
    col1 INT,
    col2 INT PRIMARY KEY
);

INSERT INTO my_table17
    (col1, col2)
VALUES (1, 1);

CREATE TABLE my_table19
(
    col1 INT NOT NULL UNIQUE,
    col2 INT NOT NULL UNIQUE
);

CREATE TABLE my_table20
(
    col1 INT NOT NULL UNIQUE,
    col2 INT PRIMARY KEY
);

CREATE TABLE my_table21
(
    col1 INT,
    col2 INT,
    col3 INT,
    PRIMARY KEY (col1, col2)
);

DESC my_table22;
DESC my_table20;

CREATE TABLE my_table22
(
    col1 INT PRIMARY KEY,
    col2 INT NOT NULL UNIQUE,
    col3 INT
);

INSERT INTO my_table22
    (col1, col2, col3)
VALUES (1, 2, 3);