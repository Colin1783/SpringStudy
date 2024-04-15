<%--
  Created by IntelliJ IDEA.
  User: Colin
  Date: 2024-04-12
  Time: 오후 2:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div>
    name: ${requestScope.name}
</div>
<div>
    city: ${sessionScope.city}
</div>
<hr>
<div>
    model: ${model}
</div>
<div>
    model: ${requestScope.model}
</div>
<div>
    model: ${sessionScope.model}
</div>
</body>
</html>
