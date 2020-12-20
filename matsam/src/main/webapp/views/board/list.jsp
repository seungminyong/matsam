<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:forEach items="${voList }" var="vo">
<a href="<c:url value="/board/detail/${vo.boardSerialNo }"/>">vo.boardTitle</a>
</c:forEach>
</body>
</html>