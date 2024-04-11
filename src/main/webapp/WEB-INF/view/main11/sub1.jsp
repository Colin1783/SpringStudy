<%--
  Created by IntelliJ IDEA.
  User: Colin
  Date: 2024-04-09
  Time: 오후 2:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        body {
            text-align: center;
        }
    </style>
</head>
<body>
<h2>Expression Language</h2>
<p>간단한 연산 사용 가능</p>
<p>산술연산, 논리연산, 비교연산, 삼항연산</p>
<hr>
<h3>산술 연산(+, -, /, *, %</h3>
<p>${5} + ${3} = ${5+3}</p>
<p>${7} - ${3} = ${7-3}</p>
<p>${8} * ${3} = ${8*3}</p>
<p>${8} / ${3} = ${8/3}</p>
<p>${7} div ${2} = ${7 div 2}</p>
<p>${8} % ${3} = ${8%3}</p>
<p>${8} mod ${3} = ${8 mod 3}</p>
<p>${"3"} + ${"4"} = ${"3" + "4"}</p>
<p>${num1} + ${num2} = ${num1+num2}</p>
<%--<p>${"삼" + "3"} => 컴파일 오류</p>--%>
<hr>
<h3>비교연산</h3>
<p>${5}>${3} = ${5 > 3}</p>
<p>${5} gt ${3} = ${5 gt 3}</p>
<p>${5} < ${3} = ${5 < 3}</p>
<p>${5} lt ${3} = ${5 lt 3}</p>
<p>${5} >= ${3} = ${5 >= 3}</p>
<p>${5} ge ${3} = ${5 ge 3}</p>
<p>${5} <= ${3} = ${5 <= 3}</p>
<p>${5} le ${3} = ${5 le 3}</p>
<p>${5} != ${3} = ${5 != 3}</p>
<p>${5} ne ${3} = ${5 ne 3}</p>
<p>${5} == ${3} = ${5 == 3}</p>
<p>${5} eq ${3} = ${5 eq 3}</p>
<p>${"hello"} < ${"spring"} = ${"hello" < "spring"}</p>
<p>${"hello"} < ${"Spring"} = ${"hello" < "Spring"}</p>
<p>${"11"} < ${"2"} = ${"11" < "2"}</p>
<p>${"11"} < ${2} = ${"11" < 2}</p>
<p>${11} < ${"2"} = ${11 < "2"}</p>

<hr>
<h3>논리연산</h3>
<h4> &&, and</h4>
<p>${true} && ${true} = ${true && true}</p>
<p>${true} and ${true} = ${true and true}</p>
<p>${true} && ${false} = ${true && false}</p>
<p>${false} && ${true} = ${false && true}</p>
<p>${false} && ${false} = ${false && false}</p>

<h4> ||, or</h4>
<p>${true} || ${true} = ${true || true}</p>
<p>${true} || ${false} = ${true || false}</p>
<p>${false} || ${true} = ${false || true}</p>
<p>${false} || ${false} = ${false || false}</p>

<h4> !</h4>
<p>!true = ${!true}</p>
<p>!false = ${!false}</p>
<p>not true = ${not true}</p>
<p>not false = ${not false}</p>

<hr>

<h3>삼항연산</h3>
<p>${true} ? ${"hello"} : ${"world"} = ${true ? "hello" : "world"}</p>
<p>${false} ? ${"hello"} : ${"world"} = ${false ? "hello" : "world"}</p>

<p>${age1 >= 20} ? ${"투표가능"} : ${"투표불가"} = ${age1 >= 20 ? "투표가능" : "투표불가"}</p>
<p>${age2 >= 20} ? ${"투표가능"} : ${"투표불가"} = ${age2 >= 20 ? "투표가능" : "투표불가"}</p>

<hr>
<h3>practice</h3>
<p>quantity * price = ${quantity * price}</p>
<p>quantity2 * price2 = ${quantity2 * price2}</p>

<hr>
<p>조건문</p>

</body>
</html>
