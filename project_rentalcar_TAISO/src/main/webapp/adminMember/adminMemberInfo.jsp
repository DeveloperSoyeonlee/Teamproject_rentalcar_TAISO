
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>관리자</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="shortcut icon" type="image/x-icon" href="./images/logo.png">
    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="./css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="./css/animate.css">
    <link rel="stylesheet" href="./css/owl.theme.default.min.css">
    <link rel="stylesheet" href="./css/magnific-popup.css">
    <link rel="stylesheet" href="./css/aos.css">
    <link rel="stylesheet" href="./css/ionicons.min.css">
    <link rel="stylesheet" href="./css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="./css/jquery.timepicker.css">
    <link rel="stylesheet" href="./css/flaticon.css">
    <link rel="stylesheet" href="./css/icomoon.css">
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="./css/board.css">


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
    
<style type="text/css">
.table {
  border-collapse: collapse;
  border-spacing: 0;
  width: 50%;
  border: 1px solid #f2f2f2;
  min-width: 700px !important;
  width: 100%;
}

.table tbody tr td {
    vertical-align: middle;
    padding: 2px 0;
    border-bottom: 1px solid rgba(0, 0, 0, 0.05) !important;
	width: 9em;

tr:nth-child(even) {
  background-color: #f2f2f2;
}

/* list */
#inputFiled {
	width: 350px;
	height: 46px;
	border: 1px solid black;
	outline: none;
	font-size: 40px;
	vertical-align: middle;
}

.to-dos {
	margin-top: 25px;
}

/* task list */
</style>

  </head>
 <body>
  <div id="wrap">
	<!-- 헤더들어가는 곳 -->
	<jsp:include page="../inc/top.jsp"/>
    <section class="hero-wrap hero-wrap-2 js-fullheight" 
    style="background-image: url('images/bg_6.jpg');"
    data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
      	<div
			class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
			<div class="col-md-9 ftco-animate pb-5">
				<p class="breadcrumbs">
					<span class="mr-2"><a href="./AdminMain.mb">admin <i
							class="ion-ios-arrow-forward"></i></a></span> <span>admin member<i
						class="ion-ios-arrow-forward"></i></span>
				</p>
				<h1 class="mb-3 bread">관리자 회원상세내역</h1>
			</div>
		</div>
      </div>
    </section>
	<!-- 헤더들어가는 곳 -->
	
	<!-- 메인페이지  -->
		<section class="ftco-section contact-section">
			<div class="container">
				<div class="row d-flex mb-3 contact-info">
					<div class="col-md-4">
						<div class="board_title">
							<strong>회원정보 상세조회</strong>
						</div>

						<!-- 프로필 -->
						<div class="row mb-6">
							<div class="profile">
								<div class="txt">
									<img src="./images/user.png">
									<p>${mDTO.mem_name }님</p>
									<p>문의사항 리뷰</p>
								</div>
							</div>

							<!-- 프로필 -->

						</div>
					</div>
					<!-- 우측 -->
					<div class="col-md-3 block-1 mb-md-1" align="center">
					  <form action="./AdminBlacklistUpdate.mb?mem_num=${mDTO.mem_num }" method="post">	
					  	<table class="table">
							<tbody class="tbody">
								<tr align="center">
									<td><p>회원번호</p></td>
									<td>${mDTO.mem_num }</td>
								</tr>
								<tr align="center">
									<td><p>회원명</p></td>
									<td>${mDTO.mem_name }</td>
								<tr align="center">
									<td><p>닉네임</p></td>
									<td>${mDTO.mem_nickName }</td>
								</tr>
								<tr align="center">
									<td><p>생년월일</p></td>
									<td>${mDTO.mem_birthday }</td>
								</tr>
								<tr align="center">
									<td><p>아이디</p></td>
									<td>${mDTO.mem_id }</td>
								</tr>
								<tr align="center">
									<td><p>비밀번호</p></td>
									<td>${mDTO.mem_pw }</td>
								</tr>
								<tr align="center">
									<td><p>전화번호</p></td>
									<td>${mDTO.mem_phone }</td>
								</tr>
								<tr align="center">
									<td><p>이메일</p></td>
									<td>${mDTO.mem_email }</td>
								</tr>
								<tr align="center">
									<td><p>SNS 수신 여부</p></td>
									<td>${mDTO.mem_accept_sns }</td>
								</tr>
								<tr align="center">
									<td><p>회원등록일</p></td>
									<td>${mDTO.mem_registDate }</td>
								</tr>
								<tr align="center">
									<td><p>면허증번호</p></td>
									<td>${mDTO.license_num }</td>
								</tr>
								<tr align="center">
									<td><p>블랙리스트</p></td>
									<td>
										<div class="form-check form-check-inline" align="right">
											<input class="form-check-input" type="radio" name="mem_blacklist" value="Y"
												<c:if test="${mDTO.mem_blacklist == 'Y'}">
								     			checked
								 				</c:if>
								 			> Y
								 		</div>
										<div class="form-check form-check-inline" align="right">
											<input class="form-check-input" type="radio" name="mem_blacklist" value="N"
												<c:if test="${mDTO.mem_blacklist == 'N'}">
				     			 				checked
				 								</c:if>
				 							> N
										</div> 
										<input type="submit" value="수정하기" class="btn btn-primary py-1 px-2">
									</td>
								</tr>
								<tr>
									<td align="center"><p>특이사항</p></td>
									<td>
									<div class="container">
									    <div class="row-24">
									        <div class="col-md-14">
									                <div class="card-body">
									                    <form action="javascript:void(0);">
									                        <input type="text" class="form-control add-task" placeholder="내용을 입력해주세요">
									                    </form>
									                    <div class="todo-list">
									                        <div class="todo-item">
									                            <div class="checker"><span class=""><input type="checkbox"/></span></div>
									                            <span>특이사항1</span>
									                            <a href="javascript:void(0);" class="float-right remove-todo-item"><i class="icon-close"></i></a>
								;	                        </div>
									                        <div class="todo-item">
									                            <div class="checker"><span class=""><input type="checkbox"/></span></div>
									                            <span>특이사항2</span>
									                            <a href="javascript:void(0);" class="float-right remove-todo-item"><i class="icon-close"></i></a>
									                        </div>
									                    </div>
									                </div>
									            </div>
									        </div>
									    </div>
								    </td>
								</tr>
							</tbody>
						</table>
					  </form>
					</div>
				</div>
			</div>
		</section>


	<!-- 메인페이지  -->

   	
	<div class="clear"></div>
	<!-- 푸터들어가는 곳 -->
		<jsp:include page="../inc/bottom.jsp" />
	<!-- 푸터들어가는 곳 -->
	</div>
  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>

	<script src="./js/jquery.min.js"></script>
	<script src="./js/jquery-migrate-3.0.1.min.js"></script>
	<script src="./js/popper.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>
	<script src="./js/jquery.easing.1.3.js"></script>
	<script src="./js/jquery.waypoints.min.js"></script>
	<script src="./js/jquery.stellar.min.js"></script>
	<script src="./js/owl.carousel.min.js"></script>
	<script src="./js/jquery.magnific-popup.min.js"></script>
	<script src="./js/aos.js"></script>
	<script src="./js/jquery.animateNumber.min.js"></script>
	<script src="./js/bootstrap-datepicker.js"></script>
	<script src="./js/jquery.timepicker.min.js"></script>
	<script src="./js/scrollax.min.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="./js/main.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>
    <script src="./js/taskList.js"></script>
  </body>
</html>