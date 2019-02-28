 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ taglib uri ="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600">
    <!-- https://fonts.google.com/specimen/Open+Sans -->
    <link rel="stylesheet" href="/resources/user/css/fontawesome.min.css">
    <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="/resources/user/jquery-ui-datepicker/jquery-ui.min.css" type="text/css" />
    <!-- http://api.jqueryui.com/datepicker/ -->
    <link rel="stylesheet" href="/resources/user/css/bootstrap.min.css">
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="/resources/user/css/tooplate.css">
    
<title>Insert title here</title>
</head>
<body class="bg02">
    <div class="container">
    
           <%@include file="include/header.jsp"%>
           
        <!-- row -->
        <div class="row tm-mt-big">
            <div class="col-xl-11 col-lg-10 col-md-12 col-sm-12">
                <div class="bg-white tm-block">
                    <div class="row">
                        <div class="col-12">
                            <h2 class="tm-block-title d-inline-block">스터디 모집</h2>
                        </div>
                    </div>
                    <div class="row mt-4 tm-edit-product-row">
                        <div class="col-xl-11 col-lg-7 col-md-12">
                            <form action="/recruitment/insert" method="post" class="tm-edit-product-form">
                                <div class="input-group mb-3">
                                    <label for="title" class="col-xl-3 col-lg-4 col-md-4 col-sm-5 col-form-label">제목
                         
                                    </label>
                                    <input id="title" name="title" type="text" class="form-control validate col-xl-11 col-lg-8 col-md-8 col-sm-7" required>
                                </div>
                                <div class="input-group mb-3">
                                    <label for="content" class="col-xl-3 col-lg-4 col-md-4 col-sm-5 mb-2">내용</label>
                                    <textarea class="form-control validate col-xl-11 col-lg-8 col-md-8 col-sm-7" rows="4" required  id="content" name="content"></textarea>
                                </div>
                                
                                <div class="input-group mb-3">
                                    <label for="recruitment_type" class="col-xl-3 col-lg-4 col-md-4 col-sm-5 col-form-label">모집분야</label>
                                    <select class="custom-select col-xl-11 col-lg-8 col-md-8 col-sm-7" id="recruitment_type" name="recruitment_type">
                                        <option selected>분야 선택</option>
                                        <option value="1">외국어 스터디</option>
                                        <option value="2">취업 스터디</option>
                                        <option value="3">그외</option>
                                    </select>
                                </div>
                                
                                <div class="input-group mb-3">
                                    <label for="location" class="col-xl-3 col-lg-4 col-md-4 col-sm-5 col-form-label">지역</label>
                                    <select class="custom-select col-xl-7 col-lg-8 col-md-8 col-sm-7" name="sido" id="sido">
                                    </select>
                                      <select class="custom-select col-xl-7 col-lg-8 col-md-8 col-sm-7" name="gugun" id="gugun">
                                    </select>
                                </div>
                              
                                <div class="input-group mb-3">
                                    <label for="expire_date" class="col-xl-3 col-lg-4 col-md-4 col-sm-5 col-form-label">모집 기간
                                        
                                    </label>
                                    <input id="expire_date" name="expire_date" type="text" class="form-control validate col-xl-7 col-lg-8 col-md-8 col-sm-7"
                                        data-large-mode="true">
                                </div>
                                <div class="input-group mb-3">
                                    <label for="total_people" class="col-xl-3 col-lg-4 col-md-4 col-sm-5 col-form-label">모집인원(작성자 포함)
                                       
                                    </label>
                                    <input id="total_people" name="total_people" min="1" value="1" type="number" style="ime-mode:disabled;" onkeypress="return digit_check(event)" class="form-control validate col-xl-2 col-lg-8 col-md-7 col-sm-7" numberOnly>
                                    	
                                </div>
                                <br><br>
                                <div class="input-group mb-3">
                                    <div class="ml-auto col-xl-8 col-lg-8 col-md-8 col-sm-7 pl-0">
                                        <button type="submit" class="btn btn-primary" style="padding: 13px 208px;">작성
                                        </button>
                                    </div>
                                </div>
                                  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token }">
                            </form>
                        </div>
                        <br>


                    </div>
                </div>
            </div>
        </div>
          <%@include file="include/footer.jsp"%>
    </div>

    <script src="/resources/user/js/jquery-3.3.1.min.js"></script>
    <!-- https://jquery.com/download/ -->
    <script src="/resources/user/jquery-ui-datepicker/jquery-ui.min.js"></script>
    <!-- https://jqueryui.com/download/ -->
    <script src="/resources/user/js/bootstrap.min.js"></script>
    <!-- https://getbootstrap.com/ -->
    <script>
    
    function digit_check(evt){
        var code = evt.which?evt.which:event.keyCode;
        if(code < 48 || code > 57){
            return false;
        }
    }


  
        $(function () {
            $('#expire_date').datepicker();
        });
        
        $('#navbarDropdown').addClass('active');
        
        $('document').ready(function() {
        	 var area0 = ["시/도 선택","서울특별시","인천광역시","대전광역시","광주광역시","대구광역시","울산광역시","부산광역시","경기도","강원도","충청북도","충청남도","전라북도","전라남도","경상북도","경상남도","제주도"];
        	  var area1 = ["강남구","강동구","강북구","강서구","관악구","광진구","구로구","금천구","노원구","도봉구","동대문구","동작구","마포구","서대문구","서초구","성동구","성북구","송파구","양천구","영등포구","용산구","은평구","종로구","중구","중랑구"];
        	   var area2 = ["계양구","남구","남동구","동구","부평구","서구","연수구","중구","강화군","옹진군"];
        	   var area3 = ["대덕구","동구","서구","유성구","중구"];
        	   var area4 = ["광산구","남구","동구",     "북구","서구"];
        	   var area5 = ["남구","달서구","동구","북구","서구","수성구","중구","달성군"];
        	   var area6 = ["남구","동구","북구","중구","울주군"];
        	   var area7 = ["강서구","금정구","남구","동구","동래구","부산진구","북구","사상구","사하구","서구","수영구","연제구","영도구","중구","해운대구","기장군"];
        	   var area8 = ["고양시","과천시","광명시","광주시","구리시","군포시","김포시","남양주시","동두천시","부천시","성남시","수원시","시흥시","안산시","안성시","안양시","양주시","오산시","용인시","의왕시","의정부시","이천시","파주시","평택시","포천시","하남시","화성시","가평군","양평군","여주군","연천군"];
        	   var area9 = ["강릉시","동해시","삼척시","속초시","원주시","춘천시","태백시","고성군","양구군","양양군","영월군","인제군","정선군","철원군","평창군","홍천군","화천군","횡성군"];
        	   var area10 = ["제천시","청주시","충주시","괴산군","단양군","보은군","영동군","옥천군","음성군","증평군","진천군","청원군"];
        	   var area11 = ["계룡시","공주시","논산시","보령시","서산시","아산시","천안시","금산군","당진군","부여군","서천군","연기군","예산군","청양군","태안군","홍성군"];
        	   var area12 = ["군산시","김제시","남원시","익산시","전주시","정읍시","고창군","무주군","부안군","순창군","완주군","임실군","장수군","진안군"];
        	   var area13 = ["광양시","나주시","목포시","순천시","여수시","강진군","고흥군","곡성군","구례군","담양군","무안군","보성군","신안군","영광군","영암군","완도군","장성군","장흥군","진도군","함평군","해남군","화순군"];
        	   var area14 = ["경산시","경주시","구미시","김천시","문경시","상주시","안동시","영주시","영천시","포항시","고령군","군위군","봉화군","성주군","영덕군","영양군","예천군","울릉군","울진군","의성군","청도군","청송군","칠곡군"];
        	   var area15 = ["거제시","김해시","마산시","밀양시","사천시","양산시","진주시","진해시","창원시","통영시","거창군","고성군","남해군","산청군","의령군","창녕군","하동군","함안군","함양군","합천군"];
        	   var area16 = ["서귀포시","제주시","남제주군","북제주군"];

        	 

        	 // 시/도 선택 박스 초기화

        	 $("select[name^=sido]").each(function() {
        	  $selsido = $(this);
        	  $.each(eval(area0), function() {
        	   $selsido.append("<option value='"+this+"'>"+this+"</option>");
        	  });
        	  $selsido.next().append("<option value=''>구/군 선택</option>");
        	 });

        	 

        	 // 시/도 선택시 구/군 설정

        	 $("select[name^=sido]").change(function() {
        	  var area = "area"+$("option",$(this)).index($("option:selected",$(this))); // 선택지역의 구군 Array
        	  var $gugun = $(this).next(); // 선택영역 군구 객체
        	  $("option",$gugun).remove(); // 구군 초기화

        	  if(area == "area0")
        	   $gugun.append("<option value=''>구/군 선택</option>");
        	  else {
        	   $.each(eval(area), function() {
        	    $gugun.append("<option value='"+this+"'>"+this+"</option>");
        	   });
        	  }
        	 });


        	});
        
        
    </script>
</body>
</html>