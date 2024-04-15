<%--
  Created by IntelliJ IDEA.
  User: Colin
  Date: 2024-04-12
  Time: 오전 10:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:set var="attr1" value="value1" scope="page"/>
<c:set var="attr2" value="value2" scope="request"/>
<c:set var="attr3" value="page value3" scope="page"/>
<c:set var="attr3" value="request value3" scope="request"/>
<c:import url="navbar4.jsp"/>

<div>
    sub7 contents:
    <br>
    ${attr1}
</div>

<div>
    sub7 contents:
    <br>
    ${attr2}
</div>
<div>
    sub7 contents:
    <br>
    ${attr3}
</div>
<%--내장 객체 param, pageScope, requestScope--%>
<div>
    sub7 contents:
    <br>
    var="attr3" value="page value3" scope="page"
    <br>
    var="attr3" value="request value3" scope="request"
    <br>
    pageScope.attr3 = ${pageScope.attr3}
    <br>
    requestScope.attr3 = ${requestScope.attr3}
    <br>
    param = ${param.values()}
    <br>
    pageScope.attr1 = ${pageScope.attr1}
</div>
</body>
</html>
