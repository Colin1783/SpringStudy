<%--
  Created by IntelliJ IDEA.
  User: Colin
  Date: 2024-04-12
  Time: 오후 2:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<style>
    .active {
        background-color: red;
    }

    a {
        border: 1px solid black;
    }
</style>

<div style="display: flex; justify-content: space-between;">
    <div>
        <a clss="${param.current eq 'sub3'? 'active' : ''}" href="/main17/sub3"> sub3</a>
        <a clss="${param.current eq 'sub4'? 'active' : ''}" href="/main17/sub4"> sub4</a>
        <a clss="${param.current eq 'sub5'? 'active' : ''}" href="/main17/sub5"> sub5</a>
    </div>
    <div>
        <c:if test="${not empty sessionScope.userName}" var="loggedIn">
            ${sessionScope.userName}

            <a href="/main17/sub9"></a>
        </c:if>
        <c:if test="${not loggedIn}">
            quest
        </c:if>
        님
    </div>
</div>
