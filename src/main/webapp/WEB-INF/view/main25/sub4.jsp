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
<h3>고객 조회</h3>
<form>
    고객명:
    <input type="text" name="search" placeholder="조회할 고객명을 입력하세요." value="${prevSearch}">
    <input type="submit" value="조회">
    <hr>
    <div>
        <c:forEach items="${customers}" var="customer">
            <p> 고객번호:
                <input type="text" value="${customer.id}" readonly>
            </p>
            <p> 고객명:
                <input type="text" value="${customer.customerName}" readonly>
            </p>
            <p> 고객사 담당자: ${customer.contactName}
            </p>
            <p> 주소:
                    ${customer.address}, ${customer.city}
            </p>
            <p> 국적: ${customer.country} </p>
        </c:forEach>
    </div>
</form>
</body>
</html>
