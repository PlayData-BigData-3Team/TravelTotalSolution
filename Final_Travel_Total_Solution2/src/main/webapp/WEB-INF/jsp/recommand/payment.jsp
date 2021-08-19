<%@page import="java.text.DateFormat"%>
<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<title>결제 페이지</title>

  	<jsp:include page="../inc/css_fonts.jsp" />
  	<jsp:include page="../inc/mainMenu.jsp" />
  	
  	<link rel="stylesheet" href="/css/common_sj.css">

<style type="text/css">


div.pay-text {
	color:black;
}

section.top-bar_sj {
	margin-top: 100px;
	margin-bottom: 100px;
	text-align:center;
	height: 300px;
}

h3.top-title_sj {
	margin-top: 20px;
	margin-left: 100px;
	margin-bottom: 100px;
	font-size: 30px;
	font-weight: bold;
	text-align: left;
}

div.top-bar-icons_sj {
	margin-top: 50px;
}

div.top-icon_sj {
	float:left; 
	width:33%; 
}

img.top-line_sj {
	margin-top: 70x;
	width :1200px; 
	hegiht : 200px;
}

h3.detail_title_sj {
	margin-top: 50px;
	margin-left: 140px;
	font-weight:bold;
	font-size: 18px;
	
}

div.items_sj {
	width : 700px; 
	height : 140px; 
	left : 100px; 
	border: 1px solid #CCCACA; 
	border-radius : 10px; 
	padding: 15px 20px;
	margin: 20px 120px;
	border: 1px solid transparent;
    box-shadow: 0 2px 5px 1px rgb(64 60 67 / 16%);
    z-index:3;
}

h5.item_title_sj {
	font-size:13px;
	font-weight:bold;
}

div.item_img_sj {
	width :220px; 
	hegiht : 130px;
}


img.item_img_sj {
	width :220px; 
	hegiht : 130px;
	float:left;
	border-radius:15px;
	
}

div.item_contents_sj {
	margin-left : 10px; 
	float:left;
	height:130px;
	width:400px;
}

div.item_name_sj {
	margin-left : 30px; 
	margin-top : 10px;
	font-weight:bold;
}


div.item_rate_sj {
	margin-top: 20px;
	margin-left: 60px;
	width: 100px;
	float:left;
}

div.item_dep_time_sj {
	margin-top: 2px;
	margin-left: 60px;
	font-size:10px;
	width: 50px;
	float:left;
	text-align:center;

}

div.item_arr_time_sj {
	margin-top: 0px;
	margin-left: 120px;
	width: 50px;
	float:left;
	text-align:center;

}

div.item_pay_sj {
	margin-left: 430px;
	margin-top: 30px;
	font-size :11px;
}

div.payment_sj {
	text-align:right;
	margin-top:-180px;
	margin-left:1000px;
}

div.total_pay {
	font-size: 28px;
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
    width:112px;
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
    width:112px;
    height:48px;
}

</style>

<link type="text/css" rel="stylesheet" href="/resource/css/common.css">

</head>
<body>
<%

DecimalFormat df = new DecimalFormat("###,###");
String dep = "출발지명";
String arr = "도착지명";

String space = "\n\n\n\n\n\n";

String dep_name = "출발 교통편";
String dep_tns_time_1 = "09:00";
String dep_tns_time_2 = "12:00";
int dep_pay = 10000;	//출발교통비용

String room_name = "숙박지";
String room_grade = "평점";
int room_pay = 20000;	//숙박비용


String arr_name = "도착 교통편";
String arr_tns_time_1 = "16:00";
String arr_tns_time_2 = "20:00";
int arr_pay = 30000;	//도착교통비용

int total_pay =  dep_pay+ room_pay+arr_pay;
%>

<!-- <!-- breadcrumb start
    <section class="breadcrumb breadcrumb_bg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb_iner">
                        <div class="breadcrumb_iner_item text-center">
                            <h2 style="font-size:48px;">결제페이지</h2>
                            <p>결제 페이지 입니다</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
 -->

	<%-- <section class="top-bar_sj">
		<h3 class="top-title_sj"><%=dep%> - <%=arr%> (1박2일)</h3>
		
		<div class="top-bar-icons_sj">
			<div class="top-icon_sj"><img src ="/resource/img/airplain_icon.png"></div>
			<div class="top-icon_sj"><img style="margin-top:70px;" src ="/resource/img/rooms_icon.png"></div>
			<div class="top-icon_sj"><img src ="/resource/img/airplain_icon.png"></div>
			<img class="top-line_sj" src ="/resource/img/line.png"/>
		</div>	
			
		
	</section> --%>
<section class="detail_payment_sj">
	
	<div class="detail_container_sj" style="width: 70%; " >
		<h3 class="detail_title_sj"> 상세 내역 </h3>
		
		<!-- 출발 교통편 -->
		<div class="items_sj">
			<h5 class="item_title_sj">교통</h5>
			
			<div class="item_img_sj">
			<img class="item_img_sj" src ="/resource/img/train.png" style="width:130px; height:90px;">
			</div>
			
			<div class="item_contents_sj" >
				<div class="item_name_sj"><h5 style="font-size:14px; font-weight:bold;"><%=dep_name%></h5></div>
				<div class="item_dep_time_sj" ><h5 style="font-size:30px; font-weight:bold;	line-height:27px;"> ${param.depName}</h5></div>
				<div class="item_dep_time_sj" ><h5 style="font-size:70px; font-weight:bold;	line-height:27px;">&#8594;</h5></div>
				<div class="item_arr_time_sj" ><h5 style="font-size:30px; font-weight:bold;	line-height:27px;">${param.region} </h5></div>
				<div class="item_pay_sj" ><h2 class="item_pay_sj" style="font-size:20px; padding-right:0;">${param.depCharge}</h2></div>
			</div>
		</div>
		
		<!-- 숙박 -->
		<div class="items_sj">
			<h5 class="item_title_sj">숙박</h5>
			
			<div class="item_img_sj">
				<img class="item_img_sj" src ="${param.img}" style="width:130px; height:90px;">
			</div>
			
			<div class="item_contents_sj" >
				<div class="item_name_sj"><h5 style="font-size:14px; font-weight:bold;">${param.hotelName}</h5></div>
				<div class="item_rate_sj"><h5 style="font-size:12px;">평점 ${param.score}</h5></div>
				<div class="item_pay_sj" ><h2 class="item_pay_sj" style="font-size:20px;">${param.hotelPrice}</h2></div>
			</div>
		</div>
		
		<!-- 도착 교통편 -->
		<div class="items_sj">
			<h5 class="item_title_sj">교통</h5>
			
			<div class="item_img_sj">
				<img class="item_img_sj" src ="/resource/img/train.png" style="width:130px; height:90px;">
			</div>
			
			<div class="item_contents_sj" >
				<div class="item_name_sj"><h5 style="font-size:14px; font-weight:bold;"><%=arr_name %></h5></div>
				<div class="item_dep_time_sj" ><h5 style="font-size:12px;">${param.depName2}</h5></div>
				<div class="item_arr_time_sj"><h5 style="font-size:12px;">도착 <br> </h5></div>
				<div class="item_pay_sj" ><h2 class="item_pay_sj" style="font-size:20px;">${param.depCharge2}</h2></div>
			</div>
		</div>
	</div>
	
	<!-- 결제 하단 -->
	<div class="payment_sj" style="width:20%;">
		<h2 style="font-size:28px;">총 결제금액</h2>
		<h2 style="font-size:28px;">${param.totalPrice}</h2>
		<!-- <button type="button" class="button_list_sj" onclick="location.href='/member/myPage'" 
		id="recommend" type="button">추천 정보 저장</button> -->
		<button type="button" id="check_module" class="button button-contactForm btn_1" style="margin-top:20px;">결제하기</button>
	</div>
	
	
	
		<script>
		
		var totalPrice = '${param.totalPrice}' ; //입력받은금액
		var Price ;  
		Price = totalPrice.replace(",",""); 
		Price = Price.replace("￦",""); //원표시
		Price = parseInt(Price);    //문자를 정수형 숫자로 변환

		
		$("#check_module").click(function () {
			var IMP = window.IMP; 
			IMP.init('imp59413408');
			// 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
			// i'mport 관리자 페이지 -> 내정보 -> 가맹점식별코드
			IMP.request_pay({
			pg: 'inicis', 
		
			pay_method: 'card',
		
			merchant_uid: 'merchant_' + new Date().getTime(),
	
			name: '편행 결제',
			amount: Price,
			buyer_email: 'iamport@test.com',	
			buyer_name: '홍길동',
			buyer_tel: '010-1234-5678',
			buyer_addr: '서울특별시 서초구 서초동',
			buyer_postcode: '123-456',
			m_redirect_url: 'https://www.yourdomain.com/payments/complete'
			}, function (rsp) {
			console.log(rsp);
			if (rsp.success) {
			var msg = '결제가 완료되었습니다.';
			msg += '고유ID : ' + rsp.imp_uid;
			msg += '상점 거래ID : ' + rsp.merchant_uid;
			msg += '결제 금액 : ' + rsp.paid_amount;
			msg += '카드 승인번호 : ' + rsp.apply_num;
			} else {
			var msg = '결제에 실패하였습니다.';
			msg += '에러내용 : ' + rsp.error_msg;
			}
			alert(msg);
			});
			});
	
	
			
		</script>
	
	</section>
	
</body>
	
	<br><br><br><br><br><br><br><br>
	<jsp:include page="../inc/footerMenu.jsp" />
	
</html>



