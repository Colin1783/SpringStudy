<%--
  Created by IntelliJ IDEA.
  User: Colin
  Date: 2024-04-09
  Time: 오후 3:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<h3> if</h3>
<c:if test="${age >= 20}">
    <p>투표 가능</p>
</c:if>

<c:if test="${age < 20}">
    <p>투표 불가</p>
</c:if>

<c:if test="${empty products}">
    <p>담긴 상품이 없습니다.</p>
</c:if>

<c:if test="${!empty products}">
    <ul>
        <p>아래의 상품이 담겨 있습니다.</p>
        <li>${products[0]}</li>
        <li>${products[1]}</li>
    </ul>
</c:if>

<c:if test="${5<8 && 9>2}" var="result"> <%--페이지 내에 한정된 attribute result 생성--%>
    <p>출력1</p>
</c:if>

<c:if test="${not result}">
    <p>출력2</p>
</c:if>

<hr>
<h3>한국인이고 20살 이상일 때 투표 가능</h3>
<c:if test="${member.country == 'korea' && member.age >= 20}" var="votable">
    <%--<c:if test='${member.country == "korea" && member.age >= 20}' var="nation">--%>
    <p>투표 가능</p>
</c:if>

<c:if test="${not votable}"> <%--페이지 내에 한정된 attribute result 생성--%>
    <p>투표 불가능</p>
</c:if>

</body>
</html>
