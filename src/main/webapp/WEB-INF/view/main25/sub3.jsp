<%--
  Created by IntelliJ IDEA.
  User: Colin
  Date: 2024-04-17
  Time: 오전 11:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>상품명으로 상품 조회</h3>
<form action="/main25/sub3">
    상품명:
    <input type="text" name="search" placeholder="조회할 상품 명을 입력하세요.">
    <input type="submit" value="조회">
    <hr>
    <div>
        <c:forEach items="${products}" var="product">
            <h4>${product.id}번 상품</h4>
            <p>상품명:
                <input type="text" value="${product.name}" readonly>
            </p>
            <p>단위:
                <input type="text" value="${product.unit}" readonly>
            </p>
            <p>가격:
                <input type="text" value="$${product.price}" readonly>
            </p>
        </c:forEach>
    </div>
</form>
</body>
</html>