<%--
  Created by IntelliJ IDEA.
  User: Colin
  Date: 2024-04-11
  Time: 오후 12:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <style>
        .linkNaver {
            text-align: center;
            align-content: center;
            width: 100px;
            height: 50px;
        }
    </style>
</head>
<body>
<c:url value="https://www.naver.com" var="naver"></c:url>
<button class="linkNaver">
    <a href="${naver}">네이버</a>
</button>
<hr>
<a href="${naver}" target="_blank">눌러봐</a>
<hr>
<a href="https://search.naver.com/search.naver?query=22%EB%8C%80+%EC%B4%9D%EC%84%A0"
   target="_blank">눌러봐
</a>
<br>
<c:url value="https://search.naver.com/search.naver" var="naverUrl">
    <c:param name="query" value="뉴진스"/>
    <c:param name="where" value="nexeach"/>
    <c:param name="sm" value="tab_hty.top"/>
</c:url>
<br>
<a href="https://search.naver.com/search.naver?where=nexearch&sm=top_hty&fbm=0&ie=utf8&query=뉴진스"> 뉴진스 검색</a>
<br>
<a href="${naverUrl}">NAVER</a>

<hr>
<%-- https://search.daum.net/search?w=tot&DA=YZR&t__nil_searchbox=btn&q=%EC%97%90%EC%8A%A4%ED%8C%8C --%>
<c:url value="https://search.daum.net/search" var="daumUrl">
    <c:param name="w" value="tot"/>
    <c:param name="DA" value="YZR"/>
    <c:param name="t__nil_searchbox" value="btn"/>
    <c:param name="q" value="에스파"/>
</c:url>
<a href="${daumUrl}" target="_blank">에스파 검색</a>
</body>
</html>
