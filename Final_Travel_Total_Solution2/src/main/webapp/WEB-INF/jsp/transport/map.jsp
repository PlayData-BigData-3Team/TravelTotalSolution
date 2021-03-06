<%@page import="ch.qos.logback.core.recovery.ResilientSyslogOutputStream"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/taglibMenu.jsp" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>recommend</title>
<link type="text/css" rel="stylesheet" href="/css/community.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<!-- <link type="text/css" rel="stylesheet" href="/css/table.css"> -->

<style>

/* table, tr{
	border: solid 1px gray; 
	margin:auto;
	padding:50px;
	border-radius: 12px;
  }
table.randomList th{
	padding:5px;
	border: solid 1px gray;
	border-radius: 12px;
}

table.randomList{
	border: solid 1px white;
}

img {
	width: 150px;
	height: 200px;
} */

.empty{
	text-align: center;
}

.wrap-table100 {
  width: 1170px;
}

table {
  border-spacing: 1;
  border-collapse: collapse;
  background: white;
  border-radius: 10px;
  overflow: hidden;
  width: 100%;
  margin: 0 auto;
  position: relative;
}
table * {
  position: relative;
}
table td, table th {
  padding-left: 8px;
}
table thead tr {
  height: 40px;
  background: #36304a;
}
table tbody tr {
  height: 33px;
}
table tbody tr:last-child {
  border: 0;
}
table td, table th {
  text-align: left;
}
table td.l, table th.l {
  text-align: right;
}
table td.c, table th.c {
  text-align: center;
}
table td.r, table th.r {
  text-align: center;
}


/* .table100-head th{
  font-family: OpenSans-Regular;
  font-size: 18px;
  color: #fff;
  line-height: 1.2;
  font-weight: unset;
  height: 60px;
  background: #36304a;
} */

.table100-head th{
	color: #36304a;
	font-size: 17px;
}

tbody tr:nth-child(even) {
  background-color: #f5f5f5;
}

tbody tr {
  font-family: OpenSans-Regular;
  font-size: 15px;
  color: #808080;
  line-height: 1.2;
  font-weight: unset;
}

tbody tr:hover {
  color: #555555;
  background-color: #f5f5f5;
  cursor: pointer;
}

.column1 {
  width: 260px;
  padding-left: 40px;
}

.column2 {
  width: 160px;
}

.column3 {
  width: 245px;
}

.column4 {
  width: 110px;
  text-align: right;
}

.column5 {
  width: 170px;
  text-align: right;
}

.column6 {
  width: 222px;
  text-align: right;
  padding-right: 62px;
}




@media screen and (max-width: 992px) {
  table {
    display: block;
  }
  table > *, table tr, table td, table th {
    display: block;
  }
  table thead {
    display: none;
  }
  table tbody tr {
    height: auto;
    padding: 37px 0;
  }
  table tbody tr td {
    padding-left: 40% !important;
    margin-bottom: 24px;
  }
  table tbody tr td:last-child {
    margin-bottom: 0;
  }
  table tbody tr td:before {
    font-family: OpenSans-Regular;
    font-size: 14px;
    color: #999999;
    line-height: 1.2;
    font-weight: unset;
    position: absolute;
    width: 40%;
    left: 30px;
    top: 0;
  }
  table tbody tr td:nth-child(1):before {
    content: "Date";
  }
  table tbody tr td:nth-child(2):before {
    content: "Order ID";
  }
  table tbody tr td:nth-child(3):before {
    content: "Name";
  }
  table tbody tr td:nth-child(4):before {
    content: "Price";
  }
  table tbody tr td:nth-child(5):before {
    content: "Quantity";
  }
  table tbody tr td:nth-child(6):before {
    content: "Total";
  }

  .column4,
  .column5,
  .column6 {
    text-align: left;
  }

  .column4,
  .column5,
  .column6,
  .column1,
  .column2,
  .column3 {
    width: 100%;
  }

  tbody tr {
    font-size: 14px;
  }
}

@media (max-width: 576px) {
  .container-table100 {
    padding-left: 15px;
    padding-right: 15px;
  }





input#submit{
background:url(/resource/img/marker.png);
background-repeat: no-repeat;
}

body
{
  background-color: #f5f5f5;
}

</style>

</head>
<body style="background-color: #f5f5f5;">

<jsp:include page="../inc/css_fonts.jsp" />
<jsp:include page="../inc/mainMenu.jsp" />



<table style="background-color: #f5f5f5;">	
	<tr>
		<th>
				<div style="margin-left:250px; margin-top:50px; position:relative; width:500px; height:780px; background-color:#f5f5f5">
					<div style="position:absolute; text-align: center; z-index: 1;">
						<img id="map" src="/resource/img/map.png" style="width:500px;" class="map1">
						 								
							<div style="position:absolute; top: 110px; left: 130px;  z-index: 2;"><!-- top: 200px; left: 670px --> 
								<form action="/transport/multipleCondition" method="get">
									<input type="hidden" name="nc_select" value="${param.nc_select}">
									<input type="hidden" name="keyword" value="??????">
									<input type="hidden" name="amount" value="${param.amount}">
									<input type="image" src="/resource/img/marker.png" style="width:50px;" id="submit" name="nono" value="??????">
					 			</form>
							</div>
							
							<div style="position:absolute; top: 360px; left: 150px; z-index: 3;">
								<form action="/transport/multipleCondition" method="get">
									<input type="hidden" name="nc_select" value="${param.nc_select}">
									<input type="hidden" name="keyword" value="??????">
									<input type="hidden" name="amount" value="${param.amount}">
									<input type="image" src="/resource/img/marker.png" style="width:50px;" id="submit" name="nono" value="??????">
					 			</form>
							</div>
							
							<div style="position:absolute; top: 80px; left: 50px; z-index: 4;">
								<form action="/transport/multipleCondition" method="get">
									<input type="hidden" name="nc_select" value="${param.nc_select}">
									<input type="hidden" name="keyword" value="??????">
									<input type="hidden" name="amount" value="${param.amount}">
									<input type="image" src="/resource/img/marker.png" style="width:50px;" id="submit" name="nono" value="??????">
					 			</form>
							</div>
							
							<div style="position:absolute; top: 340px; left: 310px; z-index: 5;">
								<form action="/transport/multipleCondition" method="get">
									<input type="hidden" name="nc_select" value="${param.nc_select}">
									<input type="hidden" name="keyword" value="??????">
									<input type="hidden" name="amount" value="${param.amount}">
									<input type="image" src="/resource/img/marker.png" style="width:50px;" id="submit" name="nono" value="??????">
					 			</form>
							</div>
							
							<div style="position:absolute; top: 380px; left: 380px; z-index: 6;">
								<form action="/transport/multipleCondition" method="get">
									<input type="hidden" name="nc_select" value="${param.nc_select}">
									<input type="hidden" name="keyword" value="??????">
									<input type="hidden" name="amount" value="${param.amount}">
									<input type="image" src="/resource/img/marker.png" style="width:50px;" id="submit" name="nono" value="??????">
					 			</form>
							</div>
							
							<div style="position:absolute; top: 430px; left: 360px; z-index: 7;">
								<form action="/transport/multipleCondition" method="get">
									<input type="hidden" name="nc_select" value="${param.nc_select}">
									<input type="hidden" name="keyword" value="??????">
									<input type="hidden" name="amount" value="${param.amount}">
									<input type="image" src="/resource/img/marker.png" style="width:50px;" id="submit" name="nono" value="??????">
					 			</form>
							</div>
							
							<div style="position:absolute; top: 280px; left: 170px; z-index: 8;">
								<form action="/transport/multipleCondition" method="get">
									<input type="hidden" name="nc_select" value="${param.nc_select}">
									<input type="hidden" name="keyword" value="??????">
									<input type="hidden" name="amount" value="${param.amount}">
									<input type="image" src="/resource/img/marker.png" style="width:50px;" id="submit" name="nono" value="??????">
					 			</form>
							</div>
							
							<div style="position:absolute; top: 435px; left: 110px; z-index: 9;">
								<form action="/transport/multipleCondition" method="get">
									<input type="hidden" name="nc_select" value="${param.nc_select}">
									<input type="hidden" name="keyword" value="??????">
									<input type="hidden" name="amount" value="${param.amount}">
									<input type="image" src="/resource/img/marker.png" style="width:50px;" id="submit" name="nono" value="??????">
					 			</form>
							</div>
							
							<div style="position:absolute; top: 80px; left: 335px; z-index: 10;">
								<form action="/transport/multipleCondition" method="get">
									<input type="hidden" name="nc_select" value="${param.nc_select}">
									<input type="hidden" name="keyword" value="??????">
									<input type="hidden" name="amount" value="${param.amount}">
									<input type="image" src="/resource/img/marker.png" style="width:50px;" id="submit" name="nono" value="??????">
					 			</form>
							</div>
							
						<%-- 	<div style="position:absolute; top: 550px; left: 270px; z-index: 11;">
								<form action="/transport/multipleCondition" method="get">
									<input type="hidden" name="nc_select" value="${param.nc_select}">
									<input type="hidden" name="keyword" value="??????">
									<input type="hidden" name="amount" value="${param.amount}">
									<input type="image" src="/resource/img/marker.png" style="width:50px;" id="submit" name="nono" value="??????">
					 			</form>
							</div> --%>
							
							
							<div style="position:absolute; top: 135px; left: 155px; z-index: 12;">
								<form action="/transport/multipleCondition" method="get">
									<input type="hidden" name="nc_select" value="${param.nc_select}">
									<input type="hidden" name="keyword" value="??????">
									<input type="hidden" name="amount" value="${param.amount}">
									<input type="image" src="/resource/img/marker.png" style="width:50px;" id="submit" name="nono" value="??????">
					 			</form>
							</div>
							
							
							<div style="position:absolute; top: 630px; left: 80px; z-index: 13;">
								<form action="/transport/multipleCondition" method="get">
									<input type="hidden" name="nc_select" value="${param.nc_select}">
									<input type="hidden" name="keyword" value="??????">
									<input type="hidden" name="amount" value="${param.amount}">
									<input type="image" src="/resource/img/marker.png" style="width:50px;" id="submit" name="nono" value="??????">
					 			</form>
							</div>
						
						
						
						
					</div>
				</div>
		</th>
		<!-- ????????? ??? -->
		<th style="padding-right:100px;">
			<table  class = "container-table100">
				<c:if test="${keyword != param.keyword}">
				 <table>
							<!-- <tr class="table100-head">
								<th>?????????</th>
								<th>????????????</th>
								<th>???????????????</th>
								<th>??????????????????</th>	
								<th>????????????</th>
								<th>??????</th>
								<th>????????????</th>
								<th>???????????????</th>
								<th>??????????????????</th>
								<th>??? ??????</th>
							</tr> -->
							
							<!-- ??????????????? ???????????? ????????? ?????? ?????? ????????? ?????? -->
							
							<c:if test="${not empty message1}">
								<tr  style=" font-family: OpenSans-Regular;
											  font-size: 18px;
											  color: #fff;
											  line-height: 1.2;
											  font-weight: unset;
											  height: 40px;
											  background: #36304a;"
								>
									<th class="empty" colspan=3 style="text-align:left;">??????</th>	
								</tr>
								<tr>
									<th class="empty" colspan=3>${message1}</th>
								</tr>
							</c:if>
							
							<c:forEach var="dto" items="${busList}">
							
								<tr  style=" font-family: OpenSans-Regular;
											  font-size: 18px;
											  color: #fff;
											  line-height: 1.2;
											  font-weight: unset;
											  height: 40px;
											  background: #36304a;"
								>
									<th colspan="3">??????[${dto.region}]</th>
									
									
								</tr>
								
								<tr>
									<th>${dto.dep}</th>
									<th>${dto.hotel}</th>
									<th>${dto.dep2}</th>
								</tr>
								
								<tr>
									<th><img style="width:120px; display: block; margin: 0px auto;" src="/resource/img/bus.png"></th>
									<th><a  href="${dto.hotelLink}"><img style="width:120px; display: block; margin: 0px auto; border-radius:20%;" src="${dto.imgLink}"></a></th>
									<th><img style="width:120px; display: block; margin: 0px auto" src="/resource/img/bus.png"></th>
								</tr>
								
								<tr>
									<th style="text-align:right;">${dto.depCharge}</th>
									<th style="text-align:right;">${dto.hotelprice}</th>
									<th style="text-align:right;">${dto.depCharge2}</th>
								</tr>
								
								<tr>
									<th style="text-align:right; " colspan="3">Total Price  <b style="color:#FE5C24;">${dto.totalprice}</b>
									<button type="button" id="check_module1" class="button button-contactForm btn_1">Payment</button>
																	
										<script>
										
										var totalPrice = '${dto.totalprice}' ; //??????????????????
										var Price1 ;  
										Price1 = totalPrice.replace(",",""); 
										Price1 = Price1.replace("???",""); //?????????
										Price1 = parseInt(Price1);    //????????? ????????? ????????? ??????
								
										
										$("#check_module1").click(function () {
											var IMP = window.IMP; 
											IMP.init('imp59413408');
											// 'iamport' ?????? ???????????? "????????? ????????????"??? ??????
											// i'mport ????????? ????????? -> ????????? -> ?????????????????????
											IMP.request_pay({
											pg: 'inicis', 
										
											pay_method: 'card',
										
											merchant_uid: 'merchant_' + new Date().getTime(),
									
											name: '?????? ??????',
											amount: Price1,
											buyer_email: 'iamport@test.com',	
											buyer_name: '?????????',
											buyer_tel: '010-1234-5678',
											buyer_addr: '??????????????? ????????? ?????????',
											buyer_postcode: '123-456',
											m_redirect_url: 'https://www.yourdomain.com/payments/complete'
											}, function (rsp) {
											console.log(rsp);
											if (rsp.success) {
											var msg = '????????? ?????????????????????.';
											msg += '??????ID : ' + rsp.imp_uid;
											msg += '?????? ??????ID : ' + rsp.merchant_uid;
											msg += '?????? ?????? : ' + rsp.paid_amount;
											msg += '?????? ???????????? : ' + rsp.apply_num;
											} else {
											var msg = '????????? ?????????????????????.';
											msg += '???????????? : ' + rsp.error_msg;
											}
											alert(msg);
											});
											});
										</script>
									</th>
								</tr>
							</c:forEach>
								
				</table>
				<table>
				
							
							<c:if test="${not empty message2}">
								<tr  style=" font-family: OpenSans-Regular;
											  font-size: 18px;
											  color: #fff;
											  line-height: 1.2;
											  font-weight: unset;
											  height: 40px;
											  background: #36304a;"
								>
									<th class="empty" colspan=3 style="text-align:left;">??????</th>	
								</tr>
								<tr>
									<th class="empty" colspan=3>${message2}</th>
								</tr>
							</c:if>
							
							<c:forEach var="dto2" items="${trainList}">
								<tr  style=" font-family: OpenSans-Regular;
											  font-size: 18px;
											  color: #fff;
											  line-height: 1.2;
											  font-weight: unset;
											  height: 40px;
											  background: #36304a;"
								>
									<th colspan="3">??????[${dto2.region}]</th>
									
									
								</tr>
								
								<tr>
									<th>${dto2.dep}</th>
									<th>${dto2.hotel}</th>
									<th>${dto2.dep2}</th>
								</tr>
								
								<tr>
									<th><img style="width:110px; display: block; margin: 0px auto;" src="/resource/img/train.png"></th>
									<th><a  href="${dto2.hotelLink}"><img style="width:120px;  display: block; margin: 0px auto; border-radius:20%;" src="${dto2.imgLink}"></a></th>
									<th><img style="width:110px; display: block; margin: 0px auto" src="/resource/img/train.png"></th>
								</tr>
								
								<tr>
									<th style="text-align:right;">${dto2.depCharge}</th>
									<th style="text-align:right;">${dto2.hotelprice}</th>
									<th style="text-align:right;">${dto2.depCharge2}</th>
								</tr>
								
								<tr>
									<th style="text-align:right; " colspan="3">Total Price  <b style="color:#FE5C24;">${dto2.totalprice}</b> 
									<%-- <form action="/recommand/payment" method="post">
										<input type="hidden" name="depCharge" value="${dto2.depCharge}">
										<input type="hidden" name="hotelPrice" value="${dto2.hotelprice}">
										<input type="hidden" name="depCharge2" value="${dto2.depCharge2}">
										<input type="hidden" name="totalPrice" value="${dto2.totalprice}">
										<input type="hidden" name="hotelName" value="${dto2.hotel}">
										<input type="hidden" name="score" value="${dto2.hotelScore}">
										<input type="hidden" name="img" value="${dto2.imgLink}">
										<input type="hidden" name="depName" value="${dto2.dep}">
										<input type="hidden" name="depName2" value="${dto2.dep2}">
										<input type="hidden" name="region" value="${dto2.region}">
										<input style=" width:100px; padding-left:5px; padding-right:5px;" type="submit" value="Payment">
									</form> --%>
										<button type="button" id="check_module2" class="button button-contactForm btn_1">Payment</button>
									
									
									
										<script>
										
										var totalPrice = '${dto2.totalprice}' ; //??????????????????
										var Price2 ;  
										Price2 = totalPrice.replace(",",""); 
										Price2 = Price2.replace("???",""); //?????????
										Price2 = parseInt(Price2);    //????????? ????????? ????????? ??????
								
										
										$("#check_module2").click(function () {
											var IMP = window.IMP; 
											IMP.init('imp59413408');
											// 'iamport' ?????? ???????????? "????????? ????????????"??? ??????
											// i'mport ????????? ????????? -> ????????? -> ?????????????????????
											IMP.request_pay({
											pg: 'inicis', 
										
											pay_method: 'card',
										
											merchant_uid: 'merchant_' + new Date().getTime(),
									
											name: '?????? ??????',
											amount: Price2,
											buyer_email: 'iamport@test.com',	
											buyer_name: '?????????',
											buyer_tel: '010-1234-5678',
											buyer_addr: '??????????????? ????????? ?????????',
											buyer_postcode: '123-456',
											m_redirect_url: 'https://www.yourdomain.com/payments/complete'
											}, function (rsp) {
											console.log(rsp);
											if (rsp.success) {
											var msg = '????????? ?????????????????????.';
											msg += '??????ID : ' + rsp.imp_uid;
											msg += '?????? ??????ID : ' + rsp.merchant_uid;
											msg += '?????? ?????? : ' + rsp.paid_amount;
											msg += '?????? ???????????? : ' + rsp.apply_num;
											} else {
											var msg = '????????? ?????????????????????.';
											msg += '???????????? : ' + rsp.error_msg;
											}
											alert(msg);
											});
											});
									
									
											
										</script>
									</th>
									
								</tr>
							</c:forEach>
				</table>
				<table>				
							
							<c:if test="${not empty message3}">
								<tr  style=" font-family: OpenSans-Regular;
											  font-size: 18px;
											  color: #fff;
											  line-height: 1.2;
											  font-weight: unset;
											  height: 40px;
											  background: #36304a;"
								>
									<th class="empty" colspan=3 style="text-align:left;">??????</th>	
								</tr>
								<tr>
									<th class="empty" colspan=3 >${message3}</th>
								</tr>
							</c:if>
							
							<c:forEach var="dto3" items="${airList}">
								<tr  style=" font-family: OpenSans-Regular;
											  font-size: 18px;
											  color: #fff;
											  line-height: 1.2;
											  font-weight: unset;
											  height: 40px;
											  background: #36304a;"
								>
									<th colspan="3">??????[${dto3.region}]</th>

									
								</tr>
								
								<tr>
									<th>${dto3.dep2}</th>
									<th>${dto3.hotel}</th>
									<th>${dto3.dep3}</th>
								</tr>
								
								<tr>
									<th><img style="width:120px; display: block; margin: 0px auto;" src="/resource/img/airplane.png"></th>
									<th><a href="${dto3.hotelLink}"><img style="width:120px; display: block; margin: 0px auto; border-radius:20%;" src="${dto3.imgLink}"></a></th>
									<th><img style="width:120px; display: block; margin: 0px auto;" src="/resource/img/airplane.png"></th>
								</tr>
								
								<tr>
									<th style="text-align:right;">${dto3.depCharge}</th>
									<th style="text-align:right;">${dto3.hotelprice}</th>
									<th style="text-align:right;">${dto3.depCharge2}</th>
								</tr>
								
								<tr>
									<th style="text-align:right; " colspan="3">Total Price  <b style="color:#FE5C24;">${dto3.totalprice}</b>
									<button type="button" id="check_module3" class="button button-contactForm btn_1">Payment</button>
																	
										<script>
										
										var totalPrice = '${dto3.totalprice}' ; //??????????????????
										var Price3 ;  
										Price3 = totalPrice.replace(",",""); 
										Price3 = Price3.replace("???",""); //?????????
										Price3 = parseInt(Price3);    //????????? ????????? ????????? ??????
								
										
										$("#check_module3").click(function () {
											var IMP = window.IMP; 
											IMP.init('imp59413408');
											// 'iamport' ?????? ???????????? "????????? ????????????"??? ??????
											// i'mport ????????? ????????? -> ????????? -> ?????????????????????
											IMP.request_pay({
											pg: 'inicis', 
										
											pay_method: 'card',
										
											merchant_uid: 'merchant_' + new Date().getTime(),
									
											name: '?????? ??????',
											amount: Price3,
											buyer_email: 'iamport@test.com',	
											buyer_name: '?????????',
											buyer_tel: '010-1234-5678',
											buyer_addr: '??????????????? ????????? ?????????',
											buyer_postcode: '123-456',
											m_redirect_url: 'https://www.yourdomain.com/payments/complete'
											}, function (rsp) {
											console.log(rsp);
											if (rsp.success) {
											var msg = '????????? ?????????????????????.';
											msg += '??????ID : ' + rsp.imp_uid;
											msg += '?????? ??????ID : ' + rsp.merchant_uid;
											msg += '?????? ?????? : ' + rsp.paid_amount;
											msg += '?????? ???????????? : ' + rsp.apply_num;
											} else {
											var msg = '????????? ?????????????????????.';
											msg += '???????????? : ' + rsp.error_msg;
											}
											alert(msg);
											});
											});
										</script>
									</th>
								</tr>
							</c:forEach>
					</table>
							
				</c:if>	
			</table>

		
		</th>
	</tr>
</table>



<!-- <div class="writeList">
<input type="button" onclick="location.href='../main'" value="??????" >
<input type="button" onclick="location.href='randomList'" value="????????????" >
</div> -->
<jsp:include page="../inc/footerMenu.jsp" />
</body>
</html>