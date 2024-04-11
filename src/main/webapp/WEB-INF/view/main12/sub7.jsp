<%--
  Created by IntelliJ IDEA.
  User: Colin
  Date: 2024-04-11
  Time: 오전 11:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>운동 선수 목록</title>
    <style>
        .table {
            text-align: center;
            margin: 10px;
            border: 2px solid black;
            border-collapse: collapse;
            width: 50%;
        }

        .table th, td {
            padding: 5px;
            border: 1px solid black;
        }

        .table th {
            font-size: larger;
        }

        .table td {
            font-size: 20px;
        }

    </style>
</head>
<body>
<table class="table">
    <thead>
    <tr>
        <th>No.</th>
        <th>이름</th>
        <th>국적</th>
        <th>팀</th>
        <th>종목</th>
        <th>포지션</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${playerList}" var="player" varStatus="status">
        <tr>
            <td>${status.count}</td>
            <td>${player.name}</td>
            <td>${player.country}</td>
            <td>${player.team}</td>
            <td>${player.event}</td>
            <td>
                <c:forEach items="${player.position}" var="position" varStatus="posStatus">
                    ${position}${posStatus.last ? '' : ', '}
                </c:forEach>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
