<%--
  Created by IntelliJ IDEA.
  User: rhanf
  Date: 2020-12-14
  Time: 오전 11:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Vendor CSS Files -->
    <link  type="text/css" href="<c:url value="/admin_assets/vendor/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">
    <link  type="text/css" href="<c:url value="/admin_assets/vendor/icofont/icofont.min.css"/>" rel="stylesheet">
    <link  type="text/css" href="<c:url value="/admin_assets/vendor/boxicons/css/boxicons.min.css"/>" rel="stylesheet">
    <link  type="text/css" href="<c:url value="/admin_assets/vendor/animate.css/animate.min.css"/>" rel="stylesheet">
    <link  type="text/css" href="<c:url value="/admin_assets/vendor/owl.carousel/assets/owl.carousel.min.css"/>" rel="stylesheet">
    <link  type="text/css" href="<c:url value="/admin_assets/vendor/venobox/venobox.css"/>" rel="stylesheet">

    <!-- Costumize CSS -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/admin_assets/css/style.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/admin_assets/css/main.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/style.css"/>">
</head>
<body>
<%@include file="/views/admin/inc/header.jsp"%>
<section class="breadcrumbs">
    <div class="container">
        <div class="d-flex justify-content-between align-items-center">
            <h2>관리자 관리</h2>
            <ol>
                <li><a href="main.html">메인</a></li>
                <li>관리자 관리</li>
            </ol>
        </div>
    </div>
</section><!-- End Breadcrumbs Section -->
<section class="counts section-bg">
    <div class="container">
        <div class="row no-gutters">

            <div class="col-lg-12 col-md-6 d-md-flex align-items-md-stretch">
                <div class="count-box">
                    <i class="icofont-simple-smile"></i>
                    <h4>&nbsp;현재 접속 관리자</h4>
                    <h1>${authInfo.admName}님</h1>
                    <a href="<c:url value="/adm/general/detail/${authInfo.admConno}"/>">수정</a>
                </div>
            </div>
        </div>
    </div>
</section><!-- End Counts Section -->
<section class="more-services section-bg">
    <div class="container">
        <div class="section-title">
            <h2>관리자</h2>
        </div>
        <div class="row">
            <table class="table" id="menu" style="width : 100%;">
                <thead>
                <tr>
                    <th scope="col">NO</th>
                    <th scope="col">이름</th>
                    <th scope="col">이메일</th>
                    <th scope="col" colspan="2" style="text-align : center;">기능</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${voList}" var="vo" varStatus="no">
                <tr>
                    <th scope="row">${no.index + 1}</th>
                    <td>${vo.admName}</td>
                    <td>
                        ${vo.admId}</td>
                    <td>
                        <button class="go-1" onclick="location.href='<c:url value="/adm/general/detail/${vo.admConno}"/>'">조회</button>
                    </td>
                    <td>
                        <button class="go-1" onclick="location.href='<c:url value="/adm/general/delete/${vo.admConno}"/>'">삭제</button>
                    </td>
                </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
        <div class="row">
            <div class="col-lg-12 d-flex justify-content-center">
                <ul id="portfolio-flters">
                    <li><a href="<c:url value="/adm/general/add"/>">추가</a></li>
                </ul>
            </div>
        </div>
    </div>
</section><!-- End More Services Section -->
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="<c:url value="/admin_assets/vendor/jquery/jquery.min.js"/>"></script>
<script src="<c:url value="/admin_assets/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>
<script src="<c:url value="/admin_assets/vendor/jquery.easing/jquery.easing.min.js"/>"></script>
<script src="<c:url value="/admin_assets/vendor/php-email-form/validate.js"/>"></script>
<script src="<c:url value="/admin_assets/vendor/jquery-sticky/jquery.sticky.js"/>"></script>
<script src="<c:url value="/admin_assets/vendor/waypoints/jquery.waypoints.min.js"/>"></script>
<script src="<c:url value="/admin_assets/vendor/counterup/counterup.min.js"/>"></script>
<script src="<c:url value="/admin_assets/vendor/isotope-layout/isotope.pkgd.min.js"/>"></script>
<script src="<c:url value="/admin_assets/vendor/owl.carousel/owl.carousel.min.js"/>"></script>
<script src="<c:url value="/admin_assets/vendor/venobox/venobox.min.js"/>"></script>
</body>
</html>
