<%--
  Created by IntelliJ IDEA.
  User: Colin
  Date: 2024-04-15
  Time: 오후 12:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/main20/sub10">
    <div>
        시군구 :
        <input type="text" name="city">
    </div>
    <div>
        상세주소 :
        <input type="text" name="address">
    </div>
    <div>
        주제 :
        <input type="text" name="title">
    </div>
    <div>
        내용:
        <textarea name="content" cols="30" rows="10" placeholder="내용을 입력하세요">

        </textarea>
    </div>
    <div>
        <input type="submit">
    </div>
</form>
</body>
</html>
