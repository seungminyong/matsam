<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>여긴 delete</h1>

<form method="post">
	<table border="">
		<tr>
			<td>이메일</td>
			<td><input type="text" value="${userVO.email }" name="email" readonly="readonly"/></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="password"/></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="회원탈퇴"/></td>
		</tr>	
	</table>
</form>
</body>
</html>