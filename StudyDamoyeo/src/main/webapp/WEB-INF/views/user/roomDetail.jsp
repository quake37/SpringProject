
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600">
<!-- https://fonts.google.com/specimen/Open+Sans -->
<link rel="stylesheet" href="/resources/user/css/fontawesome.min.css">
<link rel="stylesheet" href="/resources/com/dist/css/star.css">
<!-- https://fontawesome.com/ -->
<link rel="stylesheet"
	href="/resources/user/jquery-ui-datepicker/jquery-ui.min.css"
	type="text/css" />
<!-- http://api.jqueryui.com/datepicker/ -->
<link rel="stylesheet" href="/resources/user/css/bootstrap.min.css">
<!-- https://getbootstrap.com/ -->
<link rel="stylesheet" href="/resources/user/css/tooplate.css">
<script type="text/javascript"
	src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=cpw9RMOfkmb0qIa7Vz23&submodules=geocoder"></script>
<title>StudyDamoyeo</title>
</head>
<body class="bg01">
	<div class="container">

		<%@include file="include/header.jsp"%>

		<!-- row -->
		<div class="row tm-content-row tm-mt-big">


			<div class="tm-col tm-col-big-12">
				<div class="bg-white tm-block">
					<div class="row">
						<div class="col-md-12 col-sm-12">
							<h2 class="tm-block-title d-inline-block">스터디카페 사진</h2>
							<p>${room.presentation1 }</p>
						</div>
					</div>

					<div id="carouselExampleIndicators" class="carousel slide"
						data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#carouselExampleIndicators" data-slide-to="0"
								class="active"></li>
							<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
							<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
						</ol>
						<div class="carousel-inner">
							<div class="carousel-item active">
								<c:if test="${room.imgname1 == null }">
									<img class="d-block w-100"
										src="/resources/com/dist/img/user.svg" alt="First slide">
								</c:if>
								<c:if test="${room.imgname1 != null }">
									<img class="d-block w-100"
										src="${pageContext.request.contextPath}/resources/upload/${room.imgname1 }"
										alt="First slide" style="height: 25px;">
								</c:if>
							</div>
							<div class="carousel-item">
								<c:if test="${room.imgname2 == null }">
									<img class="d-block w-100"
										src="/resources/com/dist/img/user.svg" alt="Second slide">
								</c:if>
								<c:if test="${room.imgname2 != null }">
									<img class="d-block w-100"
										src="${pageContext.request.contextPath}/resources/upload/${room.imgname2 }"
										alt="Second slide" style="height: 25px;">
								</c:if>
							</div>
							<div class="carousel-item">
								<c:if test="${room.imgname3 == null }">
									<img class="d-block w-100"
										src="/resources/com/dist/img/user.svg" alt="Third slide">
								</c:if>
								<c:if test="${room.imgname3 != null }">
									<img class="d-block w-100"
										src="${pageContext.request.contextPath}/resources/upload/${room.imgname3 }"
										alt="Third slide" style="height: 25px;">
								</c:if>

							</div>
						</div>
						<a class="carousel-control-prev" href="#carouselExampleIndicators"
							role="button" data-slide="prev"> <span
							class="carousel-control-prev-icon" aria-hidden="true"></span> <span
							class="sr-only">Previous</span>
						</a> <a class="carousel-control-next"
							href="#carouselExampleIndicators" role="button" data-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="sr-only">Next</span>
						</a>
					</div>



				</div>
			</div>


			<div class="tm-col tm-col-big-12">
				<div class="bg-white tm-block">
					<div class="row">
						<div class="col-md-8 col-sm-12">
							<h2 class="tm-block-title d-inline-block">기타 </h2>
							<p>${room.presentation2 }</p>
						</div>

					</div>
					<div id="carouselExampleIndicators2" class="carousel slide" data-ride="carousel">
                  <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators2" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators2" data-slide-to="1"></li>
                  </ol>
                  <div class="carousel-inner">
                    <div class="carousel-item active">
                      <c:if test="${room.imgname4 == null }">
							<img class="d-block w-100"
								src="/resources/com/dist/img/user.svg"
								alt="First slide">
						</c:if>
						<c:if test="${room.imgname4 != null }">
							<img class="d-block w-100"
								src="${pageContext.request.contextPath}/resources/upload/${room.imgname4 }"
								alt="First slide" style="height: 25px;">
						</c:if>

                    </div>
                    <div class="carousel-item">
                       <c:if test="${room.imgname5 == null }">
							<img class="d-block w-100"
								src="/resources/com/dist/img/user.svg"
								alt="Second slide">
						</c:if>
						<c:if test="${room.imgname5 != null }">
							<img class="d-block w-100"
								src="${pageContext.request.contextPath}/resources/upload/${room.imgname5 }"
								alt="Second slide" style="height: 25px;">
						</c:if>

                    </div>
                  </div>
                  <a class="carousel-control-prev" href="#carouselExampleIndicators2" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                  </a>
                  <a class="carousel-control-next" href="#carouselExampleIndicators2" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                  </a>
                </div>

				</div>
			</div>

			<div class="tm-col tm-col-big-12">
				<div class="bg-white tm-block">
					<div class="row">
						<div class="col-md-8 col-sm-12">
							<h2 class="tm-block-title d-inline-block">${room.roomname }</h2>
							<p>${room.presentation3 }</p>
						</div>
						<div class="col-md-4 col-sm-12 text-right">
							<p>${room.location2}</p>
							<div id="map" style="width: 100%; height: 400px;"></div>

						</div>
				<a href="#" class="button alt" data-toggle="modal"
									data-target="#ReservationRoom"><button class="btn btn-primary" type="button">예약신청하기</button></a>
					</div>

				</div>
			</div>


		</div>
		<%@include file="../modal/ReservationRoom.jsp"%>
		<%@include file="include/footer.jsp"%>
	</div>
	

	<script src="/resources/user/js/jquery-3.3.1.min.js"></script>
	<!-- https://jquery.com/download/ -->
	<script src="/resources/user/jquery-ui-datepicker/jquery-ui.min.js"></script>
	<!-- https://jqueryui.com/download/ -->
	<script src="/resources/user/js/bootstrap.min.js"></script>
	<!-- https://getbootstrap.com/ -->
	<script>
		$('#4').addClass('active');

		var mapOptions = {
			center : new naver.maps.LatLng(37.3595704, 127.105399),
			zoom : 10,
			minZoom : 1, //지도의 최소 줌 레벨
			zoomControl : true, //줌 컨트롤의 표시 여부
			zoomControlOptions : {
				position : naver.maps.Position.LEFT_BOTTOM
			}
		};

		var map = new naver.maps.Map('map', mapOptions);
		var myaddress = '${room.location2}';// 도로명 주소나 지번 주소만 가능 (건물명 불가!!!!)
		naver.maps.Service
				.geocode(
						{
							address : myaddress
						},
						function(status, response) {
							if (status !== naver.maps.Service.Status.OK) {
								return alert(myaddress
										+ '의 검색 결과가 없거나 기타 네트워크 에러');
							}
							var result = response.result;
							// 검색 결과 갯수: result.total
							// 첫번째 결과 결과 주소: result.items[0].address
							// 첫번째 검색 결과 좌표: result.items[0].point.y, result.items[0].point.x
							var myaddr = new naver.maps.Point(
									result.items[0].point.x,
									result.items[0].point.y);
							map.setCenter(myaddr); // 검색된 좌표로 지도 이동
							// 마커 표시
							var marker = new naver.maps.Marker({
								position : myaddr,
								map : map
							});
							// 마커 클릭 이벤트 처리
							naver.maps.Event.addListener(marker, "click",
									function(e) {
										if (infowindow.getMap()) {
											infowindow.close();
										} else {
											infowindow.open(map, marker);
										}
									});
							// 마크 클릭시 인포윈도우 오픈
							var infowindow = new naver.maps.InfoWindow(
									{
										content : '<h4> [네이버 개발자센터]</h4><a href="https://developers.naver.com" target="_blank"><img src="https://developers.naver.com/inc/devcenter/images/nd_img.png"></a>'
									});
						});
	
		
		
		$('.star').each(function(){
			var grade = $(this).text();
			grade = Number(grade);
			var style ='';
			if(grade==1){
				style='style="width:30px;z-index: 5;"';
			}else if(grade==2){
				style='style="width:60px;z-index: 4;"';
			}
			else if(grade==3){
				style='style="width:90px;z-index: 3;"';
			}
			else if(grade==4){
				style='style="width:120px;z-index: 2;"';
			}
			else if(grade==5){
				style='style="width:150px;z-index: 1;"';
			}
			
			var star = '<span class="star-input">'
			+'<span class="input">'
			+'<input type="radio" name="star-input">'
			+'<label '+style+'></label>'
			+'</span>'
			+'<output for="star-input"><b>'+(grade)+'</b>점</output>'					
			+'</span>';
			
			
			$(this).html(star);
			
		});
		
		
		</script>
</body>
</html>