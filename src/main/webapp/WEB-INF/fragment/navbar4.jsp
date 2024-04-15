<%--
  Created by IntelliJ IDEA.
  User: Colin
  Date: 2024-04-12
  Time: 오후 3:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<style>
    .active {
        background-color: red;
    }

    .navButton {
        background-color: white;
    }

    .navButton:hover {
        background-color: lightgray;
    }

    a {
        border: 1px solid black;
    }
</style>

<div style="display: flex; justify-content: space-between;">
    <div class=navButton>
        <a clss="${param.current eq 'sub6'? 'active' : ''}" href="/main17/sub6"> sub6</a>
        <a clss="${param.current eq 'sub7'? 'active' : ''}" href="/main17/sub7"> sub7</a>
        <a clss="${param.current eq 'sub8'? 'active' : ''}" href="/main17/sub8"> sub8</a>
    </div>
    <div>
        <c:if test="${!empty sessionScope.userName}" var="loggedIn">
            ${sessionScope.userName}
        </c:if>
        <c:if test="${not loggedIn}">
            guest
        </c:if>
        님
    </div>
</div>