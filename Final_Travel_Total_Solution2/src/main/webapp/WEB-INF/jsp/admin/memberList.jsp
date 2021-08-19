<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/taglibMenu.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>전체회원조회</title>
		
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
			
			ul.paging {
				text-align:center;
				vertical-align:middle;
				margin-left:auto;
				margin-right:auto;
			}
			
			table.table custom-table {
				width : 1024px;
				
			}
		</style>
	</head>
	
	<body>
	
	
	  <div class="content">
	    
	    <div class="container">
	      <h2 class="mb-5">전체회원조회</h2>
	
	      <div class="table-responsive">
	
	        <table class="table custom-table" style="width: 95%">
			<tr>
				<th>번호</th>
				<th>아이디</th>
				<th>비밀번호</th>
				<th>이름</th>
				<th>휴대폰</th>
				<th>이메일</th>
				<th>가입일</th>
				<th>등급</th>
				<th>성별</th>
				<th>생일</th>
			</tr>
			
			<!-- 검색조건에 해당하는 결과가 없는 경우 메세지 출력 -->
			<c:if test="${not empty message}">
				<tr>
					<th colspan=10>${message}</th>
				</tr>
			</c:if>
			
			<c:forEach var="dto" items="${list}" varStatus="status">
				<tr>
					<!-- status.index => 0시작, status.count => 1시작 -->
					<th>${status.count}</th>
					<th><a href="memberDetail?memberId=${dto.memberId}" title="${dto.name}님 회원상세조회">${dto.memberId}</a></th>
					<th>${fn:substring(dto.memberPw, 0, 2)}<c:forEach begin="2" end="${fn:length(dto.memberPw)}" step="1">*</c:forEach> 
					</th>
					<th>${dto.name}</th>
					<th>${dto.mobile}</th>
					<th>${dto.email}</th>
					<th>${dto.entryDate}</th>
					<th>
					${dto.grade}
					<c:choose>
						<c:when test="${dto.grade eq 'G'}">[일반회원]</c:when>
						<c:when test="${dto.grade eq 'S'}">[우수회원]</c:when>
						<c:when test="${dto.grade eq 'A'}">[관리자]</c:when>
					</c:choose>
					</th>
					<th>${dto.gender}</th>
					<th>${dto.birth}</th>
				</tr>
			</c:forEach>
		</table>
		
		</div>
		</div>
		</div>
		
		<jsp:include page="../inc/footerMenu.jsp" />
		
		<script src="/resource/js/jquery-3.3.1.min.js"></script>
		<script src="/resource/js/popper.min.js"></script>
		<script src="/resource/js/bootstrap.min.js"></script>
		<script src="/resource/js/main.js"></script>
	
	</body>
</html>