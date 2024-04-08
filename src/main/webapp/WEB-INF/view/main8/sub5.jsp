<%--
  Created by IntelliJ IDEA.
  User: Colin
  Date: 2024-04-08
  Time: 오후 2:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        h2 {
            display: inline-block;
            margin-bottom: 20px;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        h2:hover {
            cursor: pointer;
        }
    </style>
</head>
<body>
<h2>${countries[0]}</h2>
<h2>${cities[0]}</h2>
<h2>${countries[1]}</h2>
<h2>${cities[1]}</h2>
<h2>${countries[2]}</h2>
<h2>${cities[2]}</h2>
</body>
</html>
