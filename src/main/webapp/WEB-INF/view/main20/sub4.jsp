<%--
  Created by IntelliJ IDEA.
  User: Colin
  Date: 2024-04-15
  Time: 오전 11:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/main20/sub5">
    <input type="text" name=player placeholder="이름을 입력해 주세요">
    <input type="submit" value="입력">
</form>

<form action="/main20/sub6">
    <input type="text" name="address">
    <input type="text" name="type">
    <input type="submit" value="등록">
</form>
<form action="/main20/sub8">
    <div>
        이름:
        <input type="text" name="name">
        나이:
        <input type="number" min="1" max="120" name="age">
    </div>
    <div>
        생년월일:
        <input type="date" name="birth">
    </div>
    <div>
        주소:
        <input type="text" name="address">
    </div>
    <div>
        취미:
        <input type="text" name="hobby">
    </div>
    <div>
        <input type="submit">
    </div>
</form>
</body>
</html>
