<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.work.dto.Member" %> 
<%@ page import="com.work.service.MemberService" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css/common.css"></style>
<title>내 정보보기 </title>

<jsp:include page="../inc/css_fonts.jsp" />
<jsp:include page="../inc/mainMenu.jsp" />

<style type="text/css">
	
	#amount {
		padding-left:30px; 
		width:100%; 
		color: #359BE2; 
		border: 0.2px solid #359BE2; 
		height:50px;
	}

	button.tts_sj_button {
		color:white; 
		background-color:#FE5C24;
		border:none;
		height:50px;
		float:left;
		width:50%;
	}
	
	button.button_reset_sj {
		display: inline-block;
	    border: 1px solid transparent;
	    font-size: 15px;
	    font-weight: 500;
	    border-radius: 4px;
	    color: #fff;
	    border: 1px solid #162B45;
	    text-transform: uppercase;
	    background-color: #162B45;
	    cursor: pointer;
	    -webkit-transition: 0.5s;
	    transition: 0.5s;
	    width:82.4px;
	    height:48px;
	}
	
	button.button_reset_sj:hover {
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
	
	button.button_list_sj {
		display: inline-block;
	    border: 1px solid transparent;
	    font-size: 15px;
	    font-weight: 500;
	    border-radius: 4px;
	    color: #fff;
	    border: 1px solid #162B45;
	    text-transform: uppercase;
	    background-color: #162B45;
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

	</style>
</head>


<body>

   <!-- breadcrumb start-->
    <section class="breadcrumb breadcrumb_bg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb_iner">
                        <div class="breadcrumb_iner_item text-center">
                            <h2 style="font-size:48px;">My Info</h2>
                            <p>내 정보 페이지</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- breadcrumb start-->

    <!--================Blog Area =================-->
    <section class="blog_area section_padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 mb-5 mb-lg-0">
                    <div class="blog_left_sidebar">
                    
                    <h3 >내 정보</h3>
                    <!-- 내 정보 -->
                     	<article class="blog_item">                        
                           <div class="comment-form">
                           		<form   class="form-contact comment_form" method="post" id="commentForm">
                           		
			                        <br>
									<h5>아이디 : ${dto.memberId}</h5>
									
									<!-- 등급 -->
									<br>
			                         <h5> 등급 : ${dto.grade}
                                       <c:choose>
											<c:when test="${dto.grade eq 'G'}">[일반회원]</c:when>
											<c:when test="${dto.grade eq 'S'}">[우수회원]</c:when>
											<c:when test="${dto.grade eq 'A'}">[관리자]</c:when>
										</c:choose>
									</h5>
			                        
			                        <br>
			                        <h5> 가입일 : ${dto.entryDate}</h5>
			                        
			                        <br>
			                        <h5> 성별 : ${dto.gender}</h5>
			                        
			                        <br>
			                        <h5> 생년월일 : ${dto.birth}</h5>
			                        
			                        <br><br><br>
			                        
			                        
			                            <div class="row">
			                            	
			                            	
			                            	
			                            	<!-- 비밀번호 -->
			                            	<div class="col-12">
			                                    <div class="form-group">
			                                        <input type="password" class="form-control" 
			                                        readOnly="readOnly" name="memberPw" value="${dto.memberPw}" id="website"  autofocus="autofocus">
			                                    </div>
			                                </div>
			                            
			                            	<!-- 이름 -->
			                            	<div class="col-12">
			                                    <div class="form-group">
			                                        <input type="text" class="form-control" 
			                                        readOnly="readOnly" name="name" value="${dto.name}" id="website" autofocus="autofocus">
			                                    </div>
			                                </div>
			                                
			                                <!-- 이메일  -->
			                                <div class="col-12">
			                                    <div class="form-group">
			                                        <input type="email" class="form-control" 
			                                        readOnly="readOnly" name="email" value="${dto.email}" id="website" autofocus="autofocus">
			                                    </div>
			                                </div>
			                                
			                                <!-- 휴대폰 -->
			                                <div class="col-12">
			                                    <div class="form-group">
			                                        <input type="text" class="form-control" 
			                                        readOnly="readOnly" name="mobile" value="${dto.mobile}" id="website" autofocus="autofocus">
			                                    </div>
			                                </div>
			                                
			                            </div>
			                            
			                            <!-- 버튼 -->
			                            <div class="form-group">
			                                <button type="button" id="myInfoUpdate" onclick="location.href='myInfoModifyForm?memberId=${dto.memberId}&gender=${dto.gender}&birth=${dto.birth}'"
			                                class="button button-contactForm btn_1">내정보변경</button>
			                                <button type="reset" id="myInfoUpdate" class="button_reset_sj">취소</button>
			                            </div>
			                        </form>
			                    </div>
			                
                        </article> 
                        
                    </div>
                </div>  
                
              
            </div>
        </div>
    </section>
    <!--================Blog Area =================-->


<jsp:include page="../inc/footerMenu.jsp" />


</body>
</html>