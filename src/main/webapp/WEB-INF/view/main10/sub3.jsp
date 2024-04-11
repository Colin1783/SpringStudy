<%--
  Created by IntelliJ IDEA.
  User: Colin
  Date: 2024-04-09
  Time: 오전 10:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>${myAttr1.jh}</p>
<p>${myAttr1["강인"]}</p>
<p>${myAttr1[myAttr2]}</p>

<p>${myAttr1["민재"]}</p>
<p>${myAttr1[myAttr3]}</p>

<p>${myAttr2}</p>
<p>${myAttr3}</p>

<p>${myAttr1.jh}</p>
<p>${myAttr1["jh"]}</p>

<p>${myAttr1[jh]}</p>
</body>
</html>
