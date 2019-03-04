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
       <div class="row content-row tm-mt-big">
            <div class="col-11">
                <div class="bg-white tm-block">
                    <div class="row">
                        <div class="col-12">
                            <h2 class="tm-block-title">${recruitment.title }</h2>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                           
                                <div class="form-group">
                                    <label for="name">모집자</label>
                                    <input class="form-control validate" value="${nickname }" disabled="true">
                                </div>
                                <div class="form-group">
                                    <label for="email">내용 </label>
                                    <textarea class="form-control validate" disabled="true" rows="5">${recruitment.content }</textarea>
                                </div>
                                <div class="form-group">
                                    <label for="password">위치</label>
                                    <input class="form-control validate col-3" disabled="true" value="${recruitment.location }" >
                                </div>
                                <div class="form-group">
                                    <label for="password2">현재인원/모집인원</label>
                                    <input class="form-control validate col-1" disabled="true" value="${recruitment.state_people }/${recruitment.total_people }">
                                </div>
                                <div class="form-group">
                                    <label for="phone">연락처</label>
                                    <input  class="form-control validate col-4" value="${email }" disabled="true">
                                </div>
                                <div class="row">
                                    <div class="col-12 col-sm-4">
                                        <button class="btn btn-primary">참여요청하기
                                        </button>
                                    </div>
                                    <div class="col-12 col-sm-8 tm-btn-right">
                                        
                                    </div>
                                </div>

                           
                        </div>
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
   
</body>
</html>