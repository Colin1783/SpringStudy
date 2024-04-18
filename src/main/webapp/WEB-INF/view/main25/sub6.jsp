<%--
  Created by IntelliJ IDEA.
  User: Colin
  Date: 2024-04-17
  Time: 오후 3:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <style>
        table {
            border: 2px solid black;
            border-collapse: collapse;
            margin: 5px;
            padding-top: 5px;
            text-align: center;
        }

        table tr, th, td {
            border: 1px solid black;
            margin: 5px;
            padding-top: 5px;
            width: 200px;

        }

    </style>
</head>
<body>
<form action="">
    <div>
        상품명:
        <input type="text" name="search" placeholder="상품명을 입력하세요." value="${prevSearch}">
        <input type="submit" value="조회">
    </div>

    <c:if test="${empty products}" var="emptyPro">
        조회된 상품이 없습니다.
    </c:if>

    <c:if test="${not emptyPro}">
        <div>
            <c:forEach items="${products}" var="product">
                <table>
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Supplier</th>
                        <th>Category</th>
                        <th>Unit</th>
                        <th>Price</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>${product.id}</td>
                        <td>${product.name}</td>
                        <td>${product.supplier}</td>
                        <td>${product.category}</td>
                        <td>${product.unit}</td>
                        <td>${product.price}</td>
                    </tr>
                    </tbody>
                </table>
            </c:forEach>
        </div>
    </c:if>
</form>
</body>
</html>
