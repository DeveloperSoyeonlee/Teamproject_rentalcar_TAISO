<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
<title>타이소</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">

<link rel="shortcut icon" type="image/x-icon" href="./images/logo.png">

<link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="css/animate.css">

<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="css/magnific-popup.css">

<link rel="stylesheet" href="css/aos.css">

<link rel="stylesheet" href="css/ionicons.min.css">

<link rel="stylesheet" href="css/bootstrap-datepicker.css">
<link rel="stylesheet" href="css/jquery.timepicker.css">


<link rel="stylesheet" href="css/flaticon.css">
<link rel="stylesheet" href="css/icomoon.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">


<!-- 블로그 로딩 코드 start -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style type="text/css">
#waiting {
    width: 100%;
    height: 100%;
    top: 0;
    left: 0;
    position: fixed;
    display: flex;
    background: white;
    z-index: 999;
    opacity: 0.9;
}
#waiting > img {
    display: flex;
    width: fit-content;
    height: fit-content;
    margin: auto;
}
</style>
<div id="waiting">
   <img src="./img/loading.gif">
</div>

<script type="text/javascript">
    $(window).on('load', function() {
        setTimeout(function(){
            $("#waiting").fadeOut();
        }, 300);
    });
</script>
<!-- 블로그 로딩 코드 end -->

<!-- sweetalert -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js" integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<script type="text/javascript">
function nick(){ // 닉네임 중복 체크
	 
	 // 닉네임창에 닉네임 입력여부 확인
	 if(document.fr.mem_newNickName.value == ""){
		 Swal.fire({
			   title: '닉네임을 입력해주세요.',
			   icon: 'warning'
			 });
		 document.fr.mem_newNickName.focus();
		 return;
	 }
	 
	 // 입력된 닉네임정보
	 var inputNewName = document.fr.mem_newNickName.value;
	 
	 // 새창열기
	 window.open("./MemberUpdateNickNameCheck.me?inputNewName="+inputNewName,"","width=550,height=200,top=300,left=500"); 
}
</script>

<script type="text/javascript">
// 체크박스 값 (선택O : 1 / 선택X : 0 )
if (document.getElementById("supportCheckbox").checked) { // 체크박스 
		document.getElementById("supportCheckbox_hidden").disabled = true;
}
</script>

<script type="text/javascript">
$(document).on("keyup", "#mem_phone", function() {
    $(this).val( $(this).val().replace(/[^0-9]/g, "").replace(/([0-9]{3})+([0-9]{4})+([0-9]{4})$/,"$1-$2-$3").replace("--", "-"));
   });
</script>

<script type="text/javascript">
$(document).ready(function(){

	$('#sbtn').click(function(){

    var mem_name = $('#mem_name').val();
    var mem_newNickName = $('#mem_newNickName').val();
    var mem_phone = $('#mem_phone').val();

    var check_name = /^[가-힣]{0,10}$/; // 이름 유효성 검사 (10글자 제한)
    var check_nickName = /^[a-zA-Z0-9ㄱ-ㅎ|ㅏ-ㅣ|가-힣]{2,10}$/; // 닉네임 유효성 검사 (한글/영어/숫자 2-10)
	
	
    //  이름 공백 확인
    if (mem_name == "" || mem_name == null) {
		 Swal.fire({
			   title: '이름을 입력해주세요.',
			   icon: 'warning'
			 });
         $('#mem_name').focus();
         return false;
     }	

    // 이름 유효성 체크
    if (!check_name.test(mem_name)) {
        $('.nameCheck').html('한글 10자 이내로 입력해주세요.');
        $('#mem_name').val("");
        $('#mem_name').focus();
        return false;
    }
    
    //  닉네임 공백 확인
    if (mem_newNickName == "" || mem_newNickName == null) {
		 Swal.fire({
			   title: '닉네임을 입력해주세요.',
			   icon: 'warning'
			 });
         $('#mem_newNickName').focus();
         return false;
     }	

    // 닉네임 유효성 체크
    if (!check_nickName.test(mem_newNickName)) {
        $('.nickNameCheck').html('영문과 한글, 숫자로 2-10자로 입력해주세요.');
        $('#mem_newNickName').val("");
        $('#mem_newNickName').focus();
        return false;
	} else {
     	$('.nickNameCheck').html('');
    }	
    
    //  전화번호 공백 확인
    if (mem_phone == "" || mem_phone == null) {
		 Swal.fire({
			   title: '전화번호를 입력해주세요.',
			   icon: 'warning'
			 });
         $('#mem_phone').focus();
         return false;
     }	
    
	});
	
});
</script>

</head>

<body>
	
  	<!-- 헤더 시작 -->
	<jsp:include page="../inc/top.jsp"></jsp:include>
  	<!-- 헤더 끝-->
	
	<!-- 중간제목 시작 -->
	<section class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url('images/bg_6.jpg');" data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
				<div class="col-md-9 ftco-animate pb-5">
					<p class="breadcrumbs">
						<span class="mr-2"><a href="./ReservationMain.rez">Home <i class="ion-ios-arrow-forward"></i></a></span> 
						<span>개인정보 변경 <i class="ion-ios-arrow-forward"></i></span>
					</p>
					<h1 class="mb-3 bread">개인정보 수정</h1>
				</div>
			</div>
		</div>
	</section>
	<!-- 중간제목 끝 -->
	
	<!-- 로그인제어 -->
<%
	String mem_id = (String) session.getAttribute("mem_id");
	if(mem_id == null){
		response.sendRedirect("./MemberLogin.me");
		System.out.println(" 비정상적 접근 발생! IP : "+request.getRemoteAddr());
	}
%>
	<!-- 로그인제어 -->
	
	<!-- 본문 시작 -->
		<section class="bg-light">
		<div class="formbold-main-wrapper">
		<!-- Author: FormBold Team -->
		<!-- Learn More: https://formbold.com -->
		<div class="formbold-form-wrapper">
		
			<div class="formbold-form-title">
				<h3>개인정보 수정</h3>
			</div>
				
				<form action="./MemberUpdateAction.me" method="post" name="fr">
				
					<div class="formbold-mb-3">
						<label for="mem_name" class="formbold-form-label"> 아이디 </label> 
						<input type="text" name="mem_id" id="mem_id" value="${mDTO.mem_id }" class="formbold-form-input" readonly/>
					</div>
	
					<div class="formbold-mb-3">
						<label for="mem_name" class="formbold-form-label"> 이름 </label> 
						<input type="text" name="mem_name" id="mem_name" value="${mDTO.mem_name }"  class="formbold-form-input" required />
						<div class="nameCheck" id="textstyle"> </div>
					</div>
					
					<div class="formbold-mb-3 formbold-input-wrapp">
						<label for="mem_nickName" class="formbold-form-label"> 닉네임 </label>
						<div>
							<input type="text" name="mem_newNickName" id="mem_newNickName"  value="${mDTO.mem_nickName }" class="formbold-form-input" style="width:80%" required />
						    <button type="button" class="formbold-btn" onclick="nick()"> 중복확인 </button>
						</div>
							<div class="nickNameCheck" id="textstyle"> </div>
					</div>
					
					<div class="formbold-mb-3 formbold-input-wrapp">
						<label for="mem_phone" class="formbold-form-label"> 전화번호 </label>
						<div>
							<input type="text" name="mem_phone" id="mem_phone" value="${mDTO.mem_phone }" class="formbold-form-input" maxlength="13"  required />
						</div>
					</div>
					
					<div class="formbold-mb-3">
						<label for="mem_email" class="formbold-form-label"> Email </label> 
						<input type="email" name="mem_email" id="mem_email" value="${mDTO.mem_email }" class="formbold-form-input" readonly/>
						<div class="emailCheck" id="textstyle"> </div>
					</div>


					<div class="formbold-checkbox-wrapper">
						<label for="supportCheckbox" class="formbold-checkbox-label">
							<div class="formbold-relative">
								<input type="checkbox" name="mem_accept_sns" value='1' id="supportCheckbox" class="formbold-input-checkbox" />
								<input type="hidden" name="mem_accept_sns" value='0' id="supportCheckbox_hidden"/>
						
							<div class="formbold-checkbox-inner">
								<span class="formbold-opacity-0"> <svg width="11" height="8" viewBox="0 0 11 8" class="formbold-stroke-current" fill="none" xmlns="http://www.w3.org/2000/svg">
                				<path d="M8.81868 0.688604L4.16688 5.4878L2.05598 3.29507C1.70417 2.92271 1.1569 2.96409 0.805082 3.29507C0.453266 3.66742 0.492357 4.24663 0.805082 4.61898L3.30689 7.18407C3.54143 7.43231 3.85416 7.55642 4.16688 7.55642C4.47961 7.55642 4.79233 7.43231 5.02688 7.18407L10.0696 2.05389C10.4214 1.68154 10.4214 1.10233 10.0696 0.729976C9.71776 0.357624 9.17049 0.357625 8.81868 0.688604Z" fill="white" />
               					</svg></span>
							</div>
							
							</div> 마케팅 관련 수신에 동의하시겠습니까?
						</label>
					</div>
					
<!-- 					<div class="aforgot"> -->
<!-- 						<a href="./MemberRemove.me" id="forgot" class="font-weight-bold">회원탈퇴</a>   -->
<!-- 					</div> -->
						<button type="submit" class="submit2" id="sbtn">수정하기</button>
						<input type="hidden" name="mem_pw" id="mem_pw" value="${mDTO.mem_pw }" />
				</form>
			</div>		
		</div>
	</section>
	<!-- 본문 끝 -->
	
<!-- 본문 css -->
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap')
	;

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	font-family: 'InfinitySans-RegularA1';
	font-weight: normal;
    font-style: normal;
}

.formbold-mb-3 {
	margin-bottom: 15px;
}

.formbold-relative {
	position: relative;
}

.formbold-opacity-0 {
	opacity: 0;
}

.formbold-stroke-current {
	stroke: #ffffff;
	z-index: 999;
}

#supportCheckbox:checked ~ div span {
	opacity: 1;
}

#supportCheckbox:checked ~ div {
	background: #1089FF;
	border-color: #1089FF;
}

.formbold-main-wrapper {
	display: flex;
	align-items: center;
	justify-content: center;
	padding: 48px;
}

.formbold-form-wrapper {
	margin: 0 auto;
    max-width: 570px;
    width: 100%;
    background: white;
    padding: 40px;
    border-radius: 14px;
    box-shadow: 20px 20px 80px rgb(218 218 218 / 47%)
}

.formbold-img {
	display: block;
	margin: 0 auto 45px;
}

.formbold-input-wrapp>div {
	display: flex;
	gap: 20px;
}

.formbold-input-flex {
	display: flex;
	gap: 20px;
	margin-bottom: 15px;
}

.formbold-input-flex>div {
	width: 50%;
}

.formbold-form-input {
	width: 100%;
	padding: 13px 22px;
	border-radius: 5px;
	border: 1px solid #dde3ec;
	background: #ffffff;
	font-weight: 500;
	font-size: 12px;
	color: #536387;
	outline: none;
	resize: none;
}

.formbold-form-input::placeholder, select.formbold-form-input,
	.formbold-form-input[type='date']::-webkit-datetime-edit-text,
	.formbold-form-input[type='date']::-webkit-datetime-edit-month-field,
	.formbold-form-input[type='date']::-webkit-datetime-edit-day-field,
	.formbold-form-input[type='date']::-webkit-datetime-edit-year-field {
	color: rgba(83, 99, 135, 0.5);
}

.formbold-form-input:focus {
	border-color: #1089FF;
	box-shadow: 0px 3px 8px rgba(0, 0, 0, 0.05);
}

.formbold-form-label {
	color: #536387;
	font-size: 14px;
	line-height: 24px;
	display: block;
	margin-bottom: 10px;
}

.formbold-checkbox-label {
	display: flex;
	cursor: pointer;
	user-select: none;
	font-size: 16px;
	line-height: 24px;
	color: #536387;
}

.formbold-checkbox-label a {
	margin-left: 5px;
	color: #1089FF;
}

.formbold-input-checkbox {
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	white-space: nowrap;
	border-width: 0;
}

.formbold-checkbox-inner {
	display: flex;
	align-items: center;
	justify-content: center;
	width: 20px;
	height: 20px;
	margin-right: 14px;
	margin-top: 2px;
	border: 0.7px solid #dde3ec;
	border-radius: 3px;
}

.formbold-form-file {
	padding: 12px;
	font-size: 14px;
	line-height: 24px;
	color: rgba(83, 99, 135, 0.5);
}

.formbold-form-file::-webkit-file-upload-button {
	display: none;
}

.formbold-form-file:before {
	content: 'Upload';
	display: inline-block;
	background: #EEEEEE;
	border: 0.5px solid #E7E7E7;
	border-radius: 3px;
	padding: 3px 12px;
	outline: none;
	white-space: nowrap;
	-webkit-user-select: none;
	cursor: pointer;
	color: #637381;
	font-weight: 500;
	font-size: 12px;
	line-height: 16px;
	margin-right: 10px;
}

.formbold-btn {
	font-size: 14px;
	border-radius: 5px;
	padding: 14px 10px;
	border: none;
	font-weight: 500;
	background-color: #1089FF;
	color: white;
	cursor: pointer;
}

.submit2 {
	text-align: center;
	width: 100%;
	font-size: 20px;
	border-radius: 5px;
	padding: 14px 25px;
	border: none;
	font-weight: 500;
	background-color: #1089FF;
	color: white;
	cursor: pointer;
	margin-top: 25px;
}

.formbold-btn:hover {
	box-shadow: 0px 3px 8px rgba(0, 0, 0, 0.05);
}

.formbold-w-45 {
	width: 45%;
}

#textstyle {
    color: #f53648ad;
    font-size: 12px;
    line-height: 2px;
    display: block;
    margin-top: 12px;
    margin-left: 5px;
    margin-bottom: 25px;
}


#forgot {
	margin-left: 10px;
	text-decoration: none;
	font-size: 14px;
}

.aforgot {
	text-align: right;
}

.formbold-form-title {
	margin-bottom: 40px;
}

.formbold-form-title h3 {
	color: #000000;
	font-weight: 700;
	font-size: 35px;
	line-height: 35px;
	text-align: center;
	margin-bottom: 60p
}



.swal2-title {
    position: relative;
    max-width: 100%;
    margin: 0;
    padding: 0.8em 1em 0;
    color: inherit;
    font-size: 20PX;
    font-weight: 600;
    text-align: center;
    text-transform: none;
    word-wrap: break-word;
}

.swal2-styled.swal2-confirm {
    border: 0;
    border-radius: 0.25em;
    background: initial;
    background-color: #1089FF;
    color: #fff;
    font-size: 1em;
}
  
.bg-light {
    background: #f8f9fa !important;
}
</style>
<!-- 본문 css -->

<!-- 푸터 시작 -->
	<jsp:include page="../inc/bottom.jsp"></jsp:include>
<!-- 푸터 끝 -->

	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px"> 
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" />
		</svg>
	</div>


	<script src="js/jquery.min.js"></script>
	<script src="js/jquery-migrate-3.0.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.easing.1.3.js"></script>
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.stellar.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/aos.js"></script>
	<script src="js/jquery.animateNumber.min.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script src="js/jquery.timepicker.min.js"></script>
	<script src="js/scrollax.min.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="js/google-map.js"></script>
	<script src="js/main.js"></script>

</body>
</html>