#문자열
#varchar(length), char(length)

USE w3schools;

CREATE TABLE my_table3
(
    name  varchar(3),
    title varchar(5),
    notes varchar(1000)
);

DESC my_table3;

INSERT INTO my_table3
    (name, title, notes)
VALUES ('이강인', '축구선수', '파리생제르망');

INSERT INTO my_table3
    (name, title, notes)
VALUES ('김동현', '파이터', '은퇴');

CREATE TABLE my_table4
(
    title   varchar(30),
    content varchar(2000),
    author  varchar(10)
);

ALTER TABLE my_table4
    MODIFY COLUMN title varchar(100);

DESC my_table4;

INSERT INTO my_table4
    (title, content, author)
VALUES ('베스트셀러불변의 법칙절대 변하지 않는 것들에 대한 23가지 이야기', '세계적인 베스트셀러 《돈의 심리학》의 저자 모건 하우절이 3년 만에 세상에 내놓은 신작.‘절대 변하지 않는 것들에 대한 23가지 이야기’를 전한다. 출간하자마자 아마존과 뉴욕타임스 베스트셀러 자리에 오르며 아마존 독자들과 오피니언 리더들의 극찬을 받았다.
이번 책은 돈과 투자 영역은 물론이고, 인간의 본성과 세상의 이치에 관한 이야기를 두루 다루어 한층 더 다층적이고 복합적인 메시지를 담아냈다는 평가를 받는다. 모건 하우절은 사람들은 무엇이 변할 것인지에 대해 늘 관심을 갖지만, 미래에 대비하기 위해서는 오히려 과거에도 지금도 미래에도 변함이 없는‘불변의 법칙’에 대해 알아야 한다고 강조한다. 이에 1000년 후에도 유효할 인간의 행동양식과 반복패턴에 대한 흥미로운 역사 스토리와 일화들을 들려준다. 워런 버핏의 스니커즈, 빌 게이츠의 숨겨진 불안, 유발 하라리가 받은 뜻밖의 비난, 게임스탑 사태의 보이지 않는 변수, 벌지 전투의 최후, 마술사 후디니의 죽음 등, 한 편 한 편의 이야기가 마치 다큐소설처럼 펼쳐진다. 흥미로운 일화 속에 인간사를 꿰뚫는 통찰과 삶의 교훈을 구슬처럼 꿰어내어 “역시 모건 하우절이다”라는 찬사를 받았다. 스콧 갤러웨이, 라이온 홀리데이는 물론, 국내 유수의 리더들 또한 먼저 읽고 “대단한 책이다”라는 평가를 내놓았다.', '모건 하우절
');

SELECT *
FROM my_table4;

#수
#정수 : INT, BIGINT
#실수 : DECIMAL(총길이, 소수점 이하 길이)

CREATE TABLE my_table5
(
    age    INT,
    height DEC(5, 2)
);

DESC my_table5;

INSERT INTO my_table5
    (age, height)
VALUES (19, 178.126);

SELECT *
FROM my_table5;

CREATE TABLE my_table6
(
    name varchar(10),
    age  INT,
    wage DEC(10, 2)
);

INSERT INTO my_table6
    (name, age, wage)
VALUES ('호날두', 32, 190000.00);

SELECT *
FROM my_table6;

#날짜, 시간
#DATE, TIME, DATETIME, YEAR, TIMESTAMP, CURRENT_TIMESTAMP

CREATE TABLE my_table7
(
    col1 DATE,
    col2 DATETIME
);

INSERT INTO my_table7
    (col1, col2)
VALUES ('2024-04-24', CURRENT_TIMESTAMP);

SELECT *
FROM my_table7;

CREATE TABLE my_table8
(
    birth DATE,
    death DATETIME
);

INSERT INTO my_table8
    (birth, death)
VALUES ('1889-04-20', '1945-04-30 04:44:44')

SELECT *
FROM my_table8;

CREATE TABLE my_table9
(
    string_col VARCHAR(30),
    int_col INT,
    dec_col DEC(10,2),
    date_col DATE,
    date_time_col DATETIME
);

INSERT INTO my_table9
(string_col, int_col, dec_col, date_col, date_time_col)
VALUES ('배고파', 20000, 4.10, '2024-04-24', CURRENT_TIMESTAMP);

SELECT *
FROM my_table9;

CREATE TABLE my_table10
(
    title VARCHAR(30),
name VARCHAR(30),
age INT,
price DEC(10,3),
published DATE,
inserted DATETIME
);

INSERT INTO my_table10
(title, name, age, price, published, inserted)
VALUES('이것이 자바다', '신용권', 40, 23422.223, '1999-09-09', CURRENT_TIMESTAMP),
      ('스프링부트', '홍길동', 50, 2342.123, '2000-01-01', CURRENT_TIMESTAMP);

SELECT *
FROM my_table10;