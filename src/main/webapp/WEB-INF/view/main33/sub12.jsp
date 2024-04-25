<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <style>

        table {
            width: 100%;
            border: 2px solid black;
            border-collapse: collapse;
        }

        table, tr, th, td {
            border-collapse: collapse;
            border: 1px solid black;
        }
    </style>
</head>
<body>
<h3>신간 입력</h3>
<form action="" method="post">
    <%--    div*6>input[name][value]--%>
    <div>
        제목
        <input type="text" name="title" value="책 제목">
    </div>
    <div>
        저자명
        <input type="text" name="name" value="저자">
    </div>
    <div>
        나이
        <input type="number" name="age" value="나이">
    </div>

    <div>
        가격
        <input type="number" name="price" value="원">
    </div>

    <div>
        출간일
        <input type="date" name="published" value="1900-01-01">
    </div>
    <div>
        발행일시
        <input type="datetime-local" name="inserted" value="1900-01-01T12:00:00">
    </div>
    <div>
        <input type="submit" value="저장">
    </div>

</form>
<hr>
<h3>도서 목록</h3>
<table>
    <thead>
    <tr>
        <th>제목</th>
        <th>저자</th>
        <th>나이</th>
        <th>가격</th>
        <th>출간일</th>
        <th>발행일시</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${library}" var="book">
        <tr>
            <td>${book.title}</td>
            <td>${book.name}</td>
            <td>${book.age}</td>
            <td>${book.price}</td>
            <td>${book.published}</td>
            <td>${book.inserted}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>