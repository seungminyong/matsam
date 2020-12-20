<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!-- saved from url=(0046)http://design.paralel.co.id/login_page_design/ -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Bootstrap 4 Login Page</title> 
    <!-- Required meta tags -->

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Favicons -->
    
    <link href="<c:url value="/user_assets/img/favicon.png"/>" rel="icon">
    <link href="<c:url value="/user_assets/img/apple-touch-icon.png"/>" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="<c:url value="/user_assets/vendor/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/assets/vendor/icofont/icofont.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/assets/vendor/boxicons/css/boxicons.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/assets/vendor/animate.css/animate.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/assets/vendor/owl.carousel/assets/owl.carousel.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/assets/vendor/venobox/venobox.css"/>" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="<c:url value="/assets/css/login.css"/>" rel="stylesheet">

</head>
<body>
<!-- Container -->
<div class="container">
    <div class="row justify-content-md-center">
        <div class="col-md-6 col-md-auto login-box">
            <h1 class="text-center wdi-red">회원 가입</h1>
            <hr>
			<a href="joinOwner" class="btn btn-lg btn-block btn-login">사장회원</a>
			<a href="join" class="btn btn-lg btn-block btn-login">일반회원</a>
        </div>
    </div>
</div>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

<!-- Vendor JS Files -->
<script src="assets/vendor/jquery/jquery.min.js"></script>
<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="assets/vendor/jquery.easing/jquery.easing.min.js"></script>
<script src="assets/vendor/php-email-form/validate.js"></script>
<script src="assets/vendor/jquery-sticky/jquery.sticky.js"></script>
<script src="assets/vendor/waypoints/jquery.waypoints.min.js"></script>
<script src="assets/vendor/counterup/counterup.min.js"></script>
<script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
<script src="assets/vendor/owl.carousel/owl.carousel.min.js"></script>
<script src="assets/vendor/venobox/venobox.min.js"></script>

<!-- Template Main JS File -->
<script src="<c:url value="/user_assets/js/main.js"/>"></script>


</body></html>