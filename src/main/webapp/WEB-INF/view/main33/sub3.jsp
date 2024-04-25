<%--
  Created by IntelliJ IDEA.
  User: Colin
  Date: 2024-04-24
  Time: 오후 12:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach items="${obj}" var="obj">
    <p>${obj.title}</p>
    <p>${obj.name}</p>
    <p>${obj.age}</p>
    <p>${obj.price}</p>
    <p>${obj.published}</p>
    <p>${obj.inserted}</p>
    <hr>
</c:forEach>
</body>
</html>
