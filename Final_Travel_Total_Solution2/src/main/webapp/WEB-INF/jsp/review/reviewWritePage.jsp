<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/taglibMenu.jsp" %>
    
<!doctype html>
<html lang="en">

<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>편行 : 편한여행 </title>
  
  	<jsp:include page="../inc/css_fonts.jsp" />
	
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

	<jsp:include page="../inc/mainMenu.jsp" />
   
    
    <!-- breadcrumb start-->
    <section class="breadcrumb breadcrumb_bg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb_iner">
                        <div class="breadcrumb_iner_item text-center">
                            <h2 style="font-size:48px;">Review</h2>
                            <p>리뷰 작성 페이지</p>
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
                    
                    <h3 >REVIEW</h3>
                    <!-- 리뷰 리스트 -->
                     	<article class="blog_item">                        
                           <div class="comment-form">
			                        <br>
									<h5>작성자 : ${sessionId}</h5>
									
									<br>
									<h5>작성일 : ${currentDate}</h5>
			                        
			                        <br><br><br>
			                        
			                        <form class="form-contact comment_form" action="/review/addReview" method="post" id="commentForm">
			                            <div class="row">
			                            	
			                            	
			                            	
			                            	<!-- 제목 -->
			                            	<div class="col-12">
			                                    <div class="form-group">
			                                        <input type="text" class="form-control" name="title" id="website"  placeholder="Title" autofocus="autofocus">
			                                    </div>
			                                </div>
			                            
			                            	<!-- 리뷰 내용 -->
			                                <div class="col-12">
			                                    <div class="form-group">
			                                        <textarea class="form-control w-100" name="contents" id="comment" cols="30" rows="15" placeholder="Write Comment"></textarea>
			                                    </div>
			                                </div>
			                                
<!-- 			                                파일 전송
			                                 <div class="col-12">
			                                    <div class="form-group">
			                                        <input class="form-control" name="website" id="website" type="text" placeholder="Website">
			                                    </div>
			                                </div> -->
			                            </div>
			                            
			                            <!-- 버튼 -->
			                            <div class="form-group">
			                                <button type="submit" class="button button-contactForm btn_1">등록</button>
			                                <button type="reset" class="button_reset_sj">취소</button>
			                                <button type="button" onclick="location.href='reviewList'" class="button_list_sj">목록</button>
			                            </div>
			                        </form>
			                    </div>
			                
                        </article> 
                        
                    </div>
                </div>  
                
                <!-- 사이드 바 -->
                <div class="col-lg-4">
                    <div class="blog_right_sidebar">
                    
                    	<!-- 키워드 검색 기능 -->
                        <!-- <aside class="single_sidebar_widget search_widget">
                            <form action="#">
                                <div class="form-group">
                                    <div class="input-group mb-3">
                                        <input type="text" class="form-control" placeholder='Search Keyword'
                                            onfocus="this.placeholder = ''"
                                            onblur="this.placeholder = 'Search Keyword'">
                                        <div class="input-group-append">
                                            <button class="btn" type="button"><i class="ti-search"></i></button>
                                        </div>
                                    </div>
                                </div>
                                <button class="button rounded-0 primary-bg text-white w-100 btn_1"
                                    type="submit">Search</button>
                            </form>
                        </aside> -->

						<!-- 카테고리, 태그별 리뷰 목록 띄우기 -->
                        <!-- <aside class="single_sidebar_widget post_category_widget">
                            <h4 class="widget_title">Category</h4>
                            <ul class="list cat-list">
                                <li>
                                    <a href="#" class="d-flex">
                                        <p>Resaurant food</p>
                                        <p>(37)</p>
                                    </a>
                                </li>
                            </ul>
                        </aside> -->
						
						<!-- 최근 포스트 -->
                        <aside class="single_sidebar_widget popular_post_widget">
                            <h3 class="widget_title">Recent Post</h3>
                            
                            <c:forEach var="dto" items="${list}" end="5">
                            <div class="media post_item">
                                <div class="media-body">
                                    <a href="reviewDetail?postNo=${dto.postNo}">
                                        <h3>${dto.title}</h3>
                                    </a>
                                    <p>${dto.creationDate}</p>
                                </div>
                            </div>
                            </c:forEach>
                        </aside>
                        
                        <!-- 태그 클라우드 -->
<!--                         <aside class="single_sidebar_widget tag_cloud_widget">
                            <h4 class="widget_title">Tag Clouds</h4>
                            <ul class="list">
                                <li>
                                    <a href="#">project</a>
                                </li>
                            </ul>
                        </aside> -->

						<!-- 인스타그램 피드 -->
<!--                         <aside class="single_sidebar_widget instagram_feeds">
                            <h4 class="widget_title">Instagram Feeds</h4>
                            <ul class="instagram_row flex-wrap">
                                <li>
                                    <a href="#">
                                        <img class="img-fluid" src="img/post/post_5.png" alt="">
                                    </a>
                                </li>
                            </ul>
                        </aside> -->

						<!-- 뉴스 구독 -->
                        <aside class="single_sidebar_widget newsletter_widget">
                            <h4 class="widget_title">Newsletter</h4>

                            <form action="#">
                                <div class="form-group">
                                    <input type="email" class="form-control" onfocus="this.placeholder = ''"
                                        onblur="this.placeholder = 'Enter email'" placeholder='Enter email' required>
                                </div>
                                <button class="button rounded-0 primary-bg text-white w-100 btn_1"
                                    type="submit">Subscribe</button>
                            </form>
                        </aside>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================Blog Area =================-->


	<jsp:include page="../inc/footerMenu.jsp" />
</body>

</html>