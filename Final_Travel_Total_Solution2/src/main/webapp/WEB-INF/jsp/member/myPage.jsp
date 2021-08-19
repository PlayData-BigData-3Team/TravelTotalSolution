<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/taglibMenu.jsp"%>

<!doctype html>
<html lang="en" style="height:2000px;">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>편行 : MyPage</title>

<jsp:include page="../inc/css_fonts.jsp" />
<jsp:include page="../inc/mainMenu.jsp" />

<link rel="stylesheet" href="/resource/css/common_dy.css">

</head>

<body class="myPage_dy">
	<div class="wrap_dy">
		<div class="greenContainer_dy">
			<div>
				<div class="grade_dy">
					<c:choose>
						<c:when test="${grade == 'G'}"><p style="color:#FE5C24;">일반회원(${grade})</p></c:when>
						<c:when test="${grade == 'A'}"><p style="color:#FE5C24;">관리자(${grade})</p></c:when>
					</c:choose>
				</div>
				<div class="name_dy">
					<c:choose>
						<c:when test="${grade == 'G'}">${sessionId}님 환영합니다!</c:when>
						<c:when test="${grade == 'A'}">${sessionId}님 환영합니다!</c:when>
					</c:choose>
				</div>
			</div>
			<div class="modify_dy">i</div>
		</div>
		
		
		
		<div class="summaryContainer_dy">
			<div class="item_dy">
				<div class="number_dy">0</div>
				<div>여행완료</div>
			</div>
			<div class="item_dy">
				<div class="number_dy">${reviewNum}</div>
				<div>여행후기</div>
			</div>
			<div class="item_dy">
				<div class="number_dy">${communityNum}</div>
				<div>동행게시판</div>
			</div>
		</div>
		<div class="shippingStatusContainer_dy">
			<div class="title_dy">여행 예약/결제</div>
			<div class="status_dy">

				<div class="item_dy">
					<div>
						<div class="green number_dy">0</div>
						<div class="text_dy">찜한 여행</div>
					</div>
					<div class="icon_dy">></div>
				</div>
				<div class="item_dy">
					<div>
						<div class="number_dy">0</div>
						<div class="text_dy">결제 대기</div>
					</div>
					<div class="icon_dy">></div>
				</div>
				<div class="item_dy">
					<div>
						<div class="green number_dy">0</div>
						<div class="text_dy">결제 완료</div>
					</div>
					<div class="icon_dy">></div>
				</div>
				<div class="item_dy">
					<div>
						<div class="green number_dy">0</div>
						<div class="text_dy">결제 취소</div>
					</div>
				</div>

			</div>

		</div>
		<div class="listContainer_dy">
 			<a href="#" class="item_dy">
				<div class="icon_dy">i</div>
				<div class="text_dy">
					결제 목록<span class="circle_dy"></span>
				</div> <a href="#" class="item_dy">
				<div class="icon_dy">ii</div>
				<div class="text_dy">
					결제 취소<span class="circle_dy"></span>
				</div>
		</div>

		<div class="listContainer_dy">
				<div class="icon_dy">iii</div>
				<div class="text_dy">
					<span>여행 구독</span> <span class="smallLight_dy"> <span>|</span> 
					<span>편行 이메일 구독 서비스</span>
					</span>
				</div>
				<div class="right_dy">
					<span class="blct_dy"></span> >
				</div>
 			</a></a>
		</div>
	
	<br><br><br><br>
	<jsp:include page="../inc/footerMenu.jsp" />
	
	</div>
</body>
</html>