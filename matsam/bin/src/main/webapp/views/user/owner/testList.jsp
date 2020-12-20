<%--
  Created by IntelliJ IDEA.
  User: rhanf
  Date: 2020-12-19
  Time: 오전 3:25
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
    <c:forEach items="${manageVOList}" var="manageVO">
        <tr>
            <td>${manageVO.resSerialNo}</td>
            <td>${manageVO.resName}</td>
            <td>${manageVO.resRegState}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
