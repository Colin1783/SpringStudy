<%--
  Created by IntelliJ IDEA.
  User: Colin
  Date: 2024-04-09
  Time: 오후 4:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>choose, when, otherwise</h3>
<c:choose>
    <c:when test="${member.country != 'korea'}">
        <p>외국인입니다.</p>
    </c:when>
    <c:when test="${member.age <= 20}">
        <p>투표 불가 연령입니다.</p>
    </c:when>
    <c:otherwise>
        <p>투표가 가능합니다.</p>
    </c:otherwise>
</c:choose>
<hr>
<c:choose>
    <c:when test="${age < 8}">
        <p>미취학아동</p>
    </c:when>
    <c:when test="${age < 14}">
        <p>초등학생</p>
    </c:when>
    <c:when test="${age < 17}">
        <p>중학생</p>
    </c:when>
    <c:when test="${age < 20}">
        <p>고등학생</p>
    </c:when>
    <c:otherwise>
        <p>성인</p>
    </c:otherwise>
</c:choose>
</body>
</html>
