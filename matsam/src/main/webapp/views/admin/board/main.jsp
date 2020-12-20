<%--
  Created by IntelliJ IDEA.
  User: rhanf
  Date: 2020-12-14
  Time: 오후 6:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <!-- Vendor CSS Files -->
    <link type="text/css" href="<c:url value="/admin_assets/vendor/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">
    <link type="text/css" href="<c:url value="/admin_assets/vendor/icofont/icofont.min.css"/>" rel="stylesheet">
    <link type="text/css" href="<c:url value="/admin_assets/vendor/boxicons/css/boxicons.min.css"/>" rel="stylesheet">
    <link type="text/css" href="<c:url value="/admin_assets/vendor/animate.css/animate.min.css"/>" rel="stylesheet">
    <link type="text/css" href="<c:url value="/admin_assets/vendor/owl.carousel/assets/owl.carousel.min.css"/>"
          rel="stylesheet">
    <link type="text/css" href="<c:url value="/admin_assets/vendor/venobox/venobox.css"/>" rel="stylesheet">

    <!-- Costumize CSS -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/admin_assets/css/style.css"/>">

    <style>
        .card {
            width : 330px;
        }
        .row {
            margin-top: 5px;
        }

        .card img {
            width: 100%;
        }

        .card-img-top {
            width: 100%;
        }

        .table input {
            width: 100%;
        }

        .table tbody tr, .table tbody tr td {
            padding: 10px;
        }

        .table select {
            width: 100%;
            height: 48px;
        }

        .table th {
            line-height: 48px;
        }
    </style>
</head>
<body>
<%@include file="/views/admin/inc/header.jsp" %>

<div id="main">
    <!-- ======= Breadcrumbs Section ======= -->
    <section class="breadcrumbs">
        <div class="container">

            <div class="d-flex justify-content-between align-items-center">
                <h2>게시물 관리</h2>
                <ol>
                    <li><a href="<c:url value="/adm/main"/>">메인</a></li>
                    <li>게시물 관리</li>
                </ol>
            </div>

        </div>
    </section><!-- End Breadcrumbs Section -->
    <section class="more-services section-bg">
        <div class="container">
            <div class="section-title">
                <h2>게시물 관리</h2>
            </div>
            <div class="row" style="margin-bottom: 10px;">
                <div class="col-lg-12 d-flex justify-content-center">
                    <button class="go" onclick="location.href='<c:url value="/adm/board/main/B01"/>'">사용자 공지사항</button>
                    <button class="go" onclick="location.href='<c:url value="/adm/board/main/B04"/>'">사장 공지사항</button>
                    <button class="go" onclick="location.href='<c:url value="/adm/board/main/B03"/>'">매거진</button>
                </div>
            </div>
            <div class="row">
                <c:forEach items="${voList}" var="vo" varStatus="no">
                <div class="col-lg-4 col-md-6 d-flex align-items-stretch mb-5 mb-lg-0">
                    <div class="card">
                        <img src="img/like/img1.jpeg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">${vo.value}</h5>
                            <h5 class="card-title">${vo.boardTitle}</h5>
                            <a href="<c:url value="/adm/board/modify/${vo.boardSerialNo}"/>" class="btn">조회/수정</a>
                        </div>
                    </div>
                </div>

                <c:if test="${(no.index + 1) == 3}">
                    </div><div class="row">
                </c:if>
            </c:forEach>
            </div>
            <%--<div class="row">
                <div class="col-lg-4 col-md-6 d-flex align-items-stretch mb-5 mb-lg-0">
                    <div class="card">
                        <img src="img/like/img1.jpeg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title"><a href="">Autem sunt earum</a></h5>
                            <p class="card-text">Et architecto provident deleniti facere repellat nobis iste. Id facere
                                quia quae dolores dolorem tempore</p>
                            <a href="board-details.html" class="btn">조회/수정</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 d-flex align-items-stretch mb-5 mb-lg-0">
                    <div class="card">
                        <img src="img/like/img2.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title"><a href="">Nobis et tempore</a></h5>
                            <p class="card-text">Ut quas omnis est. Non et aut tempora dignissimos similique in
                                dignissimos. Sit incidunt et odit iusto</p>
                            <a href="board-details.html" class="btn">조회/수정</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 d-flex align-items-stretch mb-5 mb-lg-0">
                    <div class="card">
                        <img src="img/like/img3.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title"><a href="">Facere quia quae dolores</a></h5>
                            <p class="card-text">Modi ut et delectus. Modi nobis saepe voluptates nostrum. Sed quod
                                consequatur quia provident dera</p>
                            <a href="board-details.html" class="btn">조회/수정</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-6 d-flex align-items-stretch mb-5 mb-lg-0">
                    <div class="card">
                        <img src="img/like/img1.jpeg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title"><a href="">Autem sunt earum</a></h5>
                            <p class="card-text">Et architecto provident deleniti facere repellat nobis iste. Id facere
                                quia quae dolores dolorem tempore</p>
                            <a href="board-details.html" class="btn">조회/수정</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 d-flex align-items-stretch mb-5 mb-lg-0">
                    <div class="card">
                        <img src="img/like/img2.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title"><a href="">Nobis et tempore</a></h5>
                            <p class="card-text">Ut quas omnis est. Non et aut tempora dignissimos similique in
                                dignissimos. Sit incidunt et odit iusto</p>
                            <a href="board-details.html" class="btn">조회/수정</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 d-flex align-items-stretch mb-5 mb-lg-0">
                    <div class="card">
                        <img src="img/like/img3.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title"><a href="">Facere quia quae dolores</a></h5>
                            <p class="card-text">Modi ut et delectus. Modi nobis saepe voluptates nostrum. Sed quod
                                consequatur quia provident dera</p>
                            <a href="board-details.html" class="btn">조회/수정</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-6 d-flex align-items-stretch mb-5 mb-lg-0">
                    <div class="card">
                        <img src="img/like/img1.jpeg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title"><a href="">Autem sunt earum</a></h5>
                            <p class="card-text">Et architecto provident deleniti facere repellat nobis iste. Id facere
                                quia quae dolores dolorem tempore</p>
                            <a href="board-details.html" class="btn">조회/수정</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 d-flex align-items-stretch mb-5 mb-lg-0">
                    <div class="card">
                        <img src="img/like/img2.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title"><a href="">Nobis et tempore</a></h5>
                            <p class="card-text">Ut quas omnis est. Non et aut tempora dignissimos similique in
                                dignissimos. Sit incidunt et odit iusto</p>
                            <a href="board-details.html" class="btn">조회/수정</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 d-flex align-items-stretch mb-5 mb-lg-0">
                    <div class="card">
                        <img src="img/like/img3.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title"><a href="">Facere quia quae dolores</a></h5>
                            <p class="card-text">Modi ut et delectus. Modi nobis saepe voluptates nostrum. Sed quod
                                consequatur quia provident dera</p>
                            <a href="board-details.html" class="btn">조회/수정</a>
                        </div>
                    </div>
                </div>
            </div>
            --%>
            <div class="row">
                <div class="col-lg-12 d-flex justify-content-center">
                    <ul id="portfolio-flters">
                        <li><a href="">1</a></li>
                        <li><a href="">2</a></li>
                        <li><a href="">3</a></li>
                        <li><a href="">4</a></li>
                        <li><a href="">5</a></li>
                        <li><a href="<c:url value="/adm/board/add"/>">글 추가</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </section><!-- End More Services Section -->

</div>
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
