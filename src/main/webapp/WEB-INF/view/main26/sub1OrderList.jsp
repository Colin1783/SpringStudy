<%--
  Created by IntelliJ IDEA.
  User: Colin
  Date: 2024-04-18
  Time: 오후 10:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>주문일로 주문 조회</h3>
<form>
    <div>
        시작:
        <input type="date" name="start" value="${prevStart}">
    </div>

    <div>
        종료:
        <input type="date" name="end" value="${prevEnd}">
    </div>
    <div>
        <button>조회</button>
    </div>
</form>
<hr>
<c:if test="${empty orderList}">
    <div>
        조회된 내용이 없습니다.
    </div>
</c:if>
<c:if test="${!empty orderList}">
    <table>
        <thead>
        <tr>
            <th>id</th>
            <th>customer</th>
            <th>employee</th>
            <th>date</th>
            <th>shipper</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${orderList}" var="order">
            <tr>
                <td>${order.id}</td>
                <td>${order.customerId}</td>
                <td>${order.employeeId}</td>
                <td>${order.orderDate}</td>
                <td>${order.shipperId}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</c:if>

</body>
</html>
