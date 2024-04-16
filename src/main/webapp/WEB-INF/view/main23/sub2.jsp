<%--
  Created by IntelliJ IDEA.
  User: Colin
  Date: 2024-04-16
  Time: 오후 3:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>고객 명단</h3>
<ol>
    <c:forEach items="${nameList}" var="name">
        <li>${name}</li>
    </c:forEach>
</ol>
</body>
</html>
