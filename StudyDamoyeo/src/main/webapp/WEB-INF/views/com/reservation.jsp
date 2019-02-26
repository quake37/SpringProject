<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


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
				<h3 class="card-title">예약 목록 </h3>
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
							<th>번호</th>
							<th>지점명</th>
							<th>예약상태</th>
							<th>예약인원</th>
							<th>예약신청일</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${list}" var="reservation">
						<tr>
							<td><c:out value="${reservation.no}" /></td>
							<td><c:out value="${reservation.room}" /></td>
							<c:if test="${reservation.status ==-1 }"><td>예약대기</td></c:if>
							<c:if test="${reservation.status ==0 }"><td>입금대기</td></c:if>
							<c:if test="${reservation.status ==1 }"><td>예약완료</td></c:if>
							<td><c:out value="${reservation.people}" /></td>
							<td><c:out value="${reservation.resdate}" /></td>
						</tr>
					</c:forEach>
					</tbody>

				</table>
				
				<div >
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

<%@include file="include/footer.jsp"%>