<%--
  Created by IntelliJ IDEA.
  User: Colin
  Date: 2024-04-12
  Time: 오전 9:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>sub3</title>
</head>
<body>
<c:set var="current1" value="sub3 value1" scope="page"/>
<%-- view 간 값 전달시 request 영역 attribute를 활용하면 됨--%>
<c:set var="current2" value="sub3" scope="request"/>
<c:import url="navbar2.jsp"/>
<div>
    ${current1}, ${current2}
    sub3의 콘텐츠~!~!~!~!~
</div>
</body>
</html>