<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta id="_csrf" name="_csrf" content="${_csrf.token}" />
<!-- default header name is X-CSRF-TOKEN -->
<meta id="_csrf_header" name="_csrf_header"
	content="${_csrf.headerName}" />

<%@include file="include/header.jsp"%>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1>예약 현황</h1>
				</div>
				<div class="col-sm-6">
					<ol class="breadcrumb float-sm-right">
						<li class="breadcrumb-item"><a href="#">현황</a></li>
						<li class="breadcrumb-item active">예약 현황</li>
					</ol>
				</div>
			</div>
		</div>
		<!-- /.container-fluid -->
	</section>

	<!-- Main content -->
	<section class="content">
		<div class="card">
			<div class="card-header">
				<h3 class="card-title">예약 목록</h3>
			</div>
			<!-- /.card-header -->
			<div class="card-body">
				<div class="row">
					<div class="col-sm-12 col-md-6">
						<div class="dataTables_length" id="example1_length">
							<label>Show <select name="example1_length"
								class="form-control form-control-sm" aria-controls="example1"><option
										value="10">10</option>
									<option value="25">25</option>
									<option value="50">50</option>
									<option value="100">100</option></select> entries
							</label>
						</div>
					</div>
					<div class="col-sm-12 col-md-6">
						<div class="dataTables_filter" id="example1_filter">
							<label>Search:<input class="form-control form-control-sm"
								aria-controls="example1" type="search" placeholder=""></label>
						</div>
					</div>
				</div>
				<table id="example1" class="table table-bordered table-striped">
					<thead>
						<tr>

							<th>지점명</th>
							<th>예약인</th>
							<th>예약상태</th>
							<th>예약인원</th>
							<th>예약신청일</th>
							<th>등록날짜</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${list}" var="reservation">
							<tr class="cd">
								<td hidden="true"><c:out value="${reservation.no}" /></td>
								<td><c:out value="${reservation.roomname}" /></td>
								<td id="userid"><c:out value="${reservation.userid}" /></td>
								<c:if test="${reservation.status ==-1 }">
									<td>예약대기</td>
								</c:if>
								<c:if test="${reservation.status ==0 }">
									<td>입금대기</td>
								</c:if>
								<c:if test="${reservation.status ==1 }">
									<td>예약완료</td>
								</c:if>
								<td><c:out value="${reservation.people}" /></td>
								<td><c:out value="${reservation.resdate}" /></td>
								<td><fmt:formatDate pattern="MM/dd/yyyy"
										value="${reservation.regdate }" /></td>
								<td class="text-center">
									<c:if test="${reservation.status ==-1 }">
										<button class="btn btn-primary comfirmReservation1" type="button">예약확인</button>
										<button class="btn btn-primary comfirmReservation2" type="button">취소</button>
									</c:if> 
									<c:if test="${reservation.status ==0 }">
										<button class="btn btn-primary" type="button" onclick="">입금확인</button>
										<button class="btn btn-primary" type="button" onclick="">취소</button>
									</c:if></td>

							</tr>
						</c:forEach>
					</tbody>

				</table>

				<div>
					<ul class="pagination">
						<c:if test="${pageMaker.prev}">
							<li class="paginate_button previous"><a
								href="${pageMaker.startPage -1}">Previous</a></li>
						</c:if>

						<c:forEach var="num" begin="${pageMaker.startPage}"
							end="${pageMaker.endPage}">
							<li class="paginate_button  ${pageMaker.cri.pageNum == num ? "active":""} ">
								<a href="${num}">${num}</a>
							</li>&nbsp;
						</c:forEach>

						<c:if test="${pageMaker.next}">
							<li class="paginate_button next"><a
								href="${pageMaker.endPage +1 }">Next</a></li>
						</c:if>
					</ul>
				</div>
			</div>
			<!-- /.card-body -->
		</div>
		<!-- /.card -->

	</section>
	<!-- /.content -->
</div>
<!-- /.content-wrapper -->
<script src="/resources/com/dist/js/comfirmReservation.js"></script>
<script>
	$('#2').addClass('menu-open');
	$('#2-2').addClass('active');
	$('#2-2-1').addClass('active');

	
</script>
<%@include file="include/footer.jsp"%>