<%--
  Created by IntelliJ IDEA.
  User: Colin
  Date: 2024-04-16
  Time: 오전 10:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:if test="${param.type eq 'success'}">
    <p>안녕하세요, 환영합니다.</p>
</c:if>
<c:if test="${param.type eq 'fail'}">
    <p>아이디와 비밀번호가 불일치합니다.</p>
</c:if>
<form action="/main22/sub7" method="Post">
    <div>
        <input type="text" name="id">
    </div>
    <div>
        <input type="password" name="password">
    </div>
    <div>
        <input type="submit" value="Login">
    </div>
</form>

</body>
</html>
