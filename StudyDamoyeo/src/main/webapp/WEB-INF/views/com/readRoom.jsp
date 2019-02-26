<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta id="_csrf" name="_csrf" content="${_csrf.token}" />
<!-- default header name is X-CSRF-TOKEN -->
<meta id="_csrf_header" name="_csrf_header"
	content="${_csrf.headerName}" />


<%@include file="include/header.jsp"%>
 <script src="https://code.jquery.com/jquery-1.9.1.min.js"></script>
 <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=cpw9RMOfkmb0qIa7Vz23&submodules=geocoder"></script>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <div class="btn-group">
            		<h1>내 지점</h1> &nbsp; &nbsp; 
                    <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown">
                      <span class="caret">지점 선택</span>
                      <span class="sr-only">Toggle Dropdown</span>
                    </button>
                    <div class="dropdown-menu" id="dropdown_menu" role="menu">
                     
                    </div>
                  </div>
          </div>
          
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">내 지점</li>
              
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row mb-2">
	
          <!-- left column -->
          <div class="col-md-9">
            <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">${room.roomname}</h3>
              </div>
              <!-- /.card-header -->
               <div class="card-body">
               <div class="post">
                	<br>
                	<span class="username">
                     	<a href="#">스터디룸</a>
                    </span>
                    <p>
                      ${room.presentation1}
                    </p>
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                  <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                  </ol>
                  <div class="carousel-inner">
                    <div class="carousel-item active">
                    	<c:if test="${room.imgname1 == 'null' }">
							<img class="d-block w-100"
								src="/resources/com/dist/img/user.svg"
								alt="First slide">
						</c:if>
						<c:if test="${room.imgname1 != 'null' }">
							<img class="d-block w-100"
								src="${pageContext.request.contextPath}/resources/upload/${room.imgname1 }"
								alt="First slide">
						</c:if>
                    </div>
                    <div class="carousel-item">
                    	<c:if test="${room.imgname2 == 'null' }">
							<img class="d-block w-100"
								src="/resources/com/dist/img/user.svg"
								alt="Second slide">
						</c:if>
						<c:if test="${room.imgname2 != 'null' }">
							<img class="d-block w-100"
								src="${pageContext.request.contextPath}/resources/upload/${room.imgname2 }"
								alt="Second slide">
						</c:if>
                    </div>
                    <div class="carousel-item">
                     	 <c:if test="${room.imgname3 == 'null' }">
							<img class="d-block w-100"
								src="/resources/com/dist/img/user.svg"
								alt="Third slide">
						</c:if>
						<c:if test="${room.imgname3 != 'null' }">
							<img class="d-block w-100"
								src="${pageContext.request.contextPath}/resources/upload/${room.imgname3 }"
								alt="Third slide">
						</c:if>

                    </div>
                  </div>
                  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                  </a>
                  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                  </a>
                </div>
                
                
                </div>
                <div class="post">
					<br>
					<span class="username">
                     	<a href="#">기타시설</a>
                    </span>
                    <p>
                      ${room.presentation2}
                    </p>
                 <div id="carouselExampleIndicators2" class="carousel slide" data-ride="carousel">
                  <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators2" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators2" data-slide-to="1"></li>
                  </ol>
                  <div class="carousel-inner">
                    <div class="carousel-item active">
                      <c:if test="${room.imgname4 == 'null' }">
							<img class="d-block w-100"
								src="/resources/com/dist/img/user.svg"
								alt="First slide">
						</c:if>
						<c:if test="${room.imgname4 != 'null' }">
							<img class="d-block w-100"
								src="${pageContext.request.contextPath}/resources/upload/${room.imgname4 }"
								alt="First slide">
						</c:if>

                    </div>
                    <div class="carousel-item">
                       <c:if test="${room.imgname5 == 'null' }">
							<img class="d-block w-100"
								src="/resources/com/dist/img/user.svg"
								alt="Second slide">
						</c:if>
						<c:if test="${room.imgname5 != 'null' }">
							<img class="d-block w-100"
								src="${pageContext.request.contextPath}/resources/upload/${room.imgname5 }"
								alt="Second slide">
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
                 
                
                  <div class="post">
                  	<div class="row">
	                    <div class="col-6">
	                    
	                      <span class="username">
                     		  <a href="#">부가 설명</a>
                    	  </span>
		                    <p>
		                     ${room.presentation3}
		                    </p>
	                 	</div>
	                 	<div class="col-6">
	                 	
	                 	 <span class="username">
                     		  <a href="#">위치</a>
                    	  </span>
                    	   <p>${room.location2}<br>${room.location3}<br>${room.location4}</p>
		                   <div id="map" style="width:100%;height:400px;"></div>
		                </div>
                   	 </div>
                  </div>
                      <p>
                        <a href="#" class="link-black text-sm mr-2"><i class="fa fa-share mr-1"></i> Share</a>
                        <a href="#" class="link-black text-sm"><i class="fa fa-thumbs-o-up mr-1"></i> Like</a>
                        <span class="float-right">
                          <a href="#" class="link-black text-sm">
                            <i class="fa fa-comments-o mr-1"></i> Comments (5)
                          </a>
                        </span>
                      </p>

                      <input class="form-control form-control-sm" type="text" placeholder="Type a comment">
                
                
                
              </div>
            
            </div>
            <!-- /.card -->     
          </div>
          <!--/.col (right) -->
          
               <!-- left column -->
          <div class="col-md-3">
            <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">설정란</h3>
              </div>
              <!-- /.card-header -->
               <div class="card-body">
             	<button type="button" class="btn btn-block btn-info btn-lg">수정</button>
                <button type="button" class="btn btn-block btn-danger btn-lg">삭제</button>
                
              </div>
            
            </div>
            
             <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">채팅 목록란</h3>
              </div>
              <!-- /.card-header -->
               <div class="card-body">
             	
                
              </div>
            
            </div>
            <!-- /.card -->     
          </div>
          
          <!--/.col (right) -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
 </div>
  <!-- /.content-wrapper -->
<script>
var token = $("meta[name='_csrf']").attr("content");
var header = $("meta[name='_csrf_header']").attr("content");
	$( document ).ready(function() {
		var dropdowns = '';
		$.ajax({
	            async: true,
	            type : 'POST',
	            url : "/room/readRooms",
	            dataType : "json", 
	            beforeSend : function(xhr)
	            {   /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
	            	xhr.setRequestHeader(header, token);
	            	
	            },
	            success : function(data) {
	            	 for (i in data) { 
	            		 dropdowns+='<a class="dropdown-item" href="/room/readRoom?roomname='+data[i]+'">'+data[i]+'</a>'; 
	            	 } 
	            	
	            	$("#dropdown_menu").html(dropdowns);
	            },
	            error : function(request,status,error) {	                
	            	  alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);

	            }
		  });
		
		
		
	});
	
	
	
	
	
	
	var mapOptions = {
  	  center: new naver.maps.LatLng(37.3595704, 127.105399),
      zoom: 10,
      minZoom: 1,	//지도의 최소 줌 레벨
      zoomControl: true,	//줌 컨트롤의 표시 여부
      zoomControlOptions: {
      	position: naver.maps.Position.LEFT_BOTTOM
      }
	};

     var map = new naver.maps.Map('map', mapOptions);
	 var myaddress ='${room.location2}';// 도로명 주소나 지번 주소만 가능 (건물명 불가!!!!)
     naver.maps.Service.geocode({address: myaddress}, function(status, response) {
         if (status !== naver.maps.Service.Status.OK) {
             return alert(myaddress + '의 검색 결과가 없거나 기타 네트워크 에러');
         }
         var result = response.result;
         // 검색 결과 갯수: result.total
         // 첫번째 결과 결과 주소: result.items[0].address
         // 첫번째 검색 결과 좌표: result.items[0].point.y, result.items[0].point.x
         var myaddr = new naver.maps.Point(result.items[0].point.x, result.items[0].point.y);
         map.setCenter(myaddr); // 검색된 좌표로 지도 이동
         // 마커 표시
         var marker = new naver.maps.Marker({
           position: myaddr,
           map: map
         });
         // 마커 클릭 이벤트 처리
         naver.maps.Event.addListener(marker, "click", function(e) {
           if (infowindow.getMap()) {
               infowindow.close();
           } else {
               infowindow.open(map, marker);
           }
         });
         // 마크 클릭시 인포윈도우 오픈
         var infowindow = new naver.maps.InfoWindow({
             content: '<h4> [네이버 개발자센터]</h4><a href="https://developers.naver.com" target="_blank"><img src="https://developers.naver.com/inc/devcenter/images/nd_img.png"></a>'
         });
     });
	
</script>
<%@include file="include/footer.jsp"%>