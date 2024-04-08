<%--
  Created by IntelliJ IDEA.
  User: Colin
  Date: 2024-04-08
  Time: 오후 4:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>${person1.age}</h1>
<h1>${person1.address}</h1>
<h1>${person1.city}</h1>
<hr>
<h1>${person2.age}</h1>
<h1>${person2.address}</h1>
<h1>${person2.city}</h1>

<h1>${person1["age"]}</h1>
<h1>${person1["address"]}</h1>
<h1>${person1["city"]}</h1>
<hr>
<h1>${person1["age"]}</h1>
<h1>${person1["address"]}</h1>
<h1>${person1["city"]}</h1>
</body>
</html>
