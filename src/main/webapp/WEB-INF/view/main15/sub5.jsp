<%--
  Created by IntelliJ IDEA.
  User: Colin
  Date: 2024-04-12
  Time: 오전 10:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <style>
        div {
            width: 50%;
            height: 30%;
            border: 1px solid black;
        }

        img {
            width: 100%;
            height: 70%;
        }
    </style>
</head>
<body>
<c:set var="cur" value="sub5" scope="request"/>
<c:import url="navbar3.jsp"/>

<div>
    이게 홍학
    <img src="https://html.com/wp-content/uploads/flamingo.jpg" alt="">
</div>
</body>
</html>
