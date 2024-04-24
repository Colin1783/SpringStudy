<%--
  Created by IntelliJ IDEA.
  User: Colin
  Date: 2024-04-22
  Time: 오후 12:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--
  Created by IntelliJ IDEA.
  User: Colin
  Date: 2024-04-22
  Time: 오전 10:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:if test="${not empty message}">
    <div style="background-color: #007bff; padding: 20px;">
            ${message}
    </div>
</c:if>
<h3>고객 정보 수정</h3>
<form action="">
    고객번호
    <input type="number" name="id">
    <button>조회</button>
</form>
<hr>
<c:if test="${empty customers}">
    조회된 고객이 없습니다.
</c:if>
<c:if test="${!empty customers}">
    <form action="/main30/sub1/update" method="post" onsubmit="return confirm('수정하시겠습니까?')">
        <div>
            고객번호
            <input type="text" name="id" value="${customers.id}">
        </div>
        <div>
            거래처
            <input type="text" name="name" value="${customers.name}">
        </div>
        <div>
            담당자
            <input type="text" name="contactName" value="${customers.contactName}">
        </div>
        <div>
            주소
            <input type="text" name="address" value="${customers.address}">
        </div>
        <div>
            도시
            <input type="text" name="city" value="${customers.city}">
        </div>
        <div>
            국가
            <input type="text" name="country" value="${customers.country}">
        </div>
        <div>
            우편번호
            <input type="text" name="postalCode" value="${customers.postalCode}">
        </div>
        <div>
            <input type="submit" value="수정">
        </div>
    </form>
</c:if>

</body>
</html>
