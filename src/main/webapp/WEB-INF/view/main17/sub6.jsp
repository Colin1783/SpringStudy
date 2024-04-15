<%--
  Created by IntelliJ IDEA.
  User: Colin
  Date: 2024-04-12
  Time: 오후 3:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>sub6</title>
    <style>
        #logInButton {
            background-color: limegreen;
        }

        #logInButton:hover {
            cursor: pointer;
        }
    </style>
</head>
<body>
<c:import url="/WEB-INF/fragment/navbar4.jsp">
    <c:param name="cur" value="sub6"/>
</c:import>

<div>
    <form action="">
        <div>
            아이디
            <input type="text" name="id">
        </div>
        <div>
            <button id="logInButton">로그인</button>
        </div>
    </form>
</div>
</body>
</html>
