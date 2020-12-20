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
	var emailval = false;
	var passwordval =false;
	var passwordCheckval =false;
	var nicknameval =false;
	var nameval =false;
	var phoneval =false;
	function check(){
		if(!emailval){
			alert('이메일 에러입니다');
			return false;
		}
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
		if(!nicknameval){
			alert('닉네임 에러입니다');
			$('#nickname').focus();
			return false;
		}
		if(!nameval){
			alert('이름 형식 에러입니다');
			$('#name').focus();
			return false;
		}
		if(!phoneval){
			alert('휴대폰 인증을 완료해주세요');
			$('#phone').focus();
			return false;
		}
		}

	function auto(){
		window.open('phoneAuth','핸드폰번호','width=600, height=600, toolbar=no, menubar=no, scrollbars=no, resizable=yes')	
		}
	//이메일 중복체크
	function registeridCheckFunction() {
		var emailRegex = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
	var emailValue = $('#email').val();
	if(emailRegex.test(emailValue)){			
		$.ajax({
		type: 'get',
		url: 'idCheck?userEmail='+emailValue,
		success: function(result){
			if(result == 0){
				$('#alertTxt').show(); 
				$('#idCheckMessage').show().html('사용 가능한 이메일 입니다.'); 
				$('#idCheckMessage').css('color','green');
				$('#emailbox').css('border','1px solid green');
				emailval = true;
			}else{
				$('#idCheckMessage').css('color','red');
				$('#idCheckMessage').html('이미 존재하는 이메일 입니다.');
				$('#emailbox').css('border','1px solid red');
				emailval = false;
			}
		}
	})
	}else{
		$('#emailbox').css('border','1px solid red');
		$('.error_next_box').css('color','red');
		$('#idCheckMessage').html('형식에 맞지 않는 이메일 입니다.');
		emailval = false;
		}
	}
	
	//닉네임 중복체크
	function nicknameCheckFunction() {
		var nicknameRegex = /^[\w\Wㄱ-ㅎㅏ-ㅣ가-힣]{2,20}$/; //닉네임은 2 ~ 20 글자로 입력 해 주세요
	var nicknameValue = $('#nickname').val();
	if(nicknameRegex.test(nicknameValue)){			
		$.ajax({
		type: 'get',
		url: 'nicknameCheck?userNicName='+nicknameValue,
		success: function(result){
			console.log(result);
			if(result == 0){
				$('#nicknameCheckMessage').show().html('사용가능한 닉네임입니다.'); 
				$('#nicknameCheckMessage').css('color','green');
				$('#nicknamebox').css('border','1px solid green');
				nicknameval =true;
			}else{				
				$('#nicknamebox').css('border','1px solid red'); 
				$('#nicknameCheckMessage').show().html('중복된 닉네임입니다.');
				nicknameval =false; 
			}
		}
	})
	}else{
		$('#nicknamebox').css('border','1px solid red'); 
		$('#nicknameCheckMessage').show().html('형식에 맞지 않는 닉네임 입니다.');
		nicknameval =false;
		} 
}
	
 	//비밀번호 확인 
	function passwordCheckFunction(){
		var passwordRegex = /^(?=.*\d)(?=.*[a-zA-Z])[0-9a-zA-Z]{8,10}$/; //  8 ~ 10자 영문, 숫자 조합		
		var password = $('#password').val();
		var passwordCheck = $('#passwordCheck').val();
		console.log($('#password').val());
		console.log($('#passwordCheck').val());		
		if(passwordRegex.test(password) && password != ""){
				    $('#passwordbox').css('border','1px solid green');
				    $('#passwordMessage').show().html('');
				    $('#passwordCheckMessage').show().html('');
				    passwordval =true;			    
				    if(password != passwordCheck){
				  		$('#passwordCheckbox').css('border','1px solid red');
					    $('#passwordCheckMessage').show().html('비밀번호 미일치');
					    passwordCheckval =false;				    
				    }else{
					    $('#passwordCheckMessage').show().html('');
				  		$('#passwordCheckbox').css('border','1px solid green');
				  		passwordCheckval =true;
				    }
 		}else{
		    $('#passwordbox').css('border','1px solid red');
		    $('#passwordCheckbox').css('border','1px solid red');
		    $('#passwordMessage').show().html('비밀번호 패턴 에러입니다.');
		    passwordval =false;
 	 		}				
 	}	

	//이름 검사
	function nameCheckFunction(){
		var name = $('#name').val();
		var nameRegex = /^[가-힣]{2,10}$/;
		  if(nameRegex.test(name)){
			  $('#namebox').css('border','1px solid green');
			  nameval =true;
			  }else{
			  $('#namebox').css('border','1px solid red');
			  nameval =false;
				  }
		}
  	//핸드폰 검사
	function phoneCheckFunction(){
		var phone = $('#phone').val();
		var phoneRegex = /^\d{10,11}$/;
		  if(phoneRegex.test(phone)){
			  $('#phonebox').css('border','1px solid green');
              console.log("TRUE" + phone);
			  phoneval =true;
			  }else{
				  $('#phonebox').css('border','1px solid green');
				  phoneval =false;
				  console.log("FALSE" + phone);
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
        <!-- EMAIL -->
        <div>
            <h3 class="join_title"><label for="email">이메일</label></h3>
            <span class="box int_email" id="emailbox">
                        <input type="text" id="email" name="userEmail" class="int" maxlength="100" placeholder="이메일 형식으로 입력해주세요" onkeyup="registeridCheckFunction()" autocomplete="off" />
                    </span>
            <h5 class="error_next_box" id="idCheckMessage"></h5>
        </div>

        <!-- PW1 -->
       
        <div>
            <h3 class="join_title"><label for="password">비밀번호</label></h3>
            <span class="box int_pass" id="passwordbox">
                        <input type="password" class="int" maxlength="20" placeholder="8 ~ 20자 영문, 숫자 조합" name="userPassword" id="password"   onkeyup="passwordCheckFunction()" />
                    </span>
        </div>

       <!-- PW2 -->
        <div>
            <h3 class="join_title"><label for="passwordCheck">비밀번호 재확인</label></h3>
            <span class="box int_pass_check" id="passwordCheckbox">
                        <input type="password" class="int" maxlength="20"  placeholder="8 ~ 20자 영문, 숫자 조합" name="passwordCheck" id="passwordCheck" onkeyup="passwordCheckFunction()" />
                    </span>            
            <span class="error_next_box" id="passwordCheckMessage"></span>

            <span class="error_next_box" ></span>
        </div> 
         <!-- MOBILE -->
        <div>
            <h3 class="join_title"><label for="phone">핸드폰 번호</label></h3>
            <span class="box int_mobile" id="phonebox">
                        <input type="tel" id="phone" name="userPhone" class="int" maxlength="16" placeholder="인증하기 버튼을 통해 인증받으세요" onchange="phoneCheckFunction()" readonly="readonly">
                    </span>
        </div>              
         <button type="button" class="btn btn-lg btn-block btn-login" onclick="auto()" >인증하기</button>   

        <!-- NAME -->
        <div>
            <h3 class="join_title"><label for="name">이름</label></h3>
            <span class="box int_name" id="namebox">
                        <input type="text" id="name" name="userName" class="int" maxlength="20" onkeyup="nameCheckFunction()" placeholder="이름을 입력하세요">
                    </span>
            <span class="error_next_box"></span>
        </div>

        <!-- NICKNAME -->
        <div>
            <h3 class="join_title"><label for="nickname">닉네임</label></h3>
            <span class="box int_name" id="nicknamebox">
                        <input type="text" id="nickname" name="userNicName" class="int" maxlength="20" onkeyup="nicknameCheckFunction()" autocomplete="off" placeholder="2 ~ 20 글자로 입력 해주세요"/>
                    </span>
            <span class="error_next_box" id="nicknameCheckMessage"></span>
        </div>

        <!-- JOIN BTN-->
        <div class="btn_area">
		<input type="submit" value="가입"  id="btnJoin" />
        </div>
    </div>
    </div>
    </form>
    <!-- content-->
</div>
<!-- wrapper -->

</body>
</html>