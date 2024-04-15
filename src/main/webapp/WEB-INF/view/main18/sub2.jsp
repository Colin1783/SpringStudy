<%--
  Created by IntelliJ IDEA.
  User: Colin
  Date: 2024-04-12
  Time: 오후 3:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:import url="/WEB-INF/fragment/navbar5.jsp">
    <c:param name="current" value="monitor"/>
</c:import>

<h3>모니터</h3>
<p>상품 설명</p>
<form action="">
    <input type="text" name="product" value="모니터" readonly>
    <input type="number" value="1" min="1" max="10" name="quantity">
    <button> 장바구니에 추가</button>
</form>
</body>
</html>
