<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="/resources/main/assets/css/login.css"
	type="text/css" />


<div class="modal fade" id="ComModalLogin" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="ComModalLoginTitle">기업회원 로그인</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="form">
					<form class="login-form" method="post" action="/login">
						<input type="text" id="comloginId" name="username" required="required"
							placeholder="username" /> <input type="password" id="comloginPw"
							name="password" placeholder="password" required="required" />
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token }">
						<button type="submit">로그인</button>
						<p class="message">
							계정이 존재하지않나요? <a href="#" data-dismiss="modal" data-toggle="modal"
								data-target="#ComModalRegister">회원가입</a>
						</p>
					</form>
				</div>
			</div>

		</div>
	</div>
</div>