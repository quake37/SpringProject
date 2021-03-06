 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
 <%@ taglib uri ="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600">
    <!-- https://fonts.google.com/specimen/Open+Sans -->
    <link rel="stylesheet" href="/resources/user/css/fontawesome.min.css">
    <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="/resources/user/css/bootstrap.min.css">
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="/resources/user/css/tooplate.css">
<title>StudyDamoyeo</title>
</head>
<body id="reportsPage" class="bg02">
    <div class="" id="home">
        <div class="container">
             <%@include file="include/header.jsp"%>
            <!-- row -->
            <div class="row tm-content-row tm-mt-big">
                <div class="col-xl-12 col-lg-12 tm-md-12 tm-sm-12 tm-col">
                    <div class="bg-white tm-block h-100">
                        <div class="row">
                            <div class="col-md-8 col-sm-12">
                                <h2 class="tm-block-title d-inline-block">모집글 목록</h2>

                            </div>
                           
                        </div>
                        <div class="table-responsive">
                            <table class="table table-hover table-striped tm-table-striped-even mt-3">
                                <thead>
                                    <tr class="tm-bg-gray">
                                        
                                        <th scope="col"class="text-center">제목</th>
                                        <th scope="col"class="text-center">모집구분</th>
                                        <th scope="col" class="text-center">지역</th>
                                        <th scope="col" class="text-center">현재인원</th>
                                        <th scope="col" class="text-center">모집상태</th>
                                        <th scope="col" class="text-center">기간</th>
                                       
                                    </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${list}" var="recruitment">
                                    <tr class="tm-product-name">
                                        <td scope="row" hidden="true">
                                           ${recruitment.recru_no }
                                        </td>
                                     
                                        <td class="text-center">${recruitment.title }</td>
                                        <td class="text-center">${recruitment.recruitment_type }</td>
                                        <td class="text-center">${recruitment.location }</td>
                                        <td class="text-center">${recruitment.state_people }/${recruitment.total_people }</td>
                                        <td class="text-center">                 
                                       
                                        <c:if test="${recruitment.recruitment_state == 0 }">
											모집중
										</c:if>
										 <c:if test="${recruitment.recruitment_state == 1 }">
											모집마감
										</c:if>
										 <c:if test="${recruitment.recruitment_state == 2 }">
											추가 모집중
										</c:if>
                                       
                                        </td>
                                        <td class="text-center"><fmt:formatDate pattern="MM/dd/yyyy" value="${recruitment.regdate }" /> ~ ${recruitment.expire_date }</td>
                                        
                                    </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>

                        <div class="tm-table-mt tm-table-actions-row">
                            <div class="tm-table-actions-col-left">
                                
                                	
                            </div>
                            <div class="tm-table-actions-col-right">
                                <span class="tm-pagination-label">Page</span>
                                <nav aria-label="Page navigation" class="d-inline-block">
                                    <ul class="pagination tm-pagination">
                                        <li class="page-item active"><a class="page-link" href="#">1</a></li>
                                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                                        <li class="page-item">
                                            <span class="tm-dots d-block">...</span>
                                        </li>
                                        <li class="page-item"><a class="page-link" href="#">13</a></li>
                                        <li class="page-item"><a class="page-link" href="#">14</a></li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
             <%@include file="include/footer.jsp"%>
        </div>
    </div>
    <script src="/resources/user/js/jquery-3.3.1.min.js"></script>
    <!-- https://jquery.com/download/ -->
    <script src="/resources/user/js/bootstrap.min.js"></script>
    <!-- https://getbootstrap.com/ -->
    <script>
        $(function () {
            $('.tm-product-name').on('click', function () {
            	var tr=$(this);
            	var td=tr.children();   
            	
            	window.location.href = "/recruitment/readRecruitment?recru_no="+td.eq(0).text();;
            });
        })
         ('#navbarDropdown').addClass('active');
    </script>
</body>

</html>