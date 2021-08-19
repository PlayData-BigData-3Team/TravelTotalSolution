<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/taglibMenu.jsp" %>
<html lang="en">

   <!--::header part start::-->
   <header class="main_menu">
        <div class="main_menu_iner">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-12" style="width:500px;">
                        <nav class="navbar navbar-expand-lg navbar-light justify-content-between">
                            <a class="navbar-brand" onclick="location.href='/main'"> <img src="/img/tts_logo.png" alt="logo" style="width:90px; height:100px; margin-left: 40px;"> </a>
                            <button class="navbar-toggler" type="button" data-toggle="collapse"
                                data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                                aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>

                            <div class="collapse navbar-collapse main-menu-item justify-content-center"
                                id="navbarSupportedContent" style="text-align:right;">
                                <ul class="navbar-nav" style="text-align:right; margin-right: -600px;">
                                    <li class="nav-item">
                                        <a class="nav-link" onclick="location.href='/main'">Home</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" onclick="location.href='/member/logout'">Logout</a>
                                    </li>
                                    
                                     <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                            role="button" data-toggle="dropdown" aria-haspopup="true"
                                            aria-expanded="false">
                                            MyMenu
                                        </a>
                                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                            <a class="dropdown-item" onclick="location.href='/member/myPage'">Mypage</a>
                                            <%-- <a class="dropdown-item" onclick="location.href='/member/myInfoDetail?memberId=${memberId}'">MyInfo</a> --%>
                                        </div>
                                    </li>
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown_1"
                                            role="button" data-toggle="dropdown" aria-haspopup="true"
                                            aria-expanded="false">
                                           Community
                                        </a>
                                        <div class="dropdown-menu" aria-labelledby="navbarDropdown_1">
                                            <a class="dropdown-item" onclick="location.href='/review/reviewList'">리뷰게시판</a>
                                            <a class="dropdown-item" onclick="location.href='/community/communityList'">동행게시판</a>
                                        </div> 
                                    </li>
                                </ul>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- Header part end-->