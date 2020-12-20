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
.inmeaning {
	width: 1000px;
	border: 1px solid;
}

.innerimage {
	width: 450px;
	height: 450px;
	float: left;
	margin-left: 10px;
	margin-right: 30px;
	margin-top: 10px;
	margin-bottom: 30px;
	display: inline-block;
}

.restaurantinfo {
	width: 450px;
	height: 450px;
	float: left;
	margin-left: 10px;
	margin-right: 30px;
	margin-top: 10px;
	margin-bottom: 30px;
	display: inline-block;
	overflow: auto;
}

img {
	width: 100%;
	height: 100%;
}

.upside {
	height: 50px;
}

.menu {
	margin-left: 10px;
	margin-right: 10px;
}

.restaurantexplain {
	width: 800px;
	background-color: #E8F2FE;
	display: inline-block;
}

.review {
	width: 800px;
	background-color: #E8F2FE;
	display: inline-block;
	border: 1px solid;
	margin-bottom: 10px;
}

.reviewimage {
	width: 100px;
	height: 100px;
	margin-left: 30px;
	display: inline-block;
	background-color: #fed;
}

.btn-like {
  color: transparent;
  text-shadow: 0 0 2px rgba(255,255,255,.7), 0 0 0 #000;
  
}
.btn-like:hover {
  text-shadow: 0 0 0 #ea0;
}
.btn-like.done {
  color: inherit;
  text-shadow: 0;
}
.btn-like.done:hover {
  color: transparent;
  text-shadow: 0 0 0 #777;
}
</style>


</head>
<body>
	<!-- 헤더시작 -->
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
	<!-- 메인시작 -->
	<div class="upside"></div>
	<div class="container">

		<div class="inmeaning"
			style="display: inline-block; text-align: center;">


			<div class="explain">

				<div class="innerimage">
					<img src="<c:url value="/views/images/serchImg.jpg "/>">
				</div>


				<div class="restaurantinfo">


					<table class="table table-borderless">

						<tbody>
							<!-- c for each 해서 불러오기  -->

							<tr>
								<td class="text-center"><h3>이름</h3></td>
							</tr>
							<tr>
								<td class="text-center">
									<h4>등급: ★ x 5</h4> <!-- 근데 우리 이거 있나? -->
								</td>
							</tr>
							<tr>
								<td class="text-center"><h4>서울 강남구 봉은사로 404 11 롯데캐슬
										아파트 103동 1002호 더 길게 쓰면 어떻게 되는지 확인 1234 1234</h4></td>
							</tr>

							<tr>
								<td class="text-center">
									<h4>전화번호</h4>
								</td>
							</tr>

							<tr>
								<td class="text-center">
									<h4>태그</h4>
								</td>
							</tr>

							<tr>
								<td class="text-center">
									
									<a id="linkMyBlog" href="/test/main"><button class="btn-like">👍</button></a> <script
										src="<c:url value="/user_assets/js/jquery-3.5.1.js" />"></script> <script>
											$(".btn-like").click(function() {
												$(this).toggleClass("done");
												$("#linkMyBlog").attr("href", "/test/detailRestaurant")
											})
										</script>
										
								</td>
							</tr>
						</tbody>

					</table>
				</div>
				<!--이미지, 상세정보 끝 -->
				<!-- 식당 설명 -->
				<h2>식당 설명</h2>
				<div class="restaurantexplain">리뷰 설명 불러오기 Contrary to popular
					belief, Lorem Ipsum is not simply random text. It has roots in a
					piece of classical Latin literature from 45 BC, making it over 2000
					years old. Richard McClintock, a Latin professor at Hampden-Sydney
					College in Virginia, looked up one of the more obscure Latin words,
					consectetur, from a Lorem Ipsum passage, and going through the
					cites of the word in classical literature, discovered the
					undoubtable source. Lorem Ipsum comes from sections 1.10.32 and
					1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good
					and Evil) by Cicero, written in 45 BC. This book is a treatise on
					the theory of ethics, very popular during the Renaissance. The
					first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes
					from a line in section 1.10.32. The standard chunk of Lorem Ipsum
					used since the 1500s is reproduced below for those interested.
					Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum"
					by Cicero are also reproduced in their exact original form,
					accompanied by English versions from the 1914 translation by H.
					Rackham.</div>
			</div>
			<!-- 메뉴  -->
			<div class="menu">
				<h2>메뉴</h2>

				<table class="table table-borderless">
					<thead class="thead-dark">
						<tr>

							<th class="text-center">메뉴 이름</th>
							<th class="text-center">가격</th>
							<th class="text-center">설명</th>
						</tr>
					</thead>

					<tbody>
						<!-- c for each 해서 불러오기  -->

						<tr>
							<td>이름1</td>
							<td>가격1</td>
							<td>설명1</td>
						</tr>

						<tr>
							<td>이름2</td>
							<td>가격2</td>
							<td>설명2</td>
						</tr>

					</tbody>
				</table>
				<input type="submit" class="btn btn-danger" value="예약하기">
			</div>
			<!-- 메뉴 끝 -->
			<div class="upside"></div>
			<!-- 리뷰 시작 -->
			<h2>리뷰</h2>

			<div class="review" id="review1">
				<p></p>
				<div class="reviewimage">
					<img alt="" src="<c:url value="/views/images/food.jpg"/>">
				</div>

				<h5>작성자:</h5>
				식당 설명 불러오기 Contrary to popular belief, Lorem Ipsum is not simply
				random text. It has roots in a piece of classical Latin literature
				from 45 BC, making it over 2000 years old. Richard McClintock, a
				Latin professor at Hampden-Sydney College in Virginia, looked up one
				of the more obscure Latin words, consectetur, from a Lorem Ipsum
				passage, and going through the cites of the word in classical
				literature, discovered the undoubtable source. Lorem Ipsum comes
				from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum"
				(The Extremes of Good and Evil) by Cicero, written in 45 BC. This
				book is a treatise on the theory of ethics, very popular during the
				Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit
				amet..", comes from a line in section 1.10.32. The standard chunk of
				Lorem Ipsum used since the 1500s is reproduced below for those
				interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et
				Malorum" by Cicero are also reproduced in their exact original form,
				accompanied by English versions from the 1914 translation by H.
				Rackham.
			</div>

			<div class="review" id="review2">
				<div class="reviewimage">
					<img alt="" src="<c:url value="/views/images/food.jpg"/>">
				</div>
				<p></p>
				<h5>작성자:</h5>
				<br> 식당 설명 불러오기 Contrary to popular belief, Lorem Ipsum is not
				simply random text. It has roots in a piece of classical Latin
				literature from 45 BC, making it over 2000 years old. Richard
				McClintock, a Latin professor at Hampden-Sydney College in Virginia,
				looked up one of the more obscure Latin words, consectetur, from a
				Lorem Ipsum passage, and going through the cites of the word in
				classical literature, discovered the undoubtable source. Lorem Ipsum
				comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et
				Malorum" (The Extremes of Good and Evil) by Cicero, written in 45
				BC. This book is a treatise on the theory of ethics, very popular
				during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum
				dolor sit amet..", comes from a line in section 1.10.32. The
				standard chunk of Lorem Ipsum used since the 1500s is reproduced
				below for those interested. Sections 1.10.32 and 1.10.33 from "de
				Finibus Bonorum et Malorum" by Cicero are also reproduced in their
				exact original form, accompanied by English versions from the 1914
				translation by H. Rackham.
			</div>
			<!-- 리뷰 끝 -->
			<div class="upside"></div>

		</div>


		<div class="upside"></div>
	</div>

	<!-- 메인 끝  -->
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