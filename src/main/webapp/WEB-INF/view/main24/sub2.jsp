<%--
  Created by IntelliJ IDEA.
  User: Colin
  Date: 2024-04-16
  Time: 오후 4:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <style>
        table {
            border: 2px solid black;
            border-collapse: collapse;
            text-align: center;
            width: 70%;
        }

        table tr, th, td {
            border: 1px solid black;
        }
    </style>
</head>
<body>
<h3>Customer List</h3>
<table>
    <thead>
    <tr>
        <th>No.</th>
        <th>Name</th>
        <th>City</th>
        <th>Country</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${customers}" var="customer" varStatus="status">
        <tr>
            <td>${status.count}</td>
            <td>${customer.customerName}</td>
            <td>${customer.city}</td>
            <td>${customer.country}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
