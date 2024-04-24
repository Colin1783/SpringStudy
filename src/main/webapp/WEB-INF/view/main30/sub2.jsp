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
</head>
<body>
<c:if test="${not empty message}">
    <div style="background-color: #007bff; padding: 20px;">
            ${message}
    </div>
</c:if>
<h3>직원 정보 수정</h3>
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
    <form action="/main30/sub2/update" method="post" onsubmit="return confirm('수정하시겠습니까?')">
        <div>
            직원번호
            <input type="text" name="id" value="${employees.id}">
        </div>
        <div>
            성
            <input type="text" name="lastName" value="${employees.lastName}">
        </div>
        <div>
            이름
            <input type="text" name="firstName" value="${employees.firstName}">
        </div>
        <div>
            생일
            <input type="date" name="birth" value="${employees.birth}">
        </div>
        <div>
            사진
            <input type="text" name="photo" value="${employees.photo}">
        </div>
        <div>
            비고
            <textarea name="notes" cols="30" rows="10">${employees.notes}</textarea>
        </div>
        <div>
            <input type="submit" value="수정">
        </div>
    </form>
</c:if>
</body>
</html>
