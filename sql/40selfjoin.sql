USE mydb2;

CREATE TABLE employee
(
    id      INT PRIMARY KEY,
    name    VARCHAR(20) NOT NULL,
    info    VARCHAR(20) NOT NULL,
    manager INT
);

INSERT INTO employee
    (id, name, info, manager)
VALUES (1, '손훙민', '과장', 6),
       (2, '이강인', '대리', 1),
       (3, '이정후', '사원', 1),
       (4, '황희찬', '대리', 1),
       (5, '차범근', '사장', null),
       (6, '박지성', '차장', 5);

SELECT *
FROM employee;

SELECT m.id, m.name
FROM employee e
         JOIN employee m
              ON e.manager = m.id
WHERE e.name = '손훙민';

SELECT m.id, m.name
FROM employee e
         JOIN employee m
              ON e.manager = m.id
WHERE e.name = '이정후';

EXPLAIN
SELECT e.id, e.name
FROM employee m
         JOIN employee e
              ON m.id = e.id
WHERE m.manager = '1';

