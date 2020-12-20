
<%--
  Created by IntelliJ IDEA.
  User: rhanf
  Date: 2020-12-11
  Time: 오전 2:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>로그인</title>
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
    <link rel="stylesheet" type="text/css" href="<c:url value="/admin_assets/css/login.css"/>">
</head>
<body>
<!-- Container -->
<div class="container">
    <div class="row justify-content-md-center">
        <div class="col-md-6 col-md-auto login-box">
            <h1 class="text-center wdi-red">관리자 로그인</h1>
            <hr>

            <form:form id="" modelAttribute="AdminVO" method="post" action="/adm/loginReg">
                <div class="form-row">
                    <div class="col-md-12">
                        <form:input  path="admId" cssClass="form-control form-control-lg flat-input"/>
                    </div>
                    <div class="col-md-12">
                        <form:password  path="admPassword" cssClass="form-control form-control-lg flat-input"/>
                    </div>
                    <input type="submit" class="btn btn-lg btn-block btn-login" value="로그인">
                </div>
            </form:form>

        </div>
    </div>
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
<script>
</script>
</body>
</html>