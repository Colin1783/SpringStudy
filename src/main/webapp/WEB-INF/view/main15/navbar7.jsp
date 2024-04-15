<%--
  Created by IntelliJ IDEA.
  User: Colin
  Date: 2024-04-12
  Time: 오후 12:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<style>
    a {
        border: 1px solid black;
    }
</style>
<div>
    <a class="${param.cur eq 'sub12'? 'active': ''}" href="/main15/sub12">
        <span class="menu-item">sub12</span>
    </a>
    <a class="${param.cur eq 'sub13'? 'active': ''}" href="/main15/sub13">
        <span class="menu-item">sub13</span>
    </a>
</div>