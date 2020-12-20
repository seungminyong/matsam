<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>음식 신청</title>
<link href="<c:url value="/user_assets/css/styles.css" />"
	rel="stylesheet" />
<style type="text/css">
body {
	margin: 0;
	padding: 0;
}

.gotomiddle {
	margin: auto 0;
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

input[type="date"] {
	width: 600px;
}

.upside{
	
	height: 50px;
}

.miniupside{
	
	height: 30px;
}

.target{
	width: 1000px;
	margin-left:40px;

}

.target th,
.target td,
.target thead th,
.target tbody + tbody {
  border: 0;
  text-align: center !important;
}

.target tr{
	height:35px;
}

.gogogonext{
	width:600px;
	margin-left: 520px;
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

	<!-- 메인페이지 -->
	
	<div class="upside"></div>
	<div id="menumenu" class="container"  >
		<table class="table table-borderless" id="resmenu">
			<thead class="thead-dark">
				<tr>
					<th scope="col" class="text-center">메뉴 이름</th>
					<th scope="col" class="text-center">가격</th>
					<th scope="col"></th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${menuVOList}" var="menuVO" varStatus="no">
				<c:set var="storeSerialNo" value="${menuVO.resSeriralNo}" />
				<tr id="menu${no.index}">
					<td align="center">${menuVO.menuName}</td>
					<td align="center">${menuVO.menuPrice}</td>
					<td align="center">
						<button id="btn${no.index}" class="btn btn-danger">추가</button>
					</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
		
		<form action="/reser/payment">
			<div  class="container" style="display: inline-block;text-align: center;">
				<input type="date" name="reserDateStr">
			
			
			<input type="hidden" name="storeSerialNo" value="${storeNo}">
			</div>
				<div class="miniupside"></div>
			
			
			
			<table class="target">

			</table>
			
			<div class="upside"></div>
			<div  class="container" style="display: inline-block; text-align: center;">
			<input type="submit" class="btn btn-primary btn-lg" value="다음">
			</div>
		</form>
		<script type="text/javascript"
			src="<c:url value="/admin_assets/js/jquery/jquery-3.5.1.js"/>"></script>
		<script type="text/javascript"
			src="<c:url value="/admin_assets/js/jquery/jquery-ui.min.js"/>"></script>
		<script>
			<c:forEach items="${menuVOList}" var='menuVO' varStatus="no">
			var count = 0;
			$("#btn${no.index}")
					.click(
							function() {
								var hidden = "<input type='hidden' id='hidden" + count + "' name='menuSerialNo' value='${menuVO.menuSerialNo}'>"
								var menu = "<tr  class='table-warning'  id='setTr" + count + "'>"
										+ "<td><p class='font-weight-bold'>${menuVO.menuName}</p></td>"
										+ "<td><p class='font-weight-bold'>${menuVO.menuPrice}</p></td>"
										+ "<td><button  class='btn btn-danger' id='btnDelete" + count + "'>삭제</button>"
										+ "</tr>"
								$("form").append(hidden);
								$(".target").append(menu);
										var btnDelete = "#btnDelete" + count;
										var hidden = "#hidden" + count;
										var setTr = "#setTr" + count;
								$(btnDelete).click(function () {
									$(hidden).remove();
									$(setTr).remove();
									});
								
								count = count + 1;
							});
			</c:forEach>
		</script>
		
		</div>
		<!-- 메인 페이지 끝 -->


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