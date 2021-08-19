<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css/common.css"></style>
<title>로그인페이지</title>
<link type = "text/css" rel = "stylesheet" href ="/css/common.css">
</head>
<body>
<a href = "/"><img src ="/img/logo.png"></a>

<a href = "joinForm">회원가입</a>
<a href = "loginForm">로그인</a>
<a href = "searchId">아이디찾기</a>
<a href = "searchPw">비밀번호찾기</a>

<h3>아이디찾기</h3>
<form action="findId" method="post">
이름	<input type ="text" name="name" autofocus="autofocus"  required="required"/>
휴대폰번호 <input type ="text" name="mobile" placeholder="입력형식)010-0000-0000"  required="required"/>

	<input type ="submit" value="찾기" />
	<input type ="reset" value="취소" />
</form>


</body>
</html>