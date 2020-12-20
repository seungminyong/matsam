<%--
  Created by IntelliJ IDEA.
  User: rhanf
  Date: 2020-12-14
  Time: 오전 11:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <!-- Favicons -->
<%--
    <link href="assets/img/favicon.png" rel="icon">
    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">
--%>

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link  type="text/css" href="<c:url value="/admin_assets/vendor/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">
    <link  type="text/css" href="<c:url value="/admin_assets/vendor/icofont/icofont.min.css"/>" rel="stylesheet">
    <link  type="text/css" href="<c:url value="/admin_assets/vendor/boxicons/css/boxicons.min.css"/>" rel="stylesheet">
    <link  type="text/css" href="<c:url value="/admin_assets/vendor/animate.css/animate.min.css"/>" rel="stylesheet">
    <link  type="text/css" href="<c:url value="/admin_assets/vendor/owl.carousel/assets/owl.carousel.min.css"/>" rel="stylesheet">
    <link  type="text/css" href="<c:url value="/admin_assets/vendor/venobox/venobox.css"/>" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="<c:url value="/admin_assets/css/style.css"/>" rel="stylesheet">
    <link href="<c:url value="/assets/style.css"/>" rel="stylesheet">
    <title>Title</title>
</head>
<body>
<!-- HEADER -->
<%@include file="/views/admin/inc/header.jsp"%>
<section class="counts section-bg">
    <div class="container">

        <div class="row no-gutters">

            <div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch">
                <div class="count-box">
                    <i class="icofont-simple-smile"></i>
                    <span data-toggle="counter-up">232</span>
                    <p><strong>일일 방문자</strong></p>
                </div>
            </div>

            <div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch">
                <div class="count-box">
                    <i class="icofont-document-folder"></i>
                    <span data-toggle="counter-up">521</span>
                    <p><strong>일일 가입자</strong></p>
                    <a href="#">회원 관리 &raquo;</a>
                </div>
            </div>

            <div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch">
                <div class="count-box">
                    <i class="icofont-live-support"></i>
                    <span data-toggle="counter-up">1,463</span>
                    <p><strong>현재 예약 현황</strong></p>
                </div>
            </div>

            <div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch">
                <div class="count-box">
                    <i class="icofont-users-alt-5"></i>
                    <span data-toggle="counter-up">15</span>
                    <p><strong>일일 예약</strong></p>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 d-md-flex align-items-md-stretch">
                <div class="count-box">
                    <i class="icofont-simple-smile"></i>
                    <span data-toggle="counter-up">1,000,2321111</span>
                    <p><strong>오늘 매출</strong></p>
                    <a href="#">정산 관리 &raquo;</a>
                </div>
            </div>

            <div class="col-lg-6 col-md-6 d-md-flex align-items-md-stretch">
                <div class="count-box">
                    <i class="icofont-simple-smile"></i>
                    <span data-toggle="counter-up">1,000,2321111</span>
                    <p><strong>총 매출</strong></p>
                    <a href="#">정산 관리 &raquo;</a>
                </div>
            </div>

            <div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch">
                <div class="count-box">
                    <i class="icofont-live-support"></i>
                    <span data-toggle="counter-up">1,463</span>
                    <p><strong>매장 수</strong></p>
                </div>
            </div>
        </div>
    </div>
</section><!-- End Counts Section -->
<section class="section-bg">
    <div class="content">
        <div class="board_wrap">
            <div class="small_board_wrap">
                <div class="board_title">
                    <h3>신청 관리</h3>
                </div>
                <table class="small_board_list" >
                    <caption>가게 등록 신청</caption>
                    <thead>
                    <tr>
                        <th>NO</th>
                        <th>이름</th>
                        <th>가게이름</th>
                        <th>날짜</th>
                        <th colspan="2">기능</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>1001</td>
                        <td>한정호</td>
                        <td>열혈쭈꾸미</td>
                        <td>20/01/22</td>
                        <td colspan="2"><button>조회</button></td>
                    </tr>
                    </tbody>
                </table>
                <a href="#">Find out more &raquo;</a>
            </div>
            <div class="small_board_wrap">
                <div class="board_title">
                    <h3>문의 관리</h3>
                </div>
                <table class="small_board_list">
                    <caption>문의</caption>
                    <thead>
                    <tr>
                        <th>NO</th>
                        <th>ID</th>
                        <th>제목</th>
                        <th>기능</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>1</td>
                        <td>김숙이</td>
                        <td>왜 이거안되여?</td>
                        <td><button>조회</button></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>김숙이</td>
                        <td>왜 이거안되여?</td>
                        <td><button>조회</button></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>김숙이</td>
                        <td>왜 이거안되여?</td>
                        <td><button>조회</button></td>
                    </tr>
                    </tbody>
                </table>
                <a href="#">Find out more &raquo;</a>
            </div>
        </div>
        <div class="declaration_board_wrap">
            <h3>신고 관리</h3>
            <table>
                <caption>신고 관리</caption>
                <thead>
                <tr>
                    <th>NO</th>
                    <th>ID</th>
                    <th>분류</th>
                    <th>제목</th>
                    <th>기능</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>2001</td>
                    <td>첨숙이</td>
                    <td>댓글 신고</td>
                    <td>이사람 저한테 욕했어요</td>
                    <td><button>조회</button></td>
                </tr>
                </tbody>
            </table>
            <a href="#">Find out more &raquo;</a>
        </div>
    </div>
</section>
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
