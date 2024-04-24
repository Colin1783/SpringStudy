<%--
  Created by IntelliJ IDEA.
  User: Colin
  Date: 2024-04-22
  Time: 오전 10:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>직원 조회</title>
    <style>
        table {
            border: 1px solid black;
            border-collapse: collapse;
        }

        table tr, th, td {
            border: 1px solid black;
        }
    </style>
</head>
<body>
<c:if test="${not empty message}">
    <div style="background-color: #007bff; padding: 20px;">
            ${message}
    </div>
</c:if>
<h3>직원 조회</h3>
<form action="">
    직원 번호
    <input type="number" name="id">
    <button>조회</button>
</form>
<hr>
<c:if test="${empty employees}">
    조회된 직원이 없습니다.
</c:if>
<c:if test="${!empty employees}">
    <form>
        <table>
            <thead>
            <tr>
                <th>이름</th>
                <th>생년월일</th>
                <th>사진</th>
                <th>비고</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>${employees.firstName} ${employees.lastName}</td>
                <td>${employees.birth}</td>
                <td>${employees.photo}</td>
                <td>${employees.notes}</td>
            </tr>
            </tbody>
        </table>
    </form>

    <form action="/main29/sub2/delete" method="post" onsubmit="return confirm('삭제하시겠습니까?')">
        <div style="display: none">
            <input type="text" name="id" value="${employees.id}">
        </div>
        <div>
            <button style="background-color: rosybrown">삭제</button>
        </div>
    </form>

</c:if>
</body>
</html>
