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
var nicknameval =false; 
var samenickname =false;

function nicknameCheckFunction() {
	var nicknameRegex = /^[\w\Wㄱ-ㅎㅏ-ㅣ가-힣]{2,20}$/; //닉네임은 2 ~ 20 글자로 입력 해 주세요
	var nicknameValue = $('#nickname').val();
if(nicknameRegex.test(nicknameValue)){			
	$.ajax({
	type: 'get',
	url: 'nicknameModifyCheck?nickname='+nicknameValue,
	success: function(result){
		if(result == 0){
			$('#nicknameCheckMessage').show().html('사용가능한 닉네임입니다.'); 
			$('#nicknameCheckMessage').css('color','green');
			nicknameval =true;
			samenickname =true;				
		}else{				
			$('#nicknameCheckMessage').css('color','red');
			$('#nicknameCheckMesssage').show().html('중복된 닉네임입니다.');
			samenickname =false; 
		}
	}
})
}else{
	$('#nicknameCheckMessage').css('color','red');
	$('#nicknameCheckMessage').show().html('형식에 맞지 않는 닉네임 입니다.');
	nicknameval =false;
	} 
}

function check(){
	if(!nicknameval){
		alert('닉네임 에러입니다')
		$('#nickname').focus();
		return false;
	}
	if(!samenickname){
		alert('중복된 닉네임입니다')
		$('#nickname').focus();
		return false;
	}
	alert('닉네임 수정 완료');
}

</script>
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
           <form  method="post" onsubmit="return check()" name="sub">
            <h1 class="text-center wdi-red">닉네임 변경<h1>
                    <div class="form-row">
                    <h3 class="join_title"><label for="nickname">새 닉네임</label></h3>
                    <div class="col-md-12">
                        <input type="text" id="nickname" name="userNicName" class="form-control form-control-lg flat-input" placeholder="2~20 글자 가능 " onkeyup="nicknameCheckFunction()">
                    <span class="error_next_box" id="nicknameCheckMessage"></span>
                    </div>
                    
                    <div class="col-md-12">
                   	<input type="submit" class="btn btn-lg btn-block btn-login" value="닉네임 변경" />
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
<script src="<c:url value="/user_assets/js/main.js"/>"></script>


</body></html>