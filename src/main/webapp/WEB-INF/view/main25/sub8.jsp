<%--
  Created by IntelliJ IDEA.
  User: Colin
  Date: 2024-04-17
  Time: 오전 11:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <style>
        .employee {
            border: 1px solid black;
        }
    </style>
</head>
<body>
<h3>직원 조회</h3>
<form>
    키워드:
    <input type="text" name="search" placeholder="검색어를 입력하세요." value="${prevSearch}">
    <input type="submit" value="조회">
    <hr>
    <div class="employee">
        <c:forEach items="${employees}" var="employee">
            <p> 직원ID: ${employee.id}</p>
            <p> 이름: ${employee.LName} ${employee.FName}</p>
            <p> 생년월일: ${employee.birth}</p>
            <div> 생년월일: ${employee.photo}</div>
            <textarea> 비고: ${employee.notes}</textarea>

        </c:forEach>
    </div>
</form>
</body>
</html>
