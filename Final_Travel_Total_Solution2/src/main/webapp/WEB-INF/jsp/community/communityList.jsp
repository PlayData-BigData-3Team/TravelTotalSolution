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
	
/* 	h2 {
		font-size:30px;
	} */

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
                            <h2 style="font-size:48px;">동행</h2>
                            <p>함께 여행을 갈 여행 친구 동행을 찾아보세요.</p>
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
                    
                    
                    <!-- 동행 리스트 -->
                    <c:forEach var="dto" items="${list}">
                     	<article class="blog_item">                        
                            <div class="blog_details">
                                <a class="d-inline-block" href="communityRead?postNo=${dto.postNo}" title="${dto.postNo}동행 조회">
                                    <h2>${dto.title}</h2>
                                    <h5>${currentDate}</h5>
                                </a>
                                <p>${dto.contents}</p>
                                <ul class="blog-info-link">
                                    <li><a href="#"><i class="far fa-user"></i>${dto.memberId}</a></li>
                                    <li><a href="#">조회수  </i>${dto.views}</a></li>
                                </ul>
                            </div>
                        </article>
                     </c:forEach>   

					<!-- 페이징 기능 -->
                     <nav class="blog-pagination justify-content-center d-flex">
                            <ul class="pagination">
                                <li class="page-item">
                                    <a href="#" class="page-link" aria-label="Previous">
                                        <i class="ti-angle-left"></i>
                                    </a>
                                </li>
                                
                            <c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="num">
				        		<li class="page-item">
				        			<a class="page-link" href='<c:url value="/community/communityList?page=${num}"/>'>${num}</a>
				        		</li>
				    		</c:forEach>
                                
                                <li class="page-item">
                                    <a href="#" class="page-link" aria-label="Next">
                                        <i class="ti-angle-right"></i>
                                    </a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
                
                
                <!-- 사이드 바 -->
                <div class="col-lg-4">
                    <div class="blog_right_sidebar">
                    
                    	<!-- 글쓰기 버튼 -->                    	
                    	<aside class="single_sidebar_widget search_widget">
                            <form action="#">
                                <button type="button" class="button rounded-0 primary-bg text-white w-100 btn_1"
                                   onclick="location.href='/community/communityForm'" >게시글 작성하기</button>
                            </form>
                        </aside>
                    
                        <!-- <aside class="single_sidebar_widget search_widget">
                            키워드 검색 기능
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

						<!-- 카테고리, 태그별 게시글 목록 띄우기 -->
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
                                    <a href="communityRead?postNo=${dto.postNo}">
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