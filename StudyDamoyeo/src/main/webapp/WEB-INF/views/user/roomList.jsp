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
    <link rel="stylesheet" href="/resources/user/css/fullcalendar.min.css">
    <!-- https://fullcalendar.io/ -->
    <link rel="stylesheet" href="/resources/user/css/bootstrap.min.css">
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="/resources/user/css/tooplate.css">
    
<title>StudyDamoyeo</title>
</head>
<body id="reportsPage">
    <div class="" id="home">
        <div class="container">
        
            <%@include file="include/header.jsp"%>
			
            <!-- row -->
            <div class="row tm-content-row tm-mt-big">
              <c:forEach items="${list}" var="room">
                <div class="tm-col tm-col-big-4">
                    <div class="bg-white tm-block h-100">
                        <h2 class="tm-block-title">${room.roomname }</h2>
                      <img   class="img-fluid" src="${pageContext.request.contextPath}/resources/upload/${room.imgname1 }" alt="" />
                    </div>
                </div>
              </c:forEach>
            </div>
             <%@include file="include/footer.jsp"%>
        </div>
    </div>
    <script src="/resources/user/js/jquery-3.3.1.min.js"></script>
    <!-- https://jquery.com/download/ -->
    <script src="/resources/user/js/moment.min.js"></script>
    <!-- https://momentjs.com/ -->
    <script src="/resources/user/js/utils.js"></script>
  
    <!-- http://www.chartjs.org/docs/latest/ -->
    <script src="/resources/user/js/fullcalendar.min.js"></script>
    <!-- https://fullcalendar.io/ -->
    <script src="/resources/user/js/bootstrap.min.js"></script>
    <!-- https://getbootstrap.com/ -->
    <script src="/resources/user/js/tooplate-scripts.js"></script>
   <script>
        
        $('#4').addClass('active');
    </script>
</body>
</html>