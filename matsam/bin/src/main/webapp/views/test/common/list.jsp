<%--
  Created by IntelliJ IDEA.
  User: rhanf
  Date: 2020-12-15
  Time: 오후 5:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
    <tr>
        <td>NO.</td>
        <td>NAME</td>
        <td>VALUE</td>
    </tr>
<c:forEach items="${data}" var="data" varStatus="no">
    <tr>
        <td>${no.index}</td>
        <td>${data.label}</td>
        <td>${data.value}</td>
    </tr>
</c:forEach>
</table>
</body>
</html>
