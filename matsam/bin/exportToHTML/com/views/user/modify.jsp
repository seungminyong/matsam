<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
여긴 회원정보 수정페이지






<form method="post">
	<table border="">
		<tr>
			<td>일련번호</td>
			<td><input type="text" value="${userVO.user_serial_no }" name="user_serial_no" readonly="readonly"/></td>
		</tr>
		<tr>
			<td>회원등급</td>
			<td><input type="text" value="${userVO.grade_cd }" name="grade_cd" readonly="readonly"/></td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><input type="text" value="${userVO.email }" name="email" readonly="readonly"/></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="password"/></td>
		</tr>
		<tr>
			<td>핸드폰번호</td>
			<td><input type="text" value="${userVO.phone }" name="phone"/></td>
		</tr>
		<tr>
			<td>닉네임</td>
			<td><input type="text" value="${userVO.nickname }" name="nickname"/></td>
		</tr>

		<tr>
			<td>이름</td>
			<td><input type="text" value="${userVO.name }" name="name"/></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="수정"/></td>
		</tr>	
	</table>
</form>
</body>
</html>