<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>신입 직원 정보 입력</title>
</head>
<body>
<div>
    <c:if test="${not empty message}">
        <div style="padding:20px; background-color: skyblue">
                ${message}
        </div>
    </c:if>
</div>
<h3>직원 정보 입력</h3>
<form method="post">
    <div>
        이름
        <input type="text" name="firstName">
    </div>
    <div>
        성
        <input type="text" name="lastName">
    </div>
    <div>
        생년월일
        <input type="date" name="birth">
    </div>
    <div>
        사진
        <input type="file" name="photo">
    </div>
    <div>
        비고
        <input type="text" name="notes">
    </div>
    <div>
        <input type="submit" value="등록">
    </div>
</form>
</body>
</html>
