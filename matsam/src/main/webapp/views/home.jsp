<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인페이지</title>
<link href="<c:url value="/user_assets/css/styles.css" />"
	rel="stylesheet" />

<style>
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
	background: #BD2333;
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

/* 메인시작 */

/* 검색 */
#resturantSerch { /*검색전체창*/
	width: 100%;
	height: 200px;
	background-image: url("<c:url value="/views/images/serchImg.jpg "/>");
	background-size: 100%;
	background-repeat: no-repeat;
	text-align: center;
	display: inline-block;
	padding-top: 300px;
}

#serch { /*검색창*/
	border-radius: 10px;
	width: 500px;
	height: 40px;
	-webkit-transition-duration: 0.4s;
	transition-duration: 0.4s;
}

#serch:hover {
	background: silver;
	color: BD2333;
}

#serchBtn:hover {
	background: #BD2333;
	color: white;
}
/* 검색 끝*/


a {
	color: #000;
	text-decoration: none;
}

.upside {
	height: 50px;
}

.best,.mega
{
	display: inline-block;
	margin-right: 45px;
	margin-bottom: 30px;
	width: 300px;
	height :400px;
	float: left;
	overflow: hidden;
}

a:hover{

	text-decoration:#BD2232; 
}



img{
	width: 100%;
	height: 100%;
}

.imagesize{
	width: 300px;
	height: 200px;
}
</style>

</head>
<body>
	<!-- 헤더시작 -->
	<!-- 헤더시작 -->
	<div class="header">
		<!-- 로그인로고이미지 -->
		<c:choose>
		<c:when test="${userAuth == null}">
		<a href="/user/login" id="headerlogin"><img
			src="<c:url value="/views/images/login.png"/>" alt="" width="100px"
			height="100px" /></a>
		</c:when>
		<c:otherwise>
		<a href="/user/mypage" id="headerlogin"><img
			src="<c:url value="/views/images/login.png"/>" alt="" width="100px"
			height="100px" /></a>
		</c:otherwise>
		</c:choose>
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
	<!-- 메인시작 -->
	<div class="container" >

		<!-- 검색 시작 -->
		<div id="resturantSerch">
			<input type="text" id="serch" /><input type="submit" value="검색" />
		</div>
		<div class="upside"></div>
		<!-- 검색 끝 -->
		
		
		
		<!-- best 맛집 시작 -->
		<div class="container"
			style="display: inline-block; text-align: center;">
			<h2 class="mb-4">식당 LIST</h2>
			<hr width="80%" color="#BD2333"/>
		</div>
		
		<div class="container"
			style="display: inline-block; text-align: center;">
		
		
		
		<div class="best" id="bestrestau1" style="display: inline-block; text-align: center;">
		<a href="/test/detailRestaurant"> <!-- 이거 해당 식당 링크 받아서 넘겨야 하지 않나) -->
		<div class="imagesize">
		<img src ="<c:url value="/views/images/food.jpg"/>" />
		</div>
		<p>식당 이름</p>
		<p>등급</p>
		<p>전화 번호</p>
		<p>주소</p>
		<p>상세 정보 </p>
		</a>
		</div>
		
		<div class="best" id="bestrestau2">
		<a href="/test/detailRestaurant"> <!-- 이거 해당 식당 링크 받아서 넘겨야 하지 않나) -->
		<div class="imagesize">
		<img src ="<c:url value="/views/images/serchImg.jpg "/>" />
		</div>
		<p>식당 이름</p>
		<p>등급</p>
		<p>전화 번호</p>
		<p>주소</p>
		<p>상세 정보</p>
		</a>
		</div>
		
		
		<div class="best" id="bestrestau3">
		<a href="/test/detailRestaurant"> <!-- 이거 해당 식당 링크 받아서 넘겨야 하지 않나) -->
		<div class="imagesize">
		<img src ="<c:url value="/views/images/food.jpg"/>" />
		</div>
		<p>식당 이름</p>
		<p>등급</p>
		<p>전화 번호</p>
		<p>주소</p>
		<p>상세 정보</p>
		</a>
		</div>
		
		<div class="best" id="bestrestau4">
		<a href="/test/detailRestaurant"> <!-- 이거 해당 식당 링크 받아서 넘겨야 하지 않나) -->
		<div class="imagesize">
		<img src ="<c:url value="/views/images/food.jpg"/>" />
		</div>
		<p>식당 이름</p>
		<p>등급</p>
		<p>전화 번호</p>
		<p>주소</p>
		<p>상세 정보</p>
		</a>
		</div>
		
		
		<div class="best" id="bestrestau5">
		<a href="/test/detailRestaurant"> <!-- 이거 해당 식당 링크 받아서 넘겨야 하지 않나) -->
		<div class="imagesize">
		<img src ="<c:url value="/views/images/food.jpg"/>" />
		</div>
		<p>식당 이름</p>
		<p>등급</p>
		<p>전화 번호</p>
		<p>주소</p>
		<p>상세 정보</p>
		</a>
		</div>
		
		<div class="best" id="bestrestau6">
		<a href="/test/detailRestaurant"> <!-- 이거 해당 식당 링크 받아서 넘겨야 하지 않나) -->
		<div class="imagesize">
		<img src ="<c:url value="/views/images/food.jpg"/>" />
		</div>
		<p>식당 이름</p>
		<p>등급</p>
		<p>전화 번호</p>
		<p>주소</p>
		<p>상세 정보</p>
		</a>
		</div>
		
		
		</div>
		<!-- 베스트 맛집 끝 (동적 div로 식당 추가할 때마다 늘어나기) -->
		<div class="upside"></div>
		<!-- 매거진 시작 -->
		
		<div class="container"
			style="display: inline-block; text-align: center;">
			<h2 class="mb-4">매거진</h2>
			<hr width="80%" color="#BD2333"/>
		</div>
		
		<div class="container"
			style="display: inline-block; text-align: center;">
		
		
		<div class="mega" id="magazine1">
		<a href="/test/magazine"> <!-- 이거 해당 매거진 링크 받아서 넘겨야 하지 않나) -->
		<div class="imagesize">
		<img src ="<c:url value="/views/images/food.jpg"/>" />
		</div>
		<p>제목</p>
		<p>
		상세 정보
		</p>
		</a>
		</div>
		
		<div class="mega" id="magazine2">
		<a href="/test/magazine"> <!-- 이거 해당 매거진 링크 받아서 넘겨야 하지 않나) -->
		<div class="imagesize">
		<img src ="<c:url value="/views/images/food.jpg"/>" />
		</div>
		<p>제목</p>
		<p>상세 정보</p>
		</a>
		</div>
		
		<div class="mega" id="magazine3">
		<a href="/test/magazine"> <!-- 이거 해당 매거진 링크 받아서 넘겨야 하지 않나) -->
		<div class="imagesize">
		<img src ="<c:url value="/views/images/food.jpg"/>" />
		</div>
		<p>제목</p>
		<p>상세 정보</p>
		</a>
		</div>
		
		
		<div class="mega" id="magazine4">
		<a href="/test/magazine"> <!-- 이거 해당 매거진 링크 받아서 넘겨야 하지 않나) -->
		<div class="imagesize">
		<img src ="<c:url value="/views/images/food.jpg"/>" />
		</div>
		<p>제목</p>
		<p>상세 정보</p>
		</a>
		</div>
		
		<div class="mega" id="magazine5">
		<a href="/test/magazine"> <!-- 이거 해당 매거진 링크 받아서 넘겨야 하지 않나) -->
		<div class="imagesize">
		<img src ="<c:url value="/views/images/food.jpg"/>" />
		</div>
		<p>제목</p>
		<p>상세 정보</p>
		</a>
		</div>
		
		
		<div class="mega" id="magazine6">
		<a href="/test/magazine"> <!-- 이거 해당 매거진 링크 받아서 넘겨야 하지 않나) -->
		<div class="imagesize">
		<img src ="<c:url value="/views/images/food.jpg"/>" />
		</div>
		<p>제목</p>
		<p>상세 정보</p>
		</a>
		</div>
			
		</div>
		
		
		
	</div>


	<!-- 푸터시작 -->
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
	<!-- 푸터끝 -->
</body>
</html>