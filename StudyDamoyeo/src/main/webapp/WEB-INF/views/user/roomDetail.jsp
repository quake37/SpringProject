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
    
        $('#4').addClass('active');
        
    </script>
</body>
</html>