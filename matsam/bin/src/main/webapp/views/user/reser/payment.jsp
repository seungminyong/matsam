<%--
  Created by IntelliJ IDEA.
  User: rhanf
  Date: 2020-12-17
  Time: 오전 11:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
<html>
<head>
<title>Title</title>

<link href="<c:url value="/user_assets/css/styles.css" />"
	rel="stylesheet" />


<style type="text/css">
@charset "UTF-8";

body {
	margin: 0;
	padding: 0;
}

.header { /* 헤더전체크기 */
	width: 100%;
	height: 100px;
	background-color: #bd2333;
	display: flex;
	align-items: center;
	justify-content: space-between;
	border: none;
}

#headerlogin { /* 사람이미지*/
	height: 100px;
	width: 100px;
}

#headerlogo { /*로고*/
	height: 100px;
	width: 100px;
}

#menubar { /*메뉴바*/
	background-color: #bd2333;
	width: 100px;
	height: 100px;
	align-items: center;
	display: flex;
	flex-direction: column;
	justify-content: space-around;
	border-left: 1px white solid;
}

.line { /*메뉴바 선*/
	align-items: center;
	background: white;
	width: 60px;
	height: 5px;
	margin: 10px;
}

.dropbtn {
	background-color: #BD2333;
	color: white;
	font-size: 16px;
	border: none;
	cursor: pointer;
}

.dropdown {
	position: relative;
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: absolute;
	right: 2px;
	background-color: #BD2333;
	font-size: large;
	font-weight: bold;
	text-align: center;
	width: 300px;
	height: 450px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
}

.dropdown-content a {
	color: black;
	padding: 22px 26px;
	text-decoration: none;
	display: block;
	-webkit-transition-duration: 0.4s;
	transition-duration: 0.4s;
}

.dropdown-content a:hover {
	background-color: #f9f9f9;
}

.dropdown:hover .dropdown-content {
	display: block;
}

.dropdown:hover .dropbtn {
	background-color: #BD2333;
}
/* 헤더끝 */

/* 사이드바 스타일 */
#sidebar-wrapper {
	position: fixed;
	width: 200px;
	height: 1000px;
	background: #F2F2F2;
	overflow-x: hidden;
	overflow-y: auto;
}

#page-content-wrapper {
	width: 100%;
	padding: 20px;
}

.sidebar-brand {
	border: 1px solid #D8D8D8;
}

.sidebar-nav {
	width: 200px;
	height: 700px;
	margin: 0;
	padding: 0;
	list-style: none;
}

.sidebar-nav li {
	text-indent: 2.0em;
	line-height: 4.0em;
}

.sidebar-nav li a {
	display: block;
	text-decoration: none;
	color: black;
	border: 1px solid #D8D8D8;
}

.sidebar-nav li a:hover {
	color: #BD2333;
	background: silver;
	transition-duration: 0.5s;
	box-shadow: 5px 5px 5px 5px gray;
}

.sidebar-nav>.sidebar-brand {
	font-size: 1.2em;
	line-height: 5.0em;
}

.container_wrapper {
	width: 100%;
	height: 100%;
}
/*푸터*/
.footer {
	width: 100%;
	border-bottom: none;
	border-left: none;
	position: relative;
}

#foot {
	width: 100%;
	height: 120px;
	border: 1px solid #000;
	background-color: white;
	text-align: center;
	position: absolute;
	left: 0px;
	top: 0px;
}

#foot1 {
	text-decoration: none;
	color: #000;
}

#foot2 {
	text-decoration: none;
	color: #000;
}

#footlogo {
	height: 120px;
	width: 130px;
}

/* 푸터 끝 */
.upside {
	height: 50px;
}

input[type="text"],input[type="password"] {
	width: 100%;
	line-height: 30px;
}
</style>
</head>
<body>
	<!-- 헤더시작 -->
	<div class="header">
		<!-- 로그인로고이미지 -->
		<a href="" id="headerlogin"><img
			src="<c:url value="/views/images/login.png"/>" alt="" width="100px"
			height="100px" /></a>
		<!-- 로고이미지 -->
		<a href="" id="headerlogo"><img
			src="<c:url value="/views/images/logo.jpg"/>" alt="" width="130px"
			height="100px" /></a>

		<!-- 메뉴바시작 -->
		<label for="menuch" id="menubar">
			<div class="dropdown">
				<div id="inmenu">
					<button class="dropbtn">메뉴</button>
					<div class="line"></div>
					<div class="line"></div>
					<div class="line"></div>
					<div class="dropdown-content">
						<a href="#">맛삼이란</a> <a href="#">Best 맛집!</a> <a href="#">맛집
							보러가기</a> <a href="#">매거진</a>
					</div>
				</div>
			</div>
		</label>
		<!-- 메뉴바끝 -->
	</div>
	<!-- 헤더 끝 -->


	<!-- 메인 시작 -->
	<div class="upside"></div>

	<div id="menumenu" class="container">
		<div class="container"
			style="display: inline-block; text-align: center;">
			<h2 class="mb-4">선택한 메뉴</h2>
		</div>
		<table class="table table-borderless">
			<thead class="thead-dark">
				<tr>
					
					<th class="text-center">메뉴 이름</th>
					<th class="text-center">메뉴 개수</th>
					<th class="text-center">메뉴 총금액</th>
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${resMenuList}" var="resMenuVO">
					<c:forEach items="${reserDetailVOList}" var="detailVO">
						<c:if test="${resMenuVO.menuSerialNo == detailVO.menuSerialNo}">
							<tr>
								
								<td class="text-center">${resMenuVO.menuName}</td>
								<td class="text-center">${detailVO.amount}</td>
								<td class="text-center">${detailVO.amountPrice}</td>
							</tr>
						</c:if>
					</c:forEach>
				</c:forEach>
			</tbody>
		</table>
		<div class="container"
			style="display: inline-block; text-align: center;">
			<h2 class="mb-4">예약 정보</h2>
		</div>
		<table class="table table-borderless">
			<tr>
				<td class="text-center"><fmt:formatDate value="${reserVO.reserDate}" pattern="yy/MM/dd (E)"/></td>

			</tr>
			
			

		</table>
		<form action="/reser/payment" method="post">
			<input type="hidden" value="${reserDateStr}" name="reserDateStr">
			<input type="hidden" value="${reserVO.storeSerialNo}"
				name="storeSerialNo">
			<c:forEach items="${resMenuList}" var="resMenuVO">
				<c:forEach items="${reserDetailVOList}" var="detailVO">
					<c:if test="${resMenuVO.menuSerialNo == detailVO.menuSerialNo}">
						<input type="hidden" value="${detailVO.menuSerialNo}"
							name="menuSerialNo">
						<input type="hidden" value="${detailVO.amount}" name="amount">
						<input type="hidden" value="${detailVO.amountPrice}"
							name="amountPrice">

					</c:if>
				</c:forEach>
			</c:forEach>


			<table class="table table-borderless">

				<tr>
					<td class="text-center"><p class="font-weight-bold">예약자 이름</p></td>
					<td colspan="4" class="text-center"><input type="text" name="userName"></td>
				</tr>

				<tr>
					<td class="text-center"><p class="font-weight-bold">예약자 전화번호</p></td>
					<td colspan="4" class="text-center"><input type="text" name="userPhone"></td>
				</tr>

				<tr>
					<td class="text-center"><p class="font-weight-bold">요청사항</p></td>
					<td colspan="4" class="text-center"><input type="text" name="reserContent"></td>
				</tr>

				<tr>
					<td class="text-center"><p class="font-weight-bold">카드번호</p></td>
					<td class="text-center"><input type="text" name="cardNumArr" maxlength="4"></td>
					<td class="text-center"><input type="password" name="cardNumArr" maxlength="4"></td>
					<td class="text-center"><input type="password" name="cardNumArr" maxlength="4"></td>
					<td class="text-center"><input type="text" name="cardNumArr" maxlength="4"></td>
				</tr>

			</table>
			 <div class="upside"></div>
			 <div class="container"
			style="display: inline-block; text-align: center;">
			<h2> 총결제 금액 : ${reserVO.totalPrice} </h2>
			 </div>
			 <input type="hidden" name="totalPrice" value="${reserVO.totalPrice}">
			
			
			<div class="upside"></div>
			 <div class="container"
			style="display: inline-block; text-align: center;">
			<input type="submit" class="btn btn-danger"  value="결제"> 
			
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="button"
				value="이전" class="btn btn-light"
				onclick="location.href='<c:url value="/reser/main/${reserVO.storeSerialNo}"/>;'">
			</div>
		</form>
	</div>
	<!-- 메인 끝 -->

	<!-- 푸터 시작 -->
	<div class="footer">
		<div id="foot">
			<img src="<c:url value="/views/images/logo.jpg"/>" alt=""
				id="footlogo" align="left" /> <a href="" id="foot1"><strong>이용약관</strong></a>
			<a href="" id="foot2"><strong>개인정보취급방침</strong></a><br> 상호명:맛삼 |
			대표이사:남다원 | 설립일:2020년 11월01일 | 개인정보관리책임자:황일용<br> 전화:02-123-1234 |
			팩스:02-404-500 | 이메일:ms@matsam.co.kr | 사업자등록번호: 110-77-14329<br>
			통신판매업 신고번호:제 2018-서울종로-0165호 | 주소:서울특별시 강남구 역삼동 코리아아이티 4층<br>
			©Copyright 2020 Matsam | All Rights Reserved
		</div>
	</div>
</body>
</html>

