<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="modal fade" id="UserModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="UserModalCenterTitle">스터디회원 회원가입</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form  method="post">
					<div class="box-body">
						<div class="form-group">
							<label for="userid">아이디</label> <input type="text" name="userid"
								class="form-control" id="userid" placeholder="ID"
								required="required" autofocus="autofocus">
								<br>
							<button class=" btn btn-primary" onclick="checkFunction();">ID 중복체크</button>
						</div>
						<div class="form-group">
							<label for="username">이름</label> <input type="text"
								name="username" class="form-control" placeholder="Name"
								required="required">
						</div>
						<div class="form-group">
							<label for="inputPassword">비밀번호</label> <input type="password"
								name="userpw" class="form-control" placeholder="Password"
								required="required">
						</div>

						<div class="form-group">

							<label for="inputEmail">이메일 주소</label> <input type="email"
								name="useremail" class="form-control"
								placeholder="Email address" required="required">

						</div>
					</div>
					<div class="box-footer">
						<button class="btn btn-primary" type="submit">회원가입</button>
					</div>
				</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary">회원가입</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
      </div>
    </div>
  </div>
</div>
