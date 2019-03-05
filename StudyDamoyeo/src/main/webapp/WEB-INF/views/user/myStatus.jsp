<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta id="_csrf" name="_csrf" content="${_csrf.token}" />
<!-- default header name is X-CSRF-TOKEN -->
<meta id="_csrf_header" name="_csrf_header"
	content="${_csrf.headerName}" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600">
<!-- https://fonts.google.com/specimen/Open+Sans -->
<link rel="stylesheet" href="/resources/user/css/fontawesome.min.css">
<!-- https://fontawesome.com/ -->
<link rel="stylesheet"
	href="/resources/user/jquery-ui-datepicker/jquery-ui.min.css"
	type="text/css" />
<!-- http://api.jqueryui.com/datepicker/ -->
<link rel="stylesheet" href="/resources/user/css/bootstrap.min.css">
<!-- https://getbootstrap.com/ -->
<link rel="stylesheet" href="/resources/user/css/tooplate.css">
<script type="text/javascript">
	function cancle() {
		var token = $("meta[name='_csrf']").attr("content");
		var header = $("meta[name='_csrf_header']").attr("content");
		var no = $("#no").val();
		$.ajax({
			async : true,
			type : 'POST',
			data : no,
			url : "/application/delete",
			dataType : "json",
			contentType : "application/json",
			beforeSend : function(xhr) { /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
				xhr.setRequestHeader(header, token);
			},
			success : function(data) {
				
			},
			error: function(request,status,error) {                   
            }
			
		});
		location.reload();
	}
</script>
<title>StudyDamoyeo</title>
</head>
<body class="bg03">
	<div class="container">
		<%@include file="include/header.jsp"%>

		<!-- row -->
		<div class="row tm-content-row tm-mt-big">



			<div class="tm-col tm-col-big-7">
				<div class="bg-white tm-block">
					<div class="row">
						<div class="col-md-8 col-sm-12">
							<h2 class="tm-block-title d-inline-block">내 모집글 현황</h2>

						</div>
					</div>
					<div class="table-responsive">
						<table
							class="table table-hover table-striped tm-table-striped-even mt-3">
							<thead>
								<tr>
									<th class="text-center">지역</th>
									<th class="text-center">제목</th>
									<th class="text-center">모집상태</th>
									<th class="text-center">참여요청</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${recruitList}" var="recruit">
									<tr class="tm-product-name list">
										<td hidden="true">${recruit.recru_no }</td>
										<td class="text-center">${recruit.location }</td>
										<td class="text-center">${recruit.title }</td>
										<c:if test="${recruit.recruitment_state==0 }">
											<td class="text-center">모집중</td>
										</c:if>
										<c:if test="${recruit.recruitment_state==1 }">
											<td class="text-center">모집완료</td>
										</c:if>
										<td class="text-center">0</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>


				</div>
			</div>
			<div class="tm-col tm-col-big-5">
				<div class="bg-white tm-block">
					<div class="row">
						<div class="col-md-8 col-sm-12">
							<h2 class="tm-block-title d-inline-block">참여 요청중인 현황</h2>

						</div>
					</div>
					<div class="table-responsive">
						<table
							class="table table-hover table-striped tm-table-striped-even mt-3">
							<thead>
								<tr>
									<th class="text-center">모집자</th>
									<th class="text-center">승인여부</th>
									<th class="text-center">요청취소</th>
								</tr>
							</thead>
							<tbody>

								<tr class="tm-product-name">
									<c:forEach items="${applicationList}" var="application">
										<tr class="tm-product-name">
											<td class="text-center">${application.recruiter }</td>
											<c:if test="${application.result==0 }">
												<td class="text-center">대기중</td>
											</c:if>
											<c:if test="${application.result==1 }">
												<td class="text-center">승인</td>
											</c:if>
											<c:if test="${application.result==-1 }">
												<td class="text-center">거절</td>
											</c:if>
											<td hidden="true">
											<input type="hidden" id="no" value="${application.no }"/></td>
											<td class="text-center"><button class="btn btn-primary" type="button"
													onclick="cancle();">취소</button></td>
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
						<table
							class="table table-hover table-striped tm-table-striped-even mt-3">
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
   $(function () {
       $('.list').on('click', function () {
       	var tr=$(this);
       	var td=tr.children();   
       	
       	window.location.href = "/recruitment/requestRecruitment?recru_no="+td.eq(0).text();;
       });
   })

   $('#3').addClass('active');
   </script>
</body>
</html>