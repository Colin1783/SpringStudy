<%--
  Created by IntelliJ IDEA.
  User: Colin
  Date: 2024-04-19
  Time: 오전 10:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>직원 목록 조회</title>
    <style>
        table, tr, th, td {
            border: 1px solid black;
            border-collapse: collapse;
        }

        table {
            width: 100%;
        }

        .active {
            background-color: #0056b3;
            color: white;
        }

        .hidden {
            display: none;
        }
    </style>
    <script>
        function toggleNotes(elementId) {
            var element = document.getElementById(elementId);
            if (element.style.display === 'none') {
                element.style.display = 'block';
            } else {
                element.style.display = 'none';
            }
        }
    </script>
</head>
<body>
<div>
    <c:if test="${not empty message}">
        <div style="padding: 20px; background-color: skyblue">
                ${message}
        </div>
    </c:if>
</div>
<hr>
<h3>직원 조회</h3>
<form action="">
    직원 번호
    <input type="number" name="id">
    <button>조회</button>
</form>
<hr>
<table>
    <thead>
    <tr>
        <th>id</th>
        <th>name</th>
        <th>birth</th>
        <th>photo</th>
        <th>notes</th>
    </tr>
    </thead>
    <tbody>

    <c:forEach items="${employeeList}" var="employee">
        <tr>
            <td>${employee.id}</td>
            <td>${employee.firstName} ${employee.lastName}</td>
            <td>${employee.birth}</td>
            <td>${employee.photo}</td>
            <td>${employee.notes} </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<div style="display: inline-block">
    <form style="display: inline-block" action="/main28/sub2" method="get">
        <input type="hidden" name="someData" value="value">
        <button type="submit">신규 등록</button>
    </form>
    <form action="/main28/sub3/delete" method="post">
        <div style="display: inline-block">
            <input type="text" name="id" value="${employee.id}">
        </div>
        <div>
            <button type="submit">삭제</button>
        </div>
    </form>
</div>
<div style="text-align: center">
    <c:if test="${currentPage != 1}">
        <c:url var="link" value="/main27/sub2">
            <c:param name="page" value="1"/>
        </c:url>
        <span>
            <a href="${link}">맨앞</a>
        </span>
    </c:if>

    <c:if test="${not empty prevPageNumber}">
        <c:url var="link" value="/main27/sub2">
            <c:param name="page" value="${prevPageNumber}"/>
        </c:url>
        <span>
            <a href="${link}">이전</a>
        </span>
    </c:if>
    <c:forEach begin="${beginPageNumber}" end="${endPageNumber}" var="pageNumber">
        <c:url var="link" value="/main27/sub2">
            <c:param name="page" value="${pageNumber}"/>
        </c:url>
        <span>
            <a class="${currentPage eq pageNumber ? 'active' : ''}" href="${link}">${pageNumber}</a>
    </span>
    </c:forEach>

    <c:if test="${not empty nextPageNumber}">
        <c:url var="link" value="/main27/sub2">
            <c:param name="page" value="${nextPageNumber}"/>
        </c:url>
        <span>
            <a href="${link}">다음</a>
        </span>
    </c:if>
    <c:if test="${currentPage != lastPageNumber}">
        <c:url var="link" value="/main27/sub2">
            <c:param name="page" value="${lastPageNumber}"/>
        </c:url>
        <span>
            <a href="${link}">맨뒤</a>
        </span>
    </c:if>
</div>
</body>
</html>
