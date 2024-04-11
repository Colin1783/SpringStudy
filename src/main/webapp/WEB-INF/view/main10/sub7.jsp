<%--
  Created by IntelliJ IDEA.
  User: Colin
  Date: 2024-04-09
  Time: 오전 11:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>
<ul>
    <li>제조사: ${cars[0].manufacturer}</li>
    <li>모델명: ${cars[0].model}</li>
    <li>최고속도: ${cars[0].maxSpeed}km/h</li>
</ul>

<p>
<ul>
    <li>제조사: ${cars[1].manufacturer}</li>
    <li>모델명: ${cars[1].model}</li>
    <li>최고속도: ${cars[1].maxSpeed}km/h</li>
</ul>
<p>
<ul>
    <li>제조사: ${cars[2].manufacturer}</li>
    <li>모델명: ${cars[2].model}</li>
    <li>최고속도: ${cars[2].maxSpeed}km/h</li>
</ul>
</body>
</html>
