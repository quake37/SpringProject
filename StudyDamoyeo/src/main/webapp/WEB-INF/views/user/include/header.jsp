
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ taglib uri ="http://www.springframework.org/security/tags" prefix="sec" %>

<div class="row">
	<div class="col-12">
		<nav class="navbar navbar-expand-xl navbar-light bg-light">
			<a class="navbar-brand" href="/user/mainpage"> <i
				class="fas fa-3x fa-tachometer-alt tm-site-icon"></i>
				<h1 class="tm-site-title mb-0">스터디다모여</h1>
			</a>
			<button class="navbar-toggler ml-auto mr-0" type="button"
				data-toggle="collapse" data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mx-auto">
					<li class="nav-item"><a class="nav-link" href="/user/mainpage" id="1">스터디다모여
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> 스터디 모집 </a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="/recruitment/register">모집글 작성</a> <a
								class="dropdown-item" href="/recruitment/readRecruitmentList">모집글 보기</a> <a
								class="dropdown-item" href="#">Yearly Report</a>
						</div></li>
					<li class="nav-item"><a class="nav-link" href="products.html">Products</a>
					</li>

					<li class="nav-item"><a class="nav-link" href="accounts.html">Accounts</a>
					</li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> Settings </a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="#">Profile</a> <a
								class="dropdown-item" href="#">Billing</a> <a
								class="dropdown-item" href="#">Customize</a>
						</div></li>
				</ul>
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link d-flex"
						href="login.html"> <i class="far fa-user mr-2 tm-logout-icon"></i>
							<span>Logout</span>
					</a></li>
				</ul>
			</div>
		</nav>
	</div>
</div>