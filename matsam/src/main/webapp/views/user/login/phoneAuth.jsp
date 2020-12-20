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


        function auto(){
           	var phone = $('#phone').val();
           	var phoneRegex = /^\d{10,11}$/;
  		  if(phoneRegex.test(phone)){
            alert('인증번호 발송 완료!');
			console.log(phone);
            $.ajax({
                type: "GET",
                url: "sendSMS",
                data: {
                    "phone" : phone //컨트롤러에서 phone으로 받아야하나
                },
                success: function(res){ //res는 인증번호 4자리임
                    $('#cerButton').click(function(){
                        if($.trim(res) ==$('#authNum').val()){
                           $('#authNumMessage').css('color','green');
                           $('#authNumMessage').show().html('인증 성공');
                            var phoneNumber = document.getElementById("phone").value
                            opener.document.getElementById("phone").value = phoneNumber;
                            window.close();
                        }else{
                           $('#authNumMessage').css('color','red');
                           $('#authNumMessage').show().html('인증 실패');
                        }
                    }) 
                }
            })
        }else{
			alert('휴대폰 형식에러');
			}
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
    <link href="<c:url value="/user_assets/vendor/icofont/icofont.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/user_assets/vendor/boxicons/css/boxicons.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/user_assets/vendor/animate.css/animate.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/user_assets/vendor/owl.carousel/assets/owl.carousel.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/user_assets/vendor/venobox/venobox.css"/>" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="<c:url value="/user_assets/css/login.css"/>" rel="stylesheet">

</head>
<body>
<!-- Container -->
<div class="container">
    <div class="row justify-content-md-center">
           <form  method="post" onsubmit="return check()">
            <h1 class="text-center wdi-red">본인 인증</h1>
                    <div class="form-row">
                    <div class="col-md-12">
                     <span class="box int_mobile" id="phonebox">
                        <input type="text" id="phone" name="userPhone" class="form-control form-control-lg flat-input" placeholder="휴대폰 번호를 입력하세요('-' 제외)" >
                           </span>
                          <span class="error_next_box" id="phoneCheckMessage"></span> 
                    </div>
                   <div class="col-md-12">
                        <button type="button" class="btn btn-lg btn-block btn-login" id="authButton" onclick="auto()" >인증하기</button>
                    </div>                
                    <div class="col-md-12">      
                        <input type="text" name="authNum" id="authNum" class="form-control form-control-lg flat-input" placeholder="인증번호를 입력하세요" >
               			<span class="error_next_box" id="authNumMessage"></span>
					</div>
                    <div class="col-md-12">
                   <button type="button" class="btn btn-lg btn-block btn-login" id="cerButton">인증확인</button>
                	</div>
       
                </div>
            </form>
    </div>
</div>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

<!-- Vendor JS Files -->
<script src="<c:url value="/user_assets/vendor/jquery/jquery.min.js"/>"></script>
<script src="<c:url value="/user_assets/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>
<script src="<c:url value="/user_assets/vendor/jquery.easing/jquery.easing.min.js"/>"></script>
<script src="<c:url value="/user_assets/vendor/php-email-form/validate.js"/>"></script>
<script src="<c:url value="/user_assets/vendor/jquery-sticky/jquery.sticky.js"/>"></script>
<script src="<c:url value="/user_assets/vendor/waypoints/jquery.waypoints.min.js"/>"></script>
<script src="<c:url value="/user_assets/vendor/counterup/counterup.min.js"/>"></script>
<script src="<c:url value="/user_assets/vendor/isotope-layout/isotope.pkgd.min.js"/>"></script>
<script src="<c:url value="/user_assets/vendor/owl.carousel/owl.carousel.min.js"/>"></script>
<script src="<c:url value="/user_assets/vendor/venobox/venobox.min.js"/>"></script>

<!-- Template Main JS File -->
<script src="<c:url value="/user_assets/js/main.js"/>"></script>


</body></html>