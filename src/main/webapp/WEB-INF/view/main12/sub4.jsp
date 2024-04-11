<%--
  Created by IntelliJ IDEA.
  User: Colin
  Date: 2024-04-11
  Time: 오전 9:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach begin="1" end="3" var="num">
    <p>반복 출력 코드 ${num}</p>
</c:forEach>
<hr>
<c:forEach items="${myList}" var="elements">
    <p>${elements}</p>
</c:forEach>
<br>
<c:forEach begin="0" end="2" var="num">
    <p>${myList[num]}</p>
</c:forEach>

<hr>
<c:forEach items="${foods}" var="food" begin="0" end="2">
    <p>${food}</p>
</c:forEach>
<br>
<c:forEach begin="0" end="3" var="num">
    <p>${foods[num]}</p>
</c:forEach>
<hr>
<c:forEach items="${myMap.entrySet()}" var="PLs">
    <p>${PLs}</p>
</c:forEach>
<br>
<c:forEach items="${myMap}" var="PLs">
    <p>${PLs}</p>
</c:forEach>
<hr>
<c:forEach items="${cars}" var="car">
    <p> 제조사" ${car.key} / 모델명: ${car.value}</p>
</c:forEach>
<hr>
<c:forEach items="${myList2}" var="elem">
    <p>${elem}</p>
</c:forEach>
<br>
<c:forEach items="${myMap2}" var="entry">
    <p>${entry}</p>
    <p>${entry.key} : ${entry.value}</p>
</c:forEach>
</body>
</html>
