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
			alert('비번 똑바로써')
			$('#password').focus();
			return false;
		}
		if(!passwordCheckval){
			alert('비번확인 똑바로써');
			$('#passwordCheck').focus();
			return false;
		}
		if(!nicknameval){
			alert('닉네임 똑바로써');
			$('#nickname').focus();
			return false;
		}
		if(!nameval){
			alert('이름 똑바로써');
			$('#name').focus();
			return false;
		}
		if(!phoneval){
			alert('핸드폰번호 똑바로써');
			$('#phone').focus();
			return false;
		}
		}
	//이메일 중복체크
	function registeridCheckFunction() {
		var emailRegex = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
	var emailValue = $('#email').val();
	if(emailRegex.test(emailValue)){			
		$.ajax({
		type: 'get',
		url: 'idCheck?email='+emailValue,
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
		url: 'nicknameCheck?nickname='+nicknameValue,
		success: function(result){
			console.log(result);
			if(result == 0){
				$('#nicknameCheckMessage').show().html('사용가능한 닉네임입니다.'); 
				$('#nicknameCheckMessage').css('color','red');
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
			  $('#phoneCheckMessage').show().html('');
			  $('#phonebox').css('border','1px solid green');
			  phoneval =true;
			  }else{
				  $('#phonebox').css('border','1px solid red');
				  $('#phoneCheckMessage').show().html('휴대폰번호 형식 에러');
				  phoneval =false;
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
    <link href="<c:url value="/assets/css/join.css"/>" rel="stylesheet">


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
                        <input type="text" id="email" name="email" class="int" maxlength="100" placeholder="이메일 형식으로 입력해주세요" onkeyup="registeridCheckFunction()" autocomplete="off" />
                    </span>
            <h5 class="error_next_box" id="idCheckMessage"></h5>
        </div>

        <!-- PW1 -->
       
        <div>
            <h3 class="join_title"><label for="password">비밀번호</label></h3>
            <span class="box int_pass" id="passwordbox">
                        <input type="password" class="int" maxlength="20" placeholder="8 ~ 20자 영문, 숫자 조합" name="password" id="password"   onkeyup="passwordCheckFunction()" />
                    </span>
        </div>

       <!-- PW2 -->
        <div>
            <h3 class="join_title"><label for="passwordCheck">비밀번호 재확인</label></h3>
            <span class="box int_pass_check" id="passwordCheckbox">
                        <input type="password" class="int" maxlength="20"  placeholder="8 ~ 20자 영문, 숫자 조합" name="passwordCheck" id="passwordCheck" onkeyup="passwordCheckFunction()" />
                    </span>            
            <span class="error_next_box" id="passwordCheckMessage"></span>
            <!-- 위에부분이 안되네.. -->
            <span class="error_next_box" ></span>
        </div> 
    

        <!-- NAME -->
        <div>
            <h3 class="join_title"><label for="name">이름</label></h3>
            <span class="box int_name" id="namebox">
                        <input type="text" id="name" name="name" class="int" maxlength="20" onkeyup="nameCheckFunction()" placeholder="이름을 입력하세요">
                    </span>
            <span class="error_next_box"></span>
        </div>

        <!-- NICKNAME -->
        <div>
            <h3 class="join_title"><label for="nickname">닉네임</label></h3>
            <span class="box int_name" id="nicknamebox">
                        <input type="text" id="nickname" name="nickname" class="int" maxlength="20" onkeyup="nicknameCheckFunction()" autocomplete="off" placeholder="2 ~ 20 글자로 입력 해주세요"/>
                    </span>
            <span class="error_next_box" id="nicknameCheckMessage"></span>
        </div>
        

        <!-- MOBILE -->
        <div>
            <h3 class="join_title"><label for="phone">핸드폰 번호 ('-' 제외)</label></h3>
            <span class="box int_mobile" id="phonebox">
                        <input type="tel" id="phone" name="phone" class="int" maxlength="16" placeholder="핸드폰번호 입력" onkeyup="phoneCheckFunction()">
                    </span>
            <span class="error_next_box" id="phoneCheckMessage"></span>
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