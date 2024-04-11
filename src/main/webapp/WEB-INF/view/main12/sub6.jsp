<%--
  Created by IntelliJ IDEA.
  User: Colin
  Date: 2024-04-11
  Time: 오전 10:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <style>
        h3 {
            width: 50%;
            text-align: center;
        }

        .table {
            border-collapse: collapse;
            border: 1px solid black;
            width: 50%;
        }

        .table th,
        .table td {
            border: 1px solid black;
            text-align: center;
            padding: 5px 0 5px 0;
        }
    </style>
</head>
<body>
<div class="body">
    <h3>자동차</h3>
    <table class="table">
        <thead>
        <tr>
            <th>No.</th>
            <th>모델명</th>
            <th>회사</th>
            <th>국적</th>
            <th>가격</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${cars}" var="car" varStatus="status">
            <tr>
                <td>${status.count}</td>
                <td>${car.name}</td>
                <td>${car.company}</td>
                <td>${car.price}</td>
                <td>${car.country}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
