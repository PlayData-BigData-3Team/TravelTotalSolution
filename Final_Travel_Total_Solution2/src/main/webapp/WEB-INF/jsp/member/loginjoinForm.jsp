<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/taglibMenu.jsp"%>


<!DOCTYPE html>
<html lang="en" >
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>편行 : LOGIN </title>
  
  	<jsp:include page="../inc/css_fonts.jsp" />
  	<jsp:include page="../inc/beforeMenu.jsp" />
  	
  <link rel='stylesheet' href='/css/bootstrap.min_login.css'>
  <link rel='stylesheet' href='/css/unicons_login.css'>
  <link rel="stylesheet" href="/css/style_dy.css">
	
	<!-- 배경그라데이션 -->
	<style> 
	body { 
			min-height: 100vh; 
			background: -webkit-gradient(linear, left bottom, right top, from(#92b5db), to(#1d466c)); 
			background: -webkit-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%); 
			background: -moz-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%); 
			background: -o-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%); 
			background: linear-gradient(to top right, #92b5db 0%, #1d466c 100%); }
	</style>
</head>

<body>
	<div class="section" style="height: 1100px;">
		<div class="container">
			<div class="row full-height justify-content-center">
				<div class="col-12 text-center align-self-center py-5">
					<div class="section pb-5 pt-5 pt-sm-2 text-center">
						<br><br>
						<h6 class="mb-0 pb-3"><span style="font-size:23px;">Login </span><span style="font-size:23px;">Sign Up</span></h6>
			          	<br><br>
			          	<input class="checkbox" type="checkbox" id="reg-log" name="reg-log"/>
			          	<label for="reg-log"></label>
						<div class="card-3d-wrap mx-auto">
							<div class="card-3d-wrapper">
								<div class="card-front">
									<div class="center-wrap">
										<div class="section text-center">
											
											<!-- 로그인 폼 -->
											<h4 class="mb-4 pb-3">Login</h4>
											
											<form action="/member/login" class="validation-form" method="post" >
											<div class="form-group">
												<input type="text" name="memberId" class="form-style" placeholder="Your ID" id="logemail" autocomplete="off" value="" required>
												<div class="invalid-feedback"> 이름을 입력해주세요. </div>
												<i class="input-icon uil uil-at"></i>
											</div>	
											<div class="form-group mt-2">
												<input type="password" name="memberPw" class="form-style" placeholder="Your Password" id="logpass" autocomplete="off" value="" required>
												<i class="input-icon uil uil-lock-alt"></i>
											</div>
											
											
											<!-- 버튼 -->
											
											<br>
											<button type="submit" value="Login" class="btn mt-4">Login</button>
											<br>
											
											</form>
											<hr class="mb-4"> 
                            				<!-- <p class="mb-0 mt-4 text-center"><a onclick="location.href='/member'" class="link" style="color: #0c3e71">need to sign up for membership?</a></p> -->
				      					</div>
			      					</div>
			      				</div>
								<div class="card-back">
									<div class="center-wrap">
										<div class="section text-center">
										
											<!-- 회원가입 폼 -->
											<h4 class="mb-4 pb-3">Sign Up</h4>
											
											<form action="/member/join" class="validation-form" method="post">
												
												<div class="form-group">
													<input type="text" name="memberId" class="form-style" placeholder="ID" id="logname" autocomplete="off">
													<i class="input-icon uil uil-user"></i>
												
												<div class="form-group mt-2">
													<input type="password" name="memberPw" class="form-style" placeholder="Password" id="logpass" autocomplete="off">
													<i class="input-icon uil uil-lock-alt"></i>
												</div>											</div>	
												<div class="form-group mt-2">
													<input type="email" name="email" class="form-style" placeholder="Email | email@email.com" id="logemail" autocomplete="off">
													<i class="input-icon uil uil-at"></i>
												</div>	
												<div class="form-group mt-2">
													<input type="text" name="name" class="form-style" placeholder="Name | 홍길동" id="logpass" autocomplete="off">
													<i class="input-icon uil uil-lock-alt"></i>
												</div>
												<div class="form-group mt-2">
													<input type="text" name="mobile" class="form-style" placeholder="Phone Number | 01012341234" id="logpass" autocomplete="off">
													<i class="input-icon uil uil-lock-alt"></i>
												</div>
												<div class="form-group mt-2">
													<input type="number" name="birth" class="form-style" placeholder="생년월일6자리" id="logpass" autocomplete="off">
													<i class="input-icon uil uil-lock-alt"></i>
												</div>
												<div class="form-group mt-2">
												<select class="form-style" name="gender" id="logpass">
												<option>성별</option> 
												<option>여자</option> 
												<option>남자</option> 
												</select> 
													<i class="input-icon uil uil-lock-alt"></i>
												</div>
												<br>
												<hr class="mb-4"> 
												<div class="custom-control custom-checkbox"> 
													<input type="checkbox" class="custom-control-input" id="aggrement" required> 
													<label class="custom-control-label" for="aggrement" style="color: #0c3e71">개인정보 수집 및 이용에 동의합니다.</label> 
												</div> 
												<div class="mb-4">
												</div>
											
											<!-- 버튼 -->
											<button type="submit" value="SignUp" class="btn mt-4" >Sign Up</button>					
											
											</form>
				      					</div>
			      					</div>
			      				</div>
			      			</div>
			      		</div>
			      	</div>
		      	</div>
	      	</div>
	    </div>
	</div>
	<br><br><br><br>
	<jsp:include page="../inc/footerMenu.jsp" />
<!-- partial -->
  <script  src="/js/script_dy.js"></script>

</body>
</html>
