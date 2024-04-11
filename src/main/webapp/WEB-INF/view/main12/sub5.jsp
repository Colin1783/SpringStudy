<%--
  Created by IntelliJ IDEA.
  User: Colin
  Date: 2024-04-11
  Time: 오전 9:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach items="${myList}" var="item" varStatus="status" begin="0" end="2" step="1">
    <div style="border: 1px solid black; margin: 5px; padding: 5px; font-size: larger">
        <p>count: ${status.count}</p>
        <p>begin: ${status.begin}</p>
        <p>current: ${status.current}</p>
        <p>end: ${status.end}</p>
        <p>index: ${status.index}</p>
        <p>step: ${status.step}</p>
        <p>first: ${status.first}</p>
        <p>last: ${status.last}</p>
        <p>item: ${item}</p>
    </div>
</c:forEach>
<hr>
<p>
    <c:forEach items="${myList}" varStatus="status" var="item">
        ${item}
        <c:if test="${not status.last}">
            ,
        </c:if>
    </c:forEach>
</p>
<p>
    <c:forEach items="${myList}" varStatus="status" var="item">
        <c:if test="${status.first}">
            기술들:&nbsp
        </c:if>
        ${item}
        <c:if test="${not status.last}">
            ,
        </c:if>
    </c:forEach>
</p>

</body>
</html>
