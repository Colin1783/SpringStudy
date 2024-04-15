<%--
  Created by IntelliJ IDEA.
  User: Colin
  Date: 2024-04-12
  Time: 오전 10:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<style>
    a {
        border: 1px solid black;
        display: inline-block;
        width: 150px;
        height: 50px;
        align-content: center;
        text-align: center;
        margin-bottom: 50px;
    }

    .active {
        background-color: yellow;
        font-weight: bold;
    }
</style>
<a href="/main15/sub5">
    <span class="${cur eq 'sub5'? 'active': '' }">sub5</span>
</a>
<a href="/main15/sub6">
    <span class="${cur eq 'sub6'? 'active': '' }"> sub6 </span>
</a>

