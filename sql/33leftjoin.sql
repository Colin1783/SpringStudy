# LEFT OUTER JOIN

USE mydb2;

SELECT *
FROM table1;

SELECT *
FROM table2;

SELECT *
FROM table1
         LEFT JOIN table2 ON col_a = col_b;


DELETE
FROM table3
WHERE col_a;

INSERT INTO table3
    (col_a)
VALUES (4),
       (5),
       (6),
       (3);

DELETE
FROM table4
WHERE col_b;

INSERT INTO table4
    (col_b)
VALUES (5),
       (6),
       (7),
       (7),
       (8);

#1
SELECT *
FROM table3
         JOIN table4;

#2
SELECT *
FROM table3
         INNER JOIN table4 ON col_a = col_b;

#3
SELECT *
FROM table3
         LEFT JOIN table4 ON col_a = col_b;

# RIGHT JOIN
SELECT *
FROM table3
         RIGHT JOIN table4 ON col_b = col_a;

SELECT *
FROM table1
         RIGHT JOIN table2 ON col_a = col_b;