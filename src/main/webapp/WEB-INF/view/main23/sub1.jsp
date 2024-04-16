<%--
  Created by IntelliJ IDEA.
  User: Colin
  Date: 2024-04-16
  Time: 오후 3:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>직원 이름 목록</title>
</head>
<body>
<h2>직원 이름</h2>
<ul>
    <c:forEach items="${nameList}" var="name">
        <li>${name}</li>
    </c:forEach>
</ul>
</body>
</html>
