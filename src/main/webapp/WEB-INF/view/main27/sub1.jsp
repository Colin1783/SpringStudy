<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <style>
        table, tr, th, td {
            border: 1px solid black;
            border-collapse: collapse;
        }

        table {
            width: 100%;
        }
    </style>
</head>
<body>
<hr>
<table>
    <thead>
    <tr>
        <th>id</th>
        <th>name</th>
        <th>contact</th>
        <th>address</th>
        <th>city</th>
        <th>post</th>
        <th>country</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${customerList}" var="customer">
        <tr>
            <td>${customer.id}</td>
            <td>${customer.name}</td>
            <td>${customer.contactName}</td>
            <td>${customer.address}</td>
            <td>${customer.city}</td>
            <td>${customer.postalCode}</td>
            <td>${customer.country}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<div style="text-align: center; margin-top: 20px;">
    <c:forEach begin="1" end="10" var="pageNumber">
        <c:url var="link" value="/main27/sub1">
            <c:param name="page" value="${pageNumber}"/>
        </c:url>
        <span>
            <a href="/main27/sub1?page=${pageNumber}">${pageNumber}</a>
        </span>
    </c:forEach>
</div>


</body>
</html>