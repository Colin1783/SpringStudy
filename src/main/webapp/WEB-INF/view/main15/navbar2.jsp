<%--
  Created by IntelliJ IDEA.
  User: Colin
  Date: 2024-04-12
  Time: 오전 9:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<style>
    .active {
        background-color: yellow;
    }
</style>
<div>
    <%--    <span>${current1}</span>--%>
    <%--    <span>${current2}</span>--%>
    <a href="/main15/sub3">
    <span class="${current2 eq 'sub3' ? 'active' : ''}" style="border: 1px solid black; width: 20%; margin: 10px">
        sub3
    </span>
    </a>
    <a href="/main15/sub4">
    <span class="${current2 eq 'sub4' ? 'active' : ''}" style="border: 1px solid black; width: 20%; margin: 10px;">
        sub4
    </span>
    </a>
</div>
