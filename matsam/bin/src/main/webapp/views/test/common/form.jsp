<%--
  Created by IntelliJ IDEA.
  User: rhanf
  Date: 2020-12-15
  Time: 오전 11:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/test/commonReg">
    <table>
        <tr>
            <td>NAME</td>
            <td>
                <input type="text" name="label">
            </td>
        </tr>
        <tr>
            <td>VALUE</td>
            <td>
                <input type="text" name="value">
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="전송">
            </td>
        </tr>
    </table>
</form>
<table>
    <tr>
        <td>NAME</td>
        <td>VALUE</td>
    </tr>
    <!--
    <c:choose>
        <c:when test="${!empty data}">
            <c:forEach items="${data}" var="data">
                <tr>
                    <td>${data.label}</td>
                    <td>${data.value}</td>
                </tr>
            </c:forEach>
        </c:when>
        <c:otherwise>
            <tr>
                <td colspan="2">데이터 없음</td>
            </tr>
        </c:otherwise>
    </c:choose>
    -->
</table>
</body>
</html>
