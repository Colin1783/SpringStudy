<%--
  Created by IntelliJ IDEA.
  User: Colin
  Date: 2024-04-09
  Time: 오후 3:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>empty 연산자</h3>
<p> 길이가 0인 컬렉션, 문자열, 존재하지 않는 attribute, null</p>
<p>${empty attr1}</p>
<p>${empty attr2}</p>
<hr>
<p>${empty attr3}</p>
<p>${not empty attr3}</p>
<p>${empty attr4}</p>
<p>${!empty attr4}</p>
<hr>
<p>${empty attr0}</p>
<p>${empty null}</p>
<p>${empty attr5}</p>
<p>${empty ""}</p>
<hr>
<p>${empty 0}</p>
</body>
</html>
