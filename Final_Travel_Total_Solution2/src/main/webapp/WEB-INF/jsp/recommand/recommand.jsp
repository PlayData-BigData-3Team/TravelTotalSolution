<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>여행지 추천</title>
<link type="text/css" rel="stylesheet" href="/resource/css/common.css">
<style type="text/css">
			
			table {
				margin-right:auto;
				margin-left:auto;
			}
		</style>

</head>
<body>
	<jsp:include page="../inc/mainMenu.jsp" />
	<main>
			<div id="recommend">출발지와 예산을 고려한 최적의 여행지 입니다!</div>
		<form action="/member/recommend" method="post">
			<table class="map">
				<tr>
					<td>
					<img id="map" src="/resource/img/map.png" class="map1">
					</td>
				</tr>
			</table>
		</form>
	</main>
	<jsp:include page="../inc/footerMenu.jsp" />
</body>
</html>