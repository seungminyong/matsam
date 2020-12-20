<%--
  Created by IntelliJ IDEA.
  User: rhanf
  Date: 2020-12-17
  Time: 오전 10:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
    <c:forEach items="${reserVOList}" var="reserVO">
    <tr>
        <td>${reserVO.reserSerialNo}</td>
        <td>${reserVO.storeSerialNo}</td>
        <td>${reserVO.userName}</td>
        <td>${reserVO.totalPrice}</td>
        <td>${reserVO.regDate}</td>
    </tr>
    </c:forEach>
</table>
</body>
</html>

