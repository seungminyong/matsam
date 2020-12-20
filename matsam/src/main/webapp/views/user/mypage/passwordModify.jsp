<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!-- saved from url=(0046)http://design.paralel.co.id/login_page_design/ -->
<html lang="kr">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Bootstrap 4 Login Page</title>
    
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
var passwordval =false;
var passwordCheckval =false;

function check(){
	if(!passwordval){
		alert('비밀번호 에러입니다')
		$('#password').focus();
		return false;
	}
	if(!passwordCheckval){
		alert('비밀번호 확인 에러입니다');
		$('#passwordCheck').focus();
		return false;
	}
	alert('비밀번호 수정 완료');
	window.close();
}

function passwordCheckFunction(){
	var passwordRegex = /^(?=.*\d)(?=.*[a-zA-Z])[0-9a-zA-Z]{8,10}$/; //  8 ~ 10자 영문, 숫자 조합		
	var password = $('#password').val();
	var passwordCheck = $('#passwordCheck').val();	
	if(passwordRegex.test(password)){
			    passwordval =true;			    
			    if(password == passwordCheck){
			  		passwordCheckval =true;		    		    
			    }else{
				    passwordCheckval =false;				    		    
			    }
		}else{
	    passwordval =false;		    
	 		}				
	}	
</script>
    <!-- Required meta tags -->

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Favicons -->
    
    <link href="<c:url value="/assets/img/favicon.png"/>" rel="icon">
    <link href="<c:url value="/assets/img/apple-touch-icon.png"/>" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="<c:url value="/assets/vendor/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">
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
           <form  method="post" onsubmit="return check()">
            <h1 class="text-center wdi-red">비밀번호 변경<h1>
                    <div class="form-row">
                    <h3 class="join_title"><label for="password">새 비밀번호</label></h3>
                    <div class="col-md-12">
                        <input type="password" id="password" name="userPassword" class="form-control form-control-lg flat-input" placeholder="8 ~ 10자 영문, 숫자 조합" onkeyup="passwordCheckFunction()">
                    </div>
                    <h3 class="join_title"><label for="passwordCheck">비밀번호 확인</label></h3>
                    <div class="col-md-12">
                        <input type="password" id="passwordCheck" name="passwordCheck" class="form-control form-control-lg flat-input" placeholder="새8 ~ 10자 영문, 숫자 조합" onkeyup="passwordCheckFunction()">
                    </div>
                   
                    <div class="col-md-12">
                   	<input type="submit" class="btn btn-lg btn-block btn-login" value="비밀번호 변경" />
                	</div>
                </div>
            </form>
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
<script src="assets/js/main.js"></script>


</body></html>