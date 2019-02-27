<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%-- <%@ page session="false"%> --%>
   <%@taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
   
<%@include file="include/header.jsp"%>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<link rel="stylesheet" href="/resources/com/dist/css/star.css">
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1>내 지점</h1>
				</div>
				<div class="col-sm-6">
					<ol class="breadcrumb float-sm-right">
						<li class="breadcrumb-item"><a href="#">현황</a></li>
						<li class="breadcrumb-item active">내 지점</li>
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
				<h3 class="card-title">지점 목록</h3>
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
							<th>지역</th>
							<th>평점</th>
							<th>등록 날짜</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${list}" var="room">
					
						<tr>
						
								<td><span><c:out value="${room.rno}" /></span></td>
								<td><a href="<c:url value="/room/readRoom?roomname=${room.roomname}"/>" class="nav-link"><c:out value="${room.roomname}" /></a></td>
								<td><span><c:out value="${room.location2} ${room.location3} ${room.location4}" /></span></td>
								<td class="star"><c:out value="${room.grade}" /></td> 
								<td><fmt:formatDate pattern="yyyy년 MM월 dd일" value="${room.regdate }" /><br>
									<fmt:formatDate pattern="hh시 mm분 ss초" value="${room.regdate }" />
								</td>
							
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
<script>
	$('#2').addClass('menu-open');
	$('#2-2').addClass('active');
	$('#2-2-2').addClass('active');
</script>
<script>
/*별점 : .star-input*/
/*출처 : http://codepen.io/naradesign/pen/zxPbOw*/
 
$('.star').each(function(){
	var grade = $(this).text();
	grade = Number(grade);
	var style ='';
	if(grade==1){
		style='style="width:30px;z-index: 5;"';
	}else if(grade==2){
		style='style="width:60px;z-index: 4;"';
	}
	else if(grade==3){
		style='style="width:90px;z-index: 3;"';
	}
	else if(grade==4){
		style='style="width:120px;z-index: 2;"';
	}
	else if(grade==5){
		style='style="width:150px;z-index: 1;"';
	}
	
	var star = '<span class="star-input">'
	+'<span class="input">'
	+'<input type="radio" name="star-input">'
	+'<label '+style+'></label>'
	+'</span>'
	+'<output for="star-input"><b>'+(grade)+'</b>점</output>'					
	+'</span>';
	
	
	$(this).html(star);
	
});
 

</script>
<%@include file="include/footer.jsp"%>