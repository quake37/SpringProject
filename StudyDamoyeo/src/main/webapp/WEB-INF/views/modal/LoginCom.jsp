<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
@import url(https://fonts.googleapis.com/css?family=Roboto:300);

.login-page {
	width: 460px;
	height: 500px;
	padding: 8% 0 0;
	margin: auto;
}

.form {
	position: relative;
	z-index: 1;
	background: #FFFFFF;
	max-width: 360px;
	margin: 0 auto 100px;
	padding: 45px;
	text-align: center;
}

.form input {
	font-family: "Roboto", sans-serif;
	outline: 0;
	background: #f2f2f2;
	width: 100%;
	border: 0;
	margin: 0 0 15px;
	padding: 15px;
	box-sizing: border-box;
	font-size: 14px;
}

.form button {
	font-family: "Roboto", sans-serif;
	text-transform: uppercase;
	outline: 0;
	background: #ff974f;
	width: 100%;
	border: 0;
	padding: 15px;
	color: #FFFFFF;
	font-size: 14px;
	-webkit-transition: all 0.3 ease;
	transition: all 0.3 ease;
	cursor: pointer;
}

.form button:hover, .form button:active, .form button:focus {
	background: #f54f29;
}

.form .message {
	margin: 15px 0 0;
	color: #b3b3b3;
	font-size: 12px;
}

.form .message a {
	color: #ff974f;
	text-decoration: none;
}

.form .register-form {
	display: none;
}

body {
	font-family: "Roboto", sans-serif;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
}
</style>
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
					<form class="login-form">
						<input type="text" placeholder="username" /> <input
							type="password" placeholder="password" />
						<button>로그인</button>
						<p class="message">
							계정이 존재하지않나요? <a href="#" data-dismiss="modal" data-toggle="modal"
								data-target="#ComModalRegister">회원가입</a>
						</p>
					</form>
				</div>

			</div>
			<div class="modal-footer">
				<span>계정이 없나요? <a href=# data-dismiss="modal"
					data-toggle="modal" data-target="#ComModalRegister">회원가입</a></span>
				<button type="button" class="btn btn-primary">로그인</button>
				<button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>

			</div>
		</div>
	</div>
</div>