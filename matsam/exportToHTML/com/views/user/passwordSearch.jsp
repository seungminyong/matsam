<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!-- saved from url=(0046)http://design.paralel.co.id/login_page_design/ -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Bootstrap 4 Login Page</title>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script type="text/javascript">
        function auto(){
			console.log('실행');
            var phone = $('#phone').val();
			console.log(phone);
            
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
                            Swal.fire(
                                '인증성공!',
                                '휴대폰 인증이 정상적으로 완료되었습니다.',
                                'success'
                            )
                            document.location.href="/home";
                        }else{
                            Swal.fire({
                                icon: 'error',
                                title: '인증오류',
                                text: '인증번호가 올바르지 않습니다!',
                                footer: '<a href="/home">다음에 인증하기</a>'
                            })
                        }
                    })
                }
            })
        });
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

            <form method="get">
            <h1 class="text-center wdi-red">비밀번호 찾기</h1>
                    <div class="form-row">
                    <div class="col-md-12">
                        <input type="text" name="email" class="form-control form-control-lg flat-input" placeholder="이메일을 입력하세요">
                    </div>
                    <form action="sendSMS">
                    <div class="col-md-12">
                        <input type="text" id="phone" name="phone" class="form-control form-control-lg flat-input" placeholder="휴대폰 번호를 입력하세요('-' 제외)" >
                    </div>
                   <div class="col-md-12">
                        <input type="submit" class="btn btn-lg btn-block btn-login" id="authButton" onclick="auto()" />
                    </div>
                    </form>
                    <div class="col-md-12">
                        <input type="text" name="authNum" id="authNum" class="form-control form-control-lg flat-input" placeholder="인증번호를 입력하세요" >
                    </div>
                    <div>
                   <button class="btn btn-lg btn-block btn-login" id="cerButton">인증확인</button>
                	</div>
                    <div>
                   	<input type="submit" value="비밀번호 찾기"/>
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