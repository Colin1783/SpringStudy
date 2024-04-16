<%--
  Created by IntelliJ IDEA.
  User: Colin
  Date: 2024-04-16
  Time: 오후 3:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
    <thead>
    <tr>
        <th>#</th>
        <th>first name</th>
        <th>last name</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${employees}" var="employee" varStatus="status">
        <tr>
            <td>${status.count}</td>
            <td>${employee.firstName}</td>
            <td>${employee.lastName}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
