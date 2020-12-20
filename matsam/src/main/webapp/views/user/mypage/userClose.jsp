<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!-- saved from url=(0046)http://design.paralel.co.id/login_page_design/ -->
<html lang="kr">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Bootstrap 4 Login Page</title>
    
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>

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
 <link href="<c:url value="/user_assets/css/join.css"/>" rel="stylesheet">


</head>
<body>
<!-- header -->
<div id="header">

</div>
<!-- wrapper -->
<div id="wrapper">

    <!-- content-->
    <form method="post" onsubmit="return check()">
    <div id="content">
        <div class="joinform" >
         <!-- ID -->
        <div>
            <h3 class="modify_title">
                <label for="id">아이디</label>
            </h3>
            <span class="box int_id">
                        ysm8096@gmail.com
            </span>
            <span class="error_next_box"></span>
        </div>

        <!-- PW1 -->
        <div>
            <h3 class="modify_title"><label for="pswd1">비밀번호</label></h3>
            <span class="box int_pass">
                        <input type="button" id="pswd1" class="int" maxlength="20" value="비밀번호 재설정" >
                        <span id="alertTxt">사용불가</span>
                    </span>
            <span class="error_next_box"></span>
        </div>

        <!-- NAME -->
        <div>
            <h3 class="modify_title"><label for="name">이름</label></h3>
            <span class="box int_name">
                        	용승민
                    </span>
            <span class="error_next_box"></span>
        </div>

     <!-- NICKNAME -->
        <div>
            <h3 class="modify_title"><label for="nickname">닉네임</label></h3>
            <span class="box int_name">
                        용용용 <input type="button" value="수정하기" />
                    </span>
            <span class="error_next_box"></span>
        </div>
        
        <!-- MOBILE -->
        <div>
            <h3 class="modify_title"><label for="phoneNo">휴대전화</label></h3>
            <span class="box int_mobile">
                        01086129065 <input type="button" value="재인증" />
                    </span>
            <span class="error_next_box"></span>
        </div>


        <!-- modify BTN-->
        <div class="btn_area">
            <button type="button" id="btnmodify">
                수정
            </button>
        </div>
    </div>
    </div>
    <!-- content-->
</div>
<!-- wrapper -->

</body>
</html>