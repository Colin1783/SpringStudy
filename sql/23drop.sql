USE w3schools;

#DROP
CREATE TABLE table100
(
    col1 VARCHAR(10) UNIQUE
);

DESC table100;

ALTER TABLE table100
    MODIFY col1 INT NOT NULL;

DROP TABLE table100;
