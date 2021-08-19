<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/taglibMenu.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원상세조회</title>
		
		<jsp:include page="../inc/css_fonts.jsp" />
		<jsp:include page="../inc/mainMenu.jsp" />
		
		<!-- 폼이나 기본적인 디자인들 -->
		<link rel="stylesheet" href="/resource/css/bootstrap_sj.css">
		<link rel="stylesheet" href="/resource/css/vendor/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="/resource/css/vendor/prismjs/themes/prism-okaidia.css">
		<link rel="stylesheet" href="/resource/css/assets/css/custom.min.css">
		
		<!-- 게시판 css -->
		<link type="text/css" rel="stylesheet" href="/resource/css/common.css">
		<link type="text/css" rel="stylesheet" href="/resource/css/community.css">
		<link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">
		<link rel="stylesheet" href="/resource/fonts/icomoon/style.css">
		<link rel="stylesheet" href="/resource/css/owl.carousel.min.css">
		
		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="/resource/css/bootstrap.min.css">
		
		<!-- Style -->
		<link rel="stylesheet" href="/resource/css/style.css">
		
		<!-- Global Site Tag (gtag.js) - Google Analytics -->
		<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23019901-1"></script>
		
		
		 <style type="text/css">
			
			h1 {
				text-align:center;
			}
			
			div.top-bottom {
				margin-bottom: 150px;
			}
			
			form {
				text-align:center;
			}
			
			input.title {
				text-align:center;
				vertical-align:middle;
				margin-left:auto;
				margin-right:auto;
				width: 300px;
			}
			
			div.bottom-bottom {
				margin-top: 150px;
			}
			
			button.button_list_sj {
				display: inline-block;
			    border: 1px solid transparent;
			    font-size: 15px;
			    font-weight: 500;
			    border-radius: 4px;
			    color: #162B45;
			    border: 1px solid #162B45;
			    text-transform: uppercase;
			    background-color: #fff;
			    cursor: pointer;
			    -webkit-transition: 0.5s;
			    transition: 0.5s;
			    width:82.4px;
			    height:48px;
			}
			
			button.button_list_sj:hover {
				display: inline-block;
			    border: 1px solid transparent;
			    font-size: 15px;
			    font-weight: 500;
			    border-radius: 4px;
			    color: #fff;
			    border: 1px solid #fdcb9e;
			    text-transform: uppercase;
			    background-color: #2493E0;
			    cursor: pointer;
			    -webkit-transition: 0.5s;
			    transition: 0.5s;
			    width:82.4px;
			    height:48px;
			    
			}
			
			th, td {
			
				color:black;
			
			}
    	</style>
	
	</head>
	
	<body>
	
	
	<!-- 헤더와 바디 공백 -->
	<div class="top-bottom"></div>
	
	<h3>회원 상세 정보</h3>
	<br><br><br>
	
	  <div class="content" style="text-align:center;">
	    
	    <div class="container">
	
	      <div class="table-responsive">
	
	        <table class="table custom-table" style="width: 50%; margin-right:auto; margin-left:auto; color:black; font-size:18px; padding:15px;">
			
			<tr>
				<th>아이디</th>
				<td>${dto.memberId}</td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td>${fn:substring(dto.memberPw, 0, 2)}<c:forEach begin="2" end="${fn:length(dto.memberPw)}" step="1">*</c:forEach></td>
			</tr>
			<tr>
				<th>이름</th>
				<td>${dto.name}</td>
			</tr>
			<tr>
				<th>휴대폰</th>
				<td>${dto.mobile}</td>
			</tr>
			<tr>
				<th>이메일</th>
				<td>${dto.email}</td>
			</tr>
			<tr>
				<th>가입일</th>
				<td>${dto.entryDate}</td>
			</tr>
			
			<tr>
				<th>등급</th>
				<td>
				${dto.grade}
				<c:choose>
					<c:when test="${dto.grade eq 'G'}">[일반회원]</c:when>
					<c:when test="${dto.grade eq 'S'}">[우수회원]</c:when>
					<c:when test="${dto.grade eq 'A'}">[관리자]</c:when>
				</c:choose>
				</td>
			</tr>
			
			<tr>
				<th>성별</th>
				<td>${dto.gender}</td>
			</tr>
			
			<tr>
				<th>생일</th>
				<td>${dto.birth}</td>
			</tr>
		</table>	
		
		<br><br><br>
		<button type="button"  class="button_list_sj" onclick="location.href='/admin/memberList'">목록</button>
	</div>
	</div>
	</div>
		
		
		<!-- body와 footer 공백 -->
		<div class="bottom-bottom"></div>
		
		<!-- footer -->
		<jsp:include page="../inc/footerMenu.jsp" />
		
		<!-- footer 밑 공백 -->
		<div class="bottom-bottom"></div>
		</body>			
	
		<!-- 자바스크립트 -->
		<script src="/resource/js/jquery.min_sj.js"></script>
	    <script src="/resource/js/bootstrap.bundle.min_sj.js"></script>
	    <script src="/resource/js/prism_sj.js" data-manual></script>
	    <script src="/resource/js/custom_sj"></script>
</html>