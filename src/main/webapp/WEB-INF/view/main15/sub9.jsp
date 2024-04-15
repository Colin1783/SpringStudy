<%--
  Created by IntelliJ IDEA.
  User: Colin
  Date: 2024-04-12
  Time: 오전 11:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--el의 내장 객체 param : request parameter를  key.value 쌍으로 저장한 Map--%>
<div>name: ${param.name}</div>
<div>age: ${param.age}</div>
<div>city: ${param.city}</div>
<div>address: ${param.address}</div>
<div>model: ${param.model}</div>

<hr>
<div>title: ${param.title}</div>
<div>content: ${param.content}</div>
<div>car: ${param.car}</div>

<hr>
<div>q= ${param.q}</div>
<div>song= ${param.song}</div>
<div>company= ${param.company}</div>
</body>
</html>
