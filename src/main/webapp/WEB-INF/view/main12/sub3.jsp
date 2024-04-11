<%--
  Created by IntelliJ IDEA.
  User: Colin
  Date: 2024-04-09
  Time: 오후 4:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach begin="1" end="3">
    <p> 반복 출력할 코드1</p>
</c:forEach>
<hr>
<c:forEach begin="5" end="7">
    <p> 반복 출력할 코드2</p>
</c:forEach>
<hr>
<c:forEach begin="0" end="7" var="num">
    <p> 반복 출력할 코드 ${num}</p>
</c:forEach>
<hr>
<h4>구구단 (${dan1}단)</h4>
<c:forEach begin="1" end="9" var="num">
    <p> ${dan1} X ${num} = ${dan1 * num}</p>
</c:forEach>
<hr>
<c:forEach items="${dan}" var="d">
    <c:forEach begin="1" end="9" var="num">
        <p> ${d} X ${num} = ${d * num}</p>
    </c:forEach>
</c:forEach>
<hr>
<h4>구구거꾸로단(${dan1}단)</h4>
<c:forEach begin="1" end="${9}" var="num">
    <p> ${dan1} X ${10-num} = ${dan1 * (10-num)}</p>
</c:forEach>
</body>
</html>
