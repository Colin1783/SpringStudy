<%--
  Created by IntelliJ IDEA.
  User: Colin
  Date: 2024-04-08
  Time: 오후 2:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>구두 수선 서비스</title>
</head>
<body>
<header>
    <h1>구두 수선 마스터</h1>
</header>
<%--jsp 주석--%>
<%-- ${attribute name}을 작성하면 해당 attribute 명에 매핑된 attribute value 출력됨--%>
<section>
    <h2>서비스 종류</h2>
    <ul>
        <li>구두 굽 교체</li>
        <li>구두 닦기 및 연마</li>
        <li>구멍 및 찢어진 부분 수리</li>
        <li>스트랩 및 버클 교체</li>
    </ul>
</section>

<section>
    <h2>예약하기</h2>
    <form>
        <label for="name">이름:</label>
        <input type="text" id="name" name="name"><br>
        <label for="email">이메일:</label>
        <input type="email" id="email" name="email"><br>
        <label for="service">서비스 선택:</label>
        <select id="service" name="service">
            <option value="heel_replacement">구두 굽 교체</option>
            <option value="polishing">구두 닦기 및 연마</option>
            <option value="repair">구멍 및 찢어진 부분 수리</option>
            <option value="strap_replacement">스트랩 및 버클 교체</option>
        </select><br>
        <input type="submit" value="예약하기">
    </form>
</section>

<footer>
    <h2>연락처 정보</h2>
    <p>주소: ${city}시 ${address} </p>
    <p>전화번호: 02-334-4507</p>
    <p>이메일: <a href="http://www.naver.com">master@shoerepair.com</a></p>
</footer>
</body>
</html>
