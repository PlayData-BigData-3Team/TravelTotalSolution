<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="inc/taglibMenu.jsp" %>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>편行 : 편한여행 </title>
    
    
   <jsp:include page="inc/css_fonts.jsp" />
	
	
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
	
	select.nc-select {
		color:white; 
		background-color:#FE5C24;
		border:none;
		height:50px;
		float:left;
		width:50%;
	
	}
	input.tts_sj_button{
		color:white; 
		background-color:#FE5C24;
		border:none;
		height:50px;
		float:left;
		width:50%;
	}
	

	</style>
</head>

<body>
   
	<jsp:include page="inc/mainMenu.jsp" />
	
    <!-- banner part start-->
    <section class="banner_part" style="height:570px;">
        <div class="container">
            <div class="row align-items-center justify-content-center">
                <div class="col-lg-10">
                    <div class="banner_text text-center">
                        <div class="banner_text_iner">
                            <h1 style="font-family: 'Gothic A1', sans-serif; font-size:80px; margin-top:-240px;"> 편行 : 편한 여행</h1>
                            <p>Let’s start your journey with us, your dream will come true</p>
                          <!--   <a href="#" class="btn_1">Discover Now</a> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- banner part start-->

    <!-- booking part start-->
    <section class="booking_part">
        <div class="container">
            <div class="row">
                <!-- <div class="col-lg-12">
                    <div class="booking_menu">
                        <ul class="nav nav-tabs" id="myTab" role="tablist">
                            <li class="nav-item">
                            <a class="nav-link active" id="hotel-tab" data-toggle="tab" href="#hotel" role="tab" aria-controls="hotel" aria-selected="true">hotel</a>
                            </li>
                            <li class="nav-item">
                            <a class="nav-link" id="tricket-tab" data-toggle="tab" href="#tricket" role="tab" aria-controls="tricket" aria-selected="false">tricket</a>
                            </li>
                            <li class="nav-item">
                            <a class="nav-link" id="place-tab" data-toggle="tab" href="#place" role="tab" aria-controls="place" aria-selected="false">place</a>
                            </li>
                        </ul>
                    </div>
                </div> -->
                <div class="col-lg-12">
                    <div class="booking_content" style="margin-top:-50px;">
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="hotel" role="tabpanel" aria-labelledby="hotel-tab">
                                <div class="booking_form">
                                    
                                    
                                    <!-- 메인 form -->
                                    <form  action="/transport/map" method="post">
                                        <div class="form-row" style="padding-left:100px;">
                                            <div class="form_colum" style="float:left; width:33%;">
                                                <select class="nc_select" name="nc_select">
                                                    <option selected >출발지 </option>
                                                    <option value="1">서울</option>
													<option value="2">전주</option>
													<option value="3">인천</option>
													<option value="4">대구</option>
													<option value="5">울산</option>
													<option value="6">부산</option>
													<option value="7">대전</option>
													<option value="8">광주</option>
													<option value="9">강릉</option>
													<option value="10">유성</option>
													<option value="11">천안</option>
                                                    <option value="13">제주</option>
                                                </select>
                                            </div>
                                            
                                            <div class="form_colum" style="float:left; width:33%;">
											     <input placeholder="예산" id="amount" name="amount" type="text" onkeyup="inputNumberFormat(this)"/>
											     
<!-- 											     <script>
											      function inputNumberFormat(obj) {
											    	     obj.value = comma(uncomma(obj.value));
											    	 }

											    	 function comma(str) {
											    	     str = String(str);
											    	     return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
											    	 }

											    	 function uncomma(str) {
											    	     str = String(str);
											    	     return str.replace(/[^\d]+/g, '');
											    	 }
											      </script> -->
											   
                                            </div>
                                            
                                            <div class="form_colum" style="float:left; width:33%;">
	                                            <!-- <button type="submit" class="tts_sj_button" >Search</button> -->
	                                            <input class="tts_sj_button" type="submit" value="검색">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            
                            
                            <!-- 여행지 소개 section -->
                            <div class="tab-pane fade" id="tricket" role="tabpanel" aria-labelledby="tricket-tab">
                                <div class="booking_form">
                                    <form action="#">
                                        <div class="form-row">
                                            <div class="form_colum">
                                                <select class="nc_select">
                                                    <option selected>Choosace place </option>
                                                    <option value="1">One</option>
                                                    <option value="2">Two</option>
                                                    <option value="3">Three</option>
                                                </select>
                                            </div>
                                            <div class="form_colum">
                                                <input id="datepicker_3" placeholder="Check in date">
                                            </div>
                                            <div class="form_colum">
                                                <input id="datepicker_4" placeholder="Check in date">
                                            </div>
                                            <div class="form_colum" style="float:left; width: 33%;">
                                                <select class="nc_select">
                                                    <option selected>Persone </option>
                                                    <option value="1">One</option>
                                                    <option value="2">Two</option>
                                                    <option value="3">Three</option>
                                                </select>
                                            </div>
                                            <div class="form_btn" style="float:left; width: 33%;">
                                                <a href="#" class="btn_1">search</a>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="place" role="tabpanel" aria-labelledby="place-tab">
                                <div class="booking_form">
                                    <form action="#">
                                        <div class="form-row">
                                            <div class="form_colum">
                                                <select class="nc_select">
                                                    <option selected>Choosace place </option>
                                                    <option value="1">One</option>
                                                    <option value="2">Two</option>
                                                    <option value="3">Three</option>
                                                </select>
                                            </div>
                                            <div class="form_colum">
                                                <input id="datepicker_5" placeholder="Check in date">
                                            </div>
                                            <div class="form_colum">
                                                <input id="datepicker_6" placeholder="Check in date">
                                            </div>
                                            <div class="form_colum">
                                                <select class="nc_select">
                                                    <option selected>Persone </option>
                                                    <option value="1">One</option>
                                                    <option value="2">Two</option>
                                                    <option value="3">Three</option>
                                                </select>
                                            </div>
                                            <div class="form_btn">
                                                <a href="#" class="btn_1">search</a>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Header part end-->

    <!--top place start-->
    <section class="top_place section_padding">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-6">
                    <div class="section_tittle text-center">
                        <h2 style="width: 580px;">Top Places to visit</h2>
                        <p style="color: black;">편行으로 여행하신 고객들이 가장 많이 선택한 여행지 입니다. </p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="single_place">
                        <img src="img/jeju.jpg" alt="">
                        <div class="hover_Text d-flex align-items-end justify-content-between">
                            <div class="hover_text_iner">
                                <a href="#" class="place_btn">travel</a>
                                <h3>제주도</h3>
                                <p>#바다   #섬속의섬   #맑음   #한라산</p>
                                <div class="place_review">
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <span>(150 visit)</span>
                                </div>
                            </div>
                            <div class="details_icon text-right">
                                <i class="ti-share"></i>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="single_place">
                        <img src="img/busan.jpg" alt="">
                        <div class="hover_Text d-flex align-items-end justify-content-between">
                            <div class="hover_text_iner">
                                <a href="#" class="place_btn">travel</a>
                                <h3>부산</h3>
                                <p>#광안대교   #야경투어   #더베이101   #돼지국밥</p>
                                <div class="place_review">
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <span>(114 visit)</span>
                                </div>
                            </div>
                            <div class="details_icon text-right">
                                <i class="ti-share"></i>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="single_place">
                        <img src="img/ulsan.jpg" alt="">
                        <div class="hover_Text d-flex align-items-end justify-content-between">
                            <div class="hover_text_iner">
                                <a href="#" class="place_btn">travel</a>
                                <h3>울산</h3>
                                <p>#대나무   #갈대밭   #드라이브   #어탕국수</p>
                                <div class="place_review">
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <span>(79 visit)</span>
                                </div>
                            </div>
                            <div class="details_icon text-right">
                                <i class="ti-share"></i>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="single_place">
                        <img src="img/jeonju.jpg" alt="">
                        <div class="hover_Text d-flex align-items-end justify-content-between">
                            <div class="hover_text_iner">
                                <a href="#" class="place_btn">travel</a>
                                <h3>전주</h3>
                                <p>#한복체험   #벽화마을   #영화거리   #막걸리골목</p>
                                <div class="place_review">
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <span>(68 visit)</span>
                                </div>
                            </div>
                            <div class="details_icon text-right">
                                <i class="ti-share"></i>
                            </div>
                        </div>
                    </div>
                </div>
                <a href="#" class="btn_1 text-cnter">편行 예약하기</a>
            </div>
        </div>
    </section>
    <!--top place end-->

    <!--top place start-->
    <section class="event_part section_padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="event_slider owl-carousel" >
                        <div class="single_event_slider">
                            <div class="row justify-content-end">
                                <div class="col-lg-6 col-md-6">
                                    <div class="event_slider_content">
                                        <h5>Recommended Tourism Information</h5>
                                        <h2>제주도</h2>
                                        <p>
                                        제주 퍼시픽랜드 마린스테이지 공연
                                        </p>
                                        <p>date: <span>모든날짜 예약가능합니다!</span> </p>
                                        <p>Cost: <span>￦12,500 (성인1명기준)</span> </p>
                                        <p>Address: <span> 제주특별자치도 서귀포시 중문관광로 154-17</span> </p>
                                        <div class="rating">
                                            <span>Rating:</span>
                                            <div class="place_review">
                                                <a href="#"><i class="fas fa-star"></i></a>
                                                <a href="#"><i class="fas fa-star"></i></a>
                                                <a href="#"><i class="fas fa-star"></i></a>
                                                <a href="#"><i class="fas fa-star"></i></a>
                                            </div>
                                        </div>
                                        <a href="https://www.jejuisland.com/item/tourist/detail/PoBsHXBsHXBsHPS6KPeg" class="btn_1">reservation now!</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="single_event_slider">
                            <div class="row justify-content-end">
                                <div class="ol-lg-6 col-md-6">
                                    <div class="event_slider_content">
                                        <h5>Recommended Tourism Information</h5>
                                        <h2>부산</h2>
                                        <p>
                                        부산 송도해안케이블카
                                        </p>
                                        <p>date: <span>모든날짜 예약가능합니다!</span> </p>
                                        <p>Cost: <span>￦15,000 (성인1명기준)</span> </p>
                                        <p>Address: <span> 부산 서구 송도해안로 171</span> </p>
                                        <div class="rating">
                                            <span>Rating:</span>
                                            <div class="place_review">
                                                <a href="#"><i class="fas fa-star"></i></a>
                                                <a href="#"><i class="fas fa-star"></i></a>
                                                <a href="#"><i class="fas fa-star"></i></a>
                                                <a href="#"><i class="fas fa-star"></i></a>
                                                <a href="#"><i class="fas fa-star"></i></a>
                                            </div>
                                        </div>
                                        <a href="https://www.busanaircruise.online/?type=mall&mode=detail&ticket_key=2108020003" class="btn_1">reservation now!</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="single_event_slider">
                            <div class="row justify-content-end">
                                <div class="ol-lg-6 col-md-6">
                                    <div class="event_slider_content">
                                        <h5>Recommended Tourism Information</h5>
                                        <h2>전주</h2>
                                        <p>
                                        전주 한옥마을 체험콘텐츠 (전통주 만들기,맛보기)
                                        </p>
                                        <p>date: <span>모든날짜 예약가능합니다!</span> </p>
                                        <p>Cost: <span>￦10,000 (성인1명기준)</span> </p>
                                        <p>Address: <span>전주시 완산구 한지길 74</span> </p>
                                        <div class="rating">
                                            <span>Rating:</span>
                                            <div class="place_review">
                                                <a href="#"><i class="fas fa-star"></i></a>
                                                <a href="#"><i class="fas fa-star"></i></a>
                                                <a href="#"><i class="fas fa-star"></i></a>
                                                <a href="#"><i class="fas fa-star"></i></a>
                                            </div>
                                        </div>
                                        <a href="http://hanok.jeonju.go.kr/contents/exp6" class="btn_1">reservation now!</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--top place end-->

    <!--::industries start::-->
<!--     <section class="hotel_list section_padding">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-6">
                    <div class="section_tittle text-center">
                        <h2>Top Hotel & Restaurants</h2>
                        <p>Waters make fish every without firmament saw had. Morning air subdue. Our. Air very one. Whales grass is fish whales winged.</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-sm-6">
                    <div class="single_ihotel_list">
                        <img src="img/ind/industries_1.png" alt="">
                        <div class="hover_text">
                            <div class="hotel_social_icon">
                                <ul>
                                    <li><a href="#"><i class="ti-facebook"></i></a></li>
                                    <li><a href="#"><i class="ti-twitter-alt"></i></a></li>
                                    <li><a href="#"><i class="ti-linkedin"></i></a></li>
                                </ul>
                            </div>
                            <div class="share_icon">
                                <i class="ti-share"></i>
                            </div>
                        </div>
                        <div class="hotel_text_iner">
                            <h3> <a href="#"> Hotel Polonia</a></h3>
                            <div class="place_review">
                                <a href="#"><i class="fas fa-star"></i></a>
                                <a href="#"><i class="fas fa-star"></i></a>
                                <a href="#"><i class="fas fa-star"></i></a>
                                <a href="#"><i class="fas fa-star"></i></a>
                                <a href="#"><i class="fas fa-star"></i></a>
                                <span>(210 review)</span>
                            </div>
                            <p>London, United Kingdom</p>
                            <h5>From <span>$500</span></h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="single_ihotel_list">
                        <img src="img/ind/industries_2.png" alt="">
                        <div class="hover_text">
                            <div class="hotel_social_icon">
                                <ul>
                                    <li><a href="#"><i class="ti-facebook"></i></a></li>
                                    <li><a href="#"><i class="ti-twitter-alt"></i></a></li>
                                    <li><a href="#"><i class="ti-linkedin"></i></a></li>
                                </ul>
                            </div>
                            <div class="share_icon">
                                <i class="ti-share"></i>
                            </div>
                        </div>
                        <div class="hotel_text_iner">
                            <h3> <a href="#"> Hotel Polonia</a></h3>
                            <div class="place_review">
                                <a href="#"><i class="fas fa-star"></i></a>
                                <a href="#"><i class="fas fa-star"></i></a>
                                <a href="#"><i class="fas fa-star"></i></a>
                                <a href="#"><i class="fas fa-star"></i></a>
                                <a href="#"><i class="fas fa-star"></i></a>
                                <span>(210 review)</span>
                            </div>
                            <p>London, United Kingdom</p>
                            <h5>From <span>$500</span></h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="single_ihotel_list">
                        <img src="img/ind/industries_3.png" alt="">
                        <div class="hover_text">
                            <div class="hover_text">
                                <div class="hotel_social_icon">
                                    <ul>
                                        <li><a href="#"><i class="ti-facebook"></i></a></li>
                                        <li><a href="#"><i class="ti-twitter-alt"></i></a></li>
                                        <li><a href="#"><i class="ti-linkedin"></i></a></li>
                                    </ul>
                                </div>
                                <div class="share_icon">
                                    <i class="ti-share"></i>
                                </div>
                            </div>
                        </div>
                        <div class="hotel_text_iner">
                            <h3> <a href="#"> Hotel Polonia</a></h3>
                            <div class="place_review">
                                <a href="#"><i class="fas fa-star"></i></a>
                                <a href="#"><i class="fas fa-star"></i></a>
                                <a href="#"><i class="fas fa-star"></i></a>
                                <a href="#"><i class="fas fa-star"></i></a>
                                <a href="#"><i class="fas fa-star"></i></a>
                                <span>(210 review)</span>
                            </div>
                            <p>London, United Kingdom</p>
                            <h5>From <span>$500</span></h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section> -->
    <!--::industries end::-->

    <!--top place start-->
    <section class="client_review section_padding">
        <div class="container">
            <div class="row ">
                <div class="col-xl-6">
                    <div class="section_tittle">
                        <h2>What they said</h2>
                    </div>
                </div>
            </div>
            
        <div class="row">
            <div class="col-lg-12">
                <div class="client_review_slider owl-carousel">
              
            		 <!-- 리뷰 슬라이더 -->
                    <c:forEach var="dto" items="${list}" end="5">
                        <div class="single_review_slider">
                            <div class="place_review">
                            </div>
                            <p>${dto.contents}</p>
                            <h5>${dto.memberId}</h5>
                        </div>
                    </c:forEach>    
                        
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--top place end-->

    <!--::industries start::-->
    <section class="best_services section_padding">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-6">
                    <div class="section_tittle text-center">
                        <h2>We offered best services</h2>
                        <p>편행은 출발지와 예산만 입력하면 자신에게 최적화된 여행지를 추천드립니다.</p>
                        <p>1박2일, 자신만의 여행을 마음껏 즐겨보세요!</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3 col-sm-6">
                    <div class="single_ihotel_list">
                        <img src="img/Accommodation.jpg" alt="">
                        <h3> <a href="#"> Accommodation</a></h3>
                        <p>숙소 추천 서비스</p>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single_ihotel_list">
                        <img src="img/services_1.png" alt="">
                        <h3> <a href="#"> Airport</a></h3>
                        <p>항공 추천 서비스</p>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single_ihotel_list">
                        <img src="img/train.jpg" alt="">
                        <h3> <a href="#"> Train</a></h3>
                        <p>기차 추천 서비스</p>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single_ihotel_list">
                        <img src="img/bus.jpg" alt="">
                        <h3> <a href="#"> Bus</a></h3>
                        <p>고속버스 추천 서비스</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--::industries end::-->


	<jsp:include page="inc/footerMenu.jsp" />

</body>

</html>