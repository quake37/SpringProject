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
<!-- https://fontawesome.com/ -->
<link rel="stylesheet"
	href="/resources/user/jquery-ui-datepicker/jquery-ui.min.css"
	type="text/css" />
<!-- http://api.jqueryui.com/datepicker/ -->
<link rel="stylesheet" href="/resources/user/css/bootstrap.min.css">
<!-- https://getbootstrap.com/ -->
<link rel="stylesheet" href="/resources/user/css/tooplate.css">
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		applicationList();
	});
	function applicationList() {
		var recruit_no = ${recruitment.recru_no}
		$.getJSON("/application/getList/" + recruit_no + ".json",
					function(data) {
							var str = "<h2 class='tm-block-title d-inline-block'>스터디 신청자 명단</h2>";
							
							$(data)
									.each(
											function() {
												
												str += this.userId +
												"&nbsp;&nbsp;<button class='btn btn-primary' type='button'"+
												"onclick='confirm();'>승인</button>"+
												"<button class='btn btn-primary' type='button'"+
												"onclick='reject();'>거절</button>"+
												"<input type='hidden' id='no' value='"+this.no+"'>"
												+"<p>"
											});

							$("#applicants").html(str);
						});
	}
	
	/* function confirm(){
		$.ajax({
			type: 'post',
			url : '/application/update',
			data: JSON.stringify({reply : $('#reply').val(), replyer : $('#replyer').val(), bno: ${boardVO.bno} }) ,
			contentType : "application/json; charset=utf-8",
			success : function(result, status, xhr){
				alert('등록했습니다');
				$('#reply').val("");
				$('#replyer').val("");
				replyList();
			},
			error : function(er, status, xhr){
				alert(er);
			}
		});
	} */
	
</script>
<title>StudyDamoyeo</title>
</head>
<body class="bg03">
	<div class="container">

		<%@include file="include/header.jsp"%>

		<!-- row -->
		<div class="row tm-content-row tm-mt-big">



			<div class="tm-col tm-col-big-8">
				<div class="bg-white tm-block">
					<div class="row">
						<div class="col-12">
							<h2 class="tm-block-title">${recruitment.title }</h2>
						</div>
					</div>
					<div class="row">
						<div class="col-12">
							<input type="hidden" id="recruit_no" value="${recruitment.recru_no}">

							<div class="form-group">
								<label for="email">내용 </label>
								<textarea class="form-control validate" disabled="true" rows="5">${recruitment.content }</textarea>
							</div>
							<div class="form-group">
								<label for="password">위치</label> <input
									class="form-control validate col-3" disabled="true"
									value="${recruitment.location }">
							</div>
							<div class="form-group">
								<label for="password2">현재인원/모집인원</label> <input
									class="form-control validate col-1" disabled="true"
									value="${recruitment.state_people }/${recruitment.total_people }">
							</div>

						</div>
					</div>

				</div>
			</div>
			<div class="tm-col tm-col-big-4">
				<div class="bg-white tm-block">
					<div class="row">
						<div class="col-md-8 col-sm-12" id="applicants">
							

						</div>
					</div>
					<div class="table-responsive">
						<table
							class="table table-hover table-striped tm-table-striped-even mt-3">
							<thead>


							</thead>
							<tbody>



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