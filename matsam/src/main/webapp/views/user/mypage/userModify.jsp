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

	function passwordModify(){
		window.open('passwordModify','비밀번호 변경','width=500, height=600, toolbar=no, menubar=no, scrollbars=no, resizable=yes')
		}

	function nicknameModify(){
		window.open('nicknameModify','닉네임 변경','width=500, height=600, toolbar=no, menubar=no, scrollbars=no, resizable=yes')
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
    <link href="<c:url value="/assets/css/join.css"/>" rel="stylesheet">
    <link href="<c:url value="/assets/css/login.css"/>" rel="stylesheet">


</head>
<body>
<!-- header -->
<div id="header">

</div>
<!-- wrapper -->
<div id="wrapper">

    <!-- content-->
    <form method="post">
    <div id="content">
        <div class="joinform" >

        <!-- EMAIL -->
        <div>
            <h3 class="join_title"><label for="email">이메일</label></h3>
            <span class="box int_email" id="emailbox">
                <input type="text" value="${userVO.userEmail }" id="email" name="email" class="int" readonly="readonly"/>
            </span>
        </div>

        <!-- PASSWORD -->
        <div>
            <h3 class="join_title"><label for="password">비밀번호 변경</label></h3>
            <button class="btn btn-lg btn-block btn-login" onclick="passwordModify()">비밀번호 변경하기</button>
        </div>
        
        <!-- NAME -->
        <div>
            <h3 class="join_title"><label for="name">이름</label></h3>
            <span class="box int_name" id="namebox">
                <input type="text" value="${userVO.userName }" id="name" name="userName" class="int" readonly="readonly"/>
            </span>
        </div>
        
        <!-- NICKNAME -->
        <div>
            <h3 class="join_title"><label for="nickname">닉네임</label></h3>
            <span class="box int_nickname" id="nicknamebox">
                <input type="text" value="${userVO.userNicName }" id="nickname" name="userNicName" class="int" readonly="readonly"/>
            </span>
            <button class="btn btn-lg btn-block btn-login" onclick="nicknameModify()">닉네임 변경하기</button>
        </div>
        
        <!-- MOBILE -->
        <div>
            <h3 class="join_title"><label for="phone">핸드폰 번호('-제외')</label></h3>
            <span class="box int_phone" id="phonebox">
                <input type="text" value="${userVO.userPhone }" id="phone" name="userPhone" class="int" readonly="readonly"/>
            </span>
        </div>
        <div>

        <!-- JOIN BTN-->
        <div class="btn_area">
		<input type="submit" value="회원수정" id="btnJoin"/>
        </div>
    </div>
    </div>
    </form>
    <!-- content-->
</div>
<!-- wrapper -->

</body>
</html>