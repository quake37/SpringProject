<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML>

<html>
<head>
<title>StudyDamoyeo</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="/resources/main/assets/css/main.css"
	type="text/css" />
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<script type="text/javascript">
</script>
<body>

	<!-- Header -->
	<header id="header" class="alt">
		<div class="logo">
			<a href="/"><img
				src="/resources/main/images/studydamoyeoLOGO3.png" alt="" /></a>
		</div>


	</header>

	<!-- Nav -->


	<!-- Banner -->
	<section class="banner full">
		<article>
			<img src="/resources/main/images/slide01.jpg" alt="" />
			<div class="inner">
				<header>
					<p>쉽고 편하게 다함께 공부해보자!</p>
					<h2>스터디다모여</h2>
				</header>
			</div>
		</article>
		<article>
			<img src="/resources/main/images/slide02.jpg" alt="" />
			<div class="inner">
				<header>
					<p>쉽고 편하게 다함께 공부해보자!</p>
					<h2>스터디다모여</h2>
				</header>
			</div>
		</article>
		<article>
			<img src="/resources/main/images/slide03.jpg" alt="" />
			<div class="inner">
				<header>
					<p>쉽고 편하게 다함께 공부해보자!</p>
					<h2>스터디다모여</h2>
				</header>
			</div>
		</article>
		<article>
			<img src="/resources/main/images/slide04.jpg" alt="" />
			<div class="inner">
				<header>
					<p>쉽고 편하게 다함께 공부해보자!</p>
					<h2>스터디다모여</h2>
				</header>
			</div>
		</article>
		<article>
			<img src="/resources/main/images/slide05.jpg" alt="" />
			<div class="inner">
				<header>
					<p>쉽고 편하게 다함께 공부해보자!</p>
					<h2>스터디다모여</h2>
				</header>
			</div>
		</article>
	</section>

	<!-- One -->
	<section id="one" class="wrapper style2">
		<div class="inner">
			<div class="grid-style">

				<div>
					<div class="box">
						<div class="image fit">
							<img src="/resources/main/images/groupstudypage.jpg" alt="" style="padding: 15px;"/>
						</div>
						<div class="content">
							<header class="align-center">
								<p>자신의 스터디그룹을 만들어보아요.</p>
								<h2>일반 회원</h2>
							</header>
							<p>자신의 스터디그룹을 모집해보고 또 원하는 스터디그룹에 참여해보자. &nbsp; 쉽게 서로 같은 지역의
								사람과 원하는 스터디그룹을 만들어 원하는 스터디룸을 예약해보자.</p>
							<footer class="align-center">
								<a href="#" class="button alt" data-toggle="modal"
									data-target="#UserModalLogin">입장하기</a>
							</footer>
						</div>
					</div>
				</div>

				<div>
					<div class="box">
						<div class="image fit">
							<img src="/resources/main/images/ownerpage.jpg" alt="" style="padding: 15px;"/>
						</div>
						<div class="content">
							<header class="align-center">
								<p>자신의 스터디카페를 홍보해보자.</p>
								<h2>기업 회원</h2>
							</header>
							<p>자신의 스터디카페를 홍보해보자.&nbsp; 쉽게 자신의 스터디카페를 그 지역 사람들에게 홍보하고 예약된
								스터디룸을 결제해보자.</p>
							<br>
							<footer class="align-center">
								<a href="#" class="button alt" data-toggle="modal"
									data-target="#ComModalLogin">입장하기</a>
							</footer>
						</div>
					</div>
				</div>

			</div>
		</div>
	</section>

	<!-- Two -->
	<section id="two" class="wrapper style3">
		<div class="inner">
			<header class="align-center">
				<p>혼자 공부가 막막할때, 정보가 필요할때, 같은 목표를 가진 사람과 교류하고 싶을때</p>
				<h2>스터디다모여를 통해 다함께 공부해보자!</h2>

			</header>
		</div>
	</section>
	<!-- Three -->
	<section id="three" class="wrapper style2">
		<div class="inner">
			<header class="align-center">
				<p class="special">스터디원들과 원하는 스터디룸을 살펴보고 예약하자.</p>
				<h2>지점별 스터디룸 사진</h2>
			</header>
			<div class="gallery">
				<div>
					<div class="image fit">
							<c:if test="${roomList[0].imgname1 != null }">
								<img src="${pageContext.request.contextPath}/resources/upload/${roomList[0].imgname1 }" alt="" />
							</c:if>
							<c:if test="${roomList[0].imgname1 == null }">
								<img src="/resources/main/images/pic01.jpg" alt="" />
							</c:if>
						<div class="name">
							<h2>
							<c:if test="${roomList[0].roomname != null }">
								<a href="#">${roomList[0].roomname }</a>
							</c:if>
							<c:if test="${roomList[0].roomname == null }">
								<a href="#">지점 미등록</a>
							</c:if>
							</h2>
						</div>
					</div>
				</div>
				<div>
					<div class="image fit">
							<c:if test="${roomList[1].imgname1 != null }">
								<img src="${pageContext.request.contextPath}/resources/upload/${roomList[1].imgname1 }" alt="" />
							</c:if>
							<c:if test="${roomList[1].imgname1 == null }">
								<img src="/resources/main/images/pic01.jpg" alt="" />
							</c:if>
						<div class="name">
							<h2>
							<c:if test="${roomList[1].roomname != null }">
								<a href="#">${roomList[1].roomname }</a>
							</c:if>
							<c:if test="${roomList[1].roomname == null }">
								<a href="#">지점 미등록</a>
							</c:if>
							</h2>
						</div>
					</div>
				</div>
				<div>
					<div class="image fit">
							<c:if test="${roomList[2].imgname1 != null }">
								<img src="${pageContext.request.contextPath}/resources/upload/${roomList[2].imgname1 }" alt="" />
							</c:if>
							<c:if test="${roomList[2].imgname1 == null }">
								<img src="/resources/main/images/pic01.jpg" alt="" />
							</c:if>
						<div class="name">
							<h2>
							<c:if test="${roomList[2].roomname != null }">
								<a href="#">${roomList[2].roomname }</a>
							</c:if>
							<c:if test="${roomList[2].roomname == null }">
								<a href="#">지점 미등록</a>
							</c:if>
							</h2>
						</div>
					</div>
				</div>
				<div>
					<div class="image fit">
							<c:if test="${roomList[3].imgname1 != null }">
								<img src="${pageContext.request.contextPath}/resources/upload/${roomList[3].imgname1 }" alt="" />
							</c:if>
							<c:if test="${roomList[3].imgname1 == null }">
								<img src="/resources/main/images/pic01.jpg" alt="" />
							</c:if>
						<div class="name">
							<h2>
							<c:if test="${roomList[3].roomname != null }">
								<a href="#">${roomList[3].roomname }</a>
							</c:if>
							<c:if test="${roomList[3].roomname == null }">
								<a href="#">지점 미등록</a>
							</c:if>
							</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<!-- Three -->
	<section id="three" class="wrapper style2">
		<div class="inner">
			<header class="align-center">
				<p class="special">원하는 스터디그룹을 살펴보고 신청하자.</p>
				<h2>모집중인 스터디그룹</h2>
			</header>
			<div class="gallery">
				<div>
					<div class="image fit">
						
						<div class="name">
							
						</div>
					</div>
				</div>
				<div>
					<div class="image fit">
						
						<div class="name">
							
						</div>
					</div>
				</div>
				<div>
					<div class="image fit">
						
						<div class="name">
							
						</div>
					</div>
				</div>
				<div>
					<div class="image fit">
						
						<div class="name">
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<%@include file="modal/LoginUser.jsp"%>
	<%@include file="modal/LoginCom.jsp"%>
	<%@include file="modal/RegisterUser.jsp"%>
	<%@include file="modal/RegisterCom.jsp"%>
	<!-- Footer -->
	<footer id="footer">
		<div class="container">
			<ul class="icons">
				<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
				<li><a href="#" class="icon fa-facebook"><span
						class="label">Facebook</span></a></li>
				<li><a href="#" class="icon fa-instagram"><span
						class="label">Instagram</span></a></li>
				<li><a href="#" class="icon fa-envelope-o"><span
						class="label">Email</span></a></li>
			</ul>
		</div>
		<div class="copyright">&copy; Untitled. All rights reserved.</div>
	</footer>

	<!-- Scripts -->
	<script src="/resources/main/assets/js/jquery.min.js"></script>
	<script src="/resources/main/assets/js/jquery.scrollex.min.js"></script>
	<script src="/resources/main/assets/js/skel.min.js"></script>
	<script src="/resources/main/assets/js/util.js"></script>
	<script src="/resources/main/assets/js/main.js"></script>
	<script src="/resources/main/assets/js/mainAjax.js"></script>

</body>
</html>