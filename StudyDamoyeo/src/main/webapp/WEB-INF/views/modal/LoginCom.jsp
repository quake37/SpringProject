<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


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
				<form class="needs-validation" novalidate>
					<div class="form-group">
						<label for="exampleInputEmail1">username</label> <input
							class="form-control" id="loginId" name="id"
							placeholder="username" required="required">
						<div class="valid-feedback">Looks good!</div>
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">password</label> <input
							type="password" class="form-control" id="loginPw" name="pw"
							placeholder="password" required="required">
						<div class="valid-feedback">Looks good!</div>
					</div>
					<button type="submit" class="btn "
						style="background-color: #ff974f; color: #ffffff border: 0; padding: 15px; color: #FFFFFF; font-size: 14px; -webkit-transition: all 0.3 ease; transition: all 0.3 ease;">로그인</button>
					<br>
					<p class="message">
						계정이 존재하지않나요? <a href="#" data-dismiss="modal" data-toggle="modal"
							data-target="#ComModalRegister">회원가입</a>
					</p>

				</form>


			</div>

		</div>
	</div>
</div>