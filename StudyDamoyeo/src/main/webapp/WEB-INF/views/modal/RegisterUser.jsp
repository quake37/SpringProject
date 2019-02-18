<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<div class="modal fade" id="UserModalRegister" tabindex="-1"
	role="dialog" aria-labelledby="exampleModalCenterTitle"
	aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="UserModalRegisterTitle">스터디회원 회원가입</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">

				<form method="post"  action="/member/insertUser">
					<div class="box-body">
						<div class="form-group">
							<label for="userid">아이디</label> <input type="text" name="userId"
								class="form-control" id="RegisterUserId" placeholder="ID"
								required="required" autofocus="autofocus">
						</div>
						<div class="form-group">
							<label for="username">이름(닉네임)</label> <input type="text"
								name="nickname" class="form-control" placeholder="Name"
								required="required">
						</div>
						<div class="form-group">
							<label for="inputPassword">비밀번호</label> <input type="password"
								name="pw" class="form-control" placeholder="Password"
								required="required">
						</div>
						<div class="form-group">
							<label for="inputEmail">휴대전화 (-없이)</label> <input type="text"
								name="phone" class="form-control" placeholder="Phone"
								required="required">
						</div>
						<div class="form-group">
							<label for="inputEmail">이메일 주소</label> <input type="email"
								name="email" class="form-control" placeholder="Email address"
								required="required">
						</div>
							
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token }">
					</div>
					<div class="box-footer">
						<button class="btn btn-primary" type="submit"  style="color:#fff; background-color: #FF974F; border-color: #FFFFFF;">회원가입</button>
					</div>
				</form>

			</div>

		</div>
	</div>
</div>
