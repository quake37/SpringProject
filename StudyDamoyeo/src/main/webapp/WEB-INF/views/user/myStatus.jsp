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
    
<title>StudyDamoyeo</title>
</head>
<body class="bg03">
    <div class="container">
    
           <%@include file="include/header.jsp"%>
           
        <!-- row -->
       <div class="row tm-content-row tm-mt-big">
  
  
       
            <div class="tm-col tm-col-big-6">
                <div class="bg-white tm-block">
                        <div class="row">
                            <div class="col-md-8 col-sm-12">
                                <h2 class="tm-block-title d-inline-block">내 모집글 현황</h2>

                            </div>
                        </div>
                        <div class="table-responsive">
                            <table class="table table-hover table-striped tm-table-striped-even mt-3">
                                <thead>
                                <tr>
                                 <th>지역</th>
                                 <th>제목</th>
                                 <th>모집상태</th>
                                 <th>참여요청</th>
                                 </tr>
                                </thead>
                                <tbody>
                               <c:forEach items="${recruitList}" var="recruit">
                                    <tr class="tm-product-name">
                                      <td>${recruit.location }</td>
                                      <td>${recruit.title }</td>
                                      <c:if test="${recruit.recruitment_state==0 }"><td>모집중</td></c:if>
                                      <c:if test="${recruit.recruitment_state==1 }"><td>모집완료</td></c:if>
                                      <td>0</td>
                                    </tr>
                                 </c:forEach>
                                </tbody>
                            </table>
                        </div>

                    </div>
            </div>
            <div class="tm-col tm-col-big-6">
                <div class="bg-white tm-block">
                        <div class="row">
                            <div class="col-md-8 col-sm-12">
                                <h2 class="tm-block-title d-inline-block">참여 요청중인 현황</h2>

                            </div>
                        </div>
                        <div class="table-responsive">
                            <table class="table table-hover table-striped tm-table-striped-even mt-3">
                                <thead>
                                  <tr>
                                 <th>모집자</th>
                                 <th>승인여부</th>
                                 <th>요청취소</th>
                                 </tr>
                                </thead>
                                <tbody>
                               
                                    <tr class="tm-product-name">
                                      <c:forEach items="${applicationList}" var="application">
                                    <tr class="tm-product-name">
                                      <td>${application.recruiter }</td>
                                      <c:if test="${application.result==0 }"><td>대기중</td></c:if>
                                      <c:if test="${application.result==1 }"><td>승인</td></c:if>
                                       <c:if test="${application.result==-1 }"><td>거절</td></c:if>
                                      <td><button>취소</button></td>
                                    </tr>
                                 </c:forEach>
                                    </tr>
                                   
                                </tbody>
                            </table>
                        </div>

                    </div>
            </div>
          
            <div class="tm-col tm-col-big-12">
                    <div class="bg-white tm-block">
                        <div class="row">
                            <div class="col-md-8 col-sm-12">
                                <h2 class="tm-block-title d-inline-block">스터디카페 예약 현황</h2>

                            </div>
                        </div>
                        <div class="table-responsive">
                            <table class="table table-hover table-striped tm-table-striped-even mt-3">
                                <thead>
                                </thead>
                                <tbody>
                                    <tr class="tm-product-name">
                                    </tr>
                                </tbody>
                            </table>
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
   $('#3').addClass('active');
   </script>
</body>
</html>