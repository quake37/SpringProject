<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<%@include file="include/header.jsp"%>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<link rel="stylesheet" href="/resources/main/assets/css/loading.css"
	type="text/css" />
<meta id="_csrf" name="_csrf" content="${_csrf.token}" />
<!-- default header name is X-CSRF-TOKEN -->
<meta id="_csrf_header" name="_csrf_header"
	content="${_csrf.headerName}" />
<script type="text/javascript">
$(document).ready(function() {

  if(${result}=="success")
	alert('이메일을 전송했습니다.')

});
var token = $("meta[name='_csrf']").attr("content");
var header = $("meta[name='_csrf_header']").attr("content");
var regExp = /[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]/gi;
var timeout;
var checkcom =false;

	
function nicknameCheck() {
	var nickname = $('#inputNickname').val();
	if(!regExp.test(nickname)){
		regExp.test(nickname);
		$("#comNickNameCheck").hide(500);
		$("#updateComNameSpin").show(500);
		if(timeout) {
		       clearTimeout(timeout);
		    }
		timeout = setTimeout(function() {
		    	
		    	 $.ajax({
			            async: true,
			            type : 'POST',
			            data : nickname,
			            url : "/profile/nicknameCheck",
			            dataType : "json",
			            contentType: "application/json",
			            beforeSend : function(xhr)
			            {   /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
			            	xhr.setRequestHeader(header, token);
			            },
			            success : function(data) {
			            	if (data.cnt > 0) {
			            		$("#updateComNameSpin").hide(500);
			                	$("#comNickNameCheck").css({"color":"#f54f29"});
			                	$("#comNickNameCheck").text("이미 사용중인 닉네임입니다.");
			                	$("#inputNickname").focus();
			                	$("#comNickNameCheck").show(500);
			                	checkcom=false;
			                } else {
			                	$("#updateComNameSpin").hide(500);
			                	$("#comNickNameCheck").css({"color":"#9c9b7a"});
			                	$("#comNickNameCheck").text("사용가능한 닉네임입니다.");
			                	$("#comNickNameCheck").show(500);
			                	checkcom=true;
			                
			                }  	
			            },
			            error : function(request,status,error) {	                
			            	  alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);

			            }
				  });
		    }, 2000);
	}else{
		regExp.test(nickname);
		$("#comNickNameCheck").css({"color":"#f54f29"});
		$("#comNickNameCheck").text("특수문자가 포함되어있습니다.");
		$("#comNickNameCheck").show(500);
		checkcom=false;
	}
}
	
	function profileUpdate() {
		var nickname = $('#inputNickname').val();
		var phone = $('#inputPhone').val();
		var email = $('#inputEmail').val();
		var userId=$('#userId').val();
		if(nickname==""||nickname==null||phone==""||phone==null||email==""||email==null){
			alert(nickname+' '+phone+' '+email +' '+userId);
			return;
		}
		
			 $.ajax({
		            async: true,
		            type : 'POST',
		            data : JSON.stringify({nickname: nickname, phone : phone, email : email, userId : userId }),
		            url : "/profile/update",
		            dataType : "json",
		            contentType: "application/json",
		            beforeSend : function(xhr)
		            {   /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
		            	xhr.setRequestHeader(header, token);
		            },
		            success : function(data) {
		            	
		            }
		           
			  });
			 location.reload();
		}
		
	
	
	
	
	
</script>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1>Profile</h1>
				</div>
				<div class="col-sm-6">
					<ol class="breadcrumb float-sm-right">
						<li class="breadcrumb-item"><a href="#">Home</a></li>
						<li class="breadcrumb-item active">User Profile</li>
					</ol>
				</div>
			</div>
		</div>
		<!-- /.container-fluid -->
	</section>

	<!-- Main content -->
	<section class="content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-3">

					<!-- Profile Image -->
					<div class="card card-primary card-outline">
						<div class="card-body box-profile">
							<div class="text-center">
								<c:if test="${member.profile_Img == 'null' }">
									<img class="profile-user-img img-fluid img-circle"
										src="/resources/com/dist/img/user.svg"
										alt="User profile picture">
								</c:if>
								<c:if test="${member.profile_Img != 'null' }">
									<img class="profile-user-img img-fluid img-circle"
										src="${pageContext.request.contextPath}/resources/upload/${member.profile_Img }"
										alt="User profile picture">
								</c:if>
							</div>

							<h3 class="profile-username text-center">${member.userId }</h3>

							<p class="text-muted text-center" id="navNick">${member.nickname }</p>

							<ul class="list-group list-group-unbordered mb-3">
								<li class="list-group-item"><b>회원구분</b> <a
									class="float-right">기업회원</a></li>
								<!--  <li class="list-group-item">
                    <b>Following</b> <a class="float-right">543</a>
                  </li>
                  <li class="list-group-item">
                    <b>Friends</b> <a class="float-right">13,287</a>
                  </li>
                  -->
							</ul>
							<a href="#" class="btn btn-primary btn-block" data-toggle="modal"
								data-target="#imgModalUpload"><b>프로필 이미지 등록</b></a>
						</div>
						<!-- /.card-body -->
					</div>
					<!-- /.card -->

					<!-- About Me Box -->
					<div class="card card-primary">
						<div class="card-header">
							<h3 class="card-title">내 정보</h3>
						</div>
						<!-- /.card-header -->
						<div class="card-body">
							<strong>휴대폰 번호</strong>

							<p class="text-muted">${member.phone }</p>

							<hr>

							<strong>E-Mail</strong>

							<p class="text-muted">${member.email }</p>

							<hr>

							<strong> 회원 가입일 </strong>

							<p class="text-muted">

								<fmt:formatDate pattern="yyyy년 MM월 dd일 "
									value="${member.regdate }" />
							</p>

							<hr>

							<strong> 이메일 인증</strong>
							<c:if test="${member.verified =='N' }">
								<p class="text-muted">이메일 인증을 해야 다른 기능을 이용하실 수 있습니다. 설정에서
									이메일 인증을 해주세요.</p>
								<a href="<c:url value="/profile/emailAuth"/>" class="btn btn-primary btn-block">인증</a>
							</c:if>
							<c:if test="${member.verified =='Y' }">
								<p class="text-muted">이메일 인증완료된 회원입니다. 부가 기능이 이용가능합니다.</p>
							</c:if>
						</div>
						<!-- /.card-body -->
					</div>
					<!-- /.card -->
				</div>
				<!-- /.col -->
				<div class="col-md-9">
					<div class="card">
						<div class="card-header p-2">
							<ul class="nav nav-pills">
								<li class="nav-item"><a class="nav-link active"
									href="#activity" data-toggle="tab">Activity</a></li>
								<li class="nav-item"><a class="nav-link" href="#timeline"
									data-toggle="tab">Timeline</a></li>
								<li class="nav-item"><a class="nav-link" href="#settings"
									data-toggle="tab">설정</a></li>
							</ul>
						</div>
						<!-- /.card-header -->
						<div class="card-body">
							<div class="tab-content">
								<div class="active tab-pane" id="activity">
									<!-- Post -->
									<div class="post">
										<div class="user-block">
											<img class="img-circle img-bordered-sm"
												src="/resources/com/dist/img/user1-128x128.jpg"
												alt="user image"> <span class="username"> <a
												href="#">Jonathan Burke Jr.</a> <a href="#"
												class="float-right btn-tool"><i class="fa fa-times"></i></a>
											</span> <span class="description">Shared publicly - 7:30 PM
												today</span>
										</div>
										<!-- /.user-block -->
										<p>Lorem ipsum represents a long-held tradition for
											designers, typographers and the like. Some people hate it and
											argue for its demise, but others ignore the hate as they
											create awesome tools to help create filler text for everyone
											from bacon lovers to Charlie Sheen fans.</p>

										<p>
											<a href="#" class="link-black text-sm mr-2"><i
												class="fa fa-share mr-1"></i> Share</a> <a href="#"
												class="link-black text-sm"><i
												class="fa fa-thumbs-o-up mr-1"></i> Like</a> <span
												class="float-right"> <a href="#"
												class="link-black text-sm"> <i
													class="fa fa-comments-o mr-1"></i> Comments (5)
											</a>
											</span>
										</p>

										<input class="form-control form-control-sm" type="text"
											placeholder="Type a comment">
									</div>
									<!-- /.post -->

									<!-- Post -->
									<div class="post clearfix">
										<div class="user-block">
											<img class="img-circle img-bordered-sm"
												src="/resources/com/dist/img/user7-128x128.jpg"
												alt="User Image"> <span class="username"> <a
												href="#">Sarah Ross</a> <a href="#"
												class="float-right btn-tool"><i class="fa fa-times"></i></a>
											</span> <span class="description">Sent you a message - 3 days
												ago</span>
										</div>
										<!-- /.user-block -->
										<p>Lorem ipsum represents a long-held tradition for
											designers, typographers and the like. Some people hate it and
											argue for its demise, but others ignore the hate as they
											create awesome tools to help create filler text for everyone
											from bacon lovers to Charlie Sheen fans.</p>

										<form class="form-horizontal">
											<div class="input-group input-group-sm mb-0">
												<input class="form-control form-control-sm"
													placeholder="Response">
												<div class="input-group-append">
													<button type="submit" class="btn btn-danger">Send</button>
												</div>
											</div>
										</form>
									</div>
									<!-- /.post -->

									<!-- Post -->
									<div class="post">
										<div class="user-block">
											<img class="img-circle img-bordered-sm"
												src="/resources/com/dist/img/user6-128x128.jpg"
												alt="User Image"> <span class="username"> <a
												href="#">Adam Jones</a> <a href="#"
												class="float-right btn-tool"><i class="fa fa-times"></i></a>
											</span> <span class="description">Posted 5 photos - 5 days
												ago</span>
										</div>
										<!-- /.user-block -->
										<div class="row mb-3">
											<div class="col-sm-6">
												<img class="img-fluid"
													src="/resources/com/dist/img/photo1.png" alt="Photo">
											</div>
											<!-- /.col -->
											<div class="col-sm-6">
												<div class="row">
													<div class="col-sm-6">
														<img class="img-fluid mb-3"
															src="/resources/com/dist/img/photo2.png" alt="Photo">
														<img class="img-fluid"
															src="/resources/com/dist/img/photo3.jpg" alt="Photo">
													</div>
													<!-- /.col -->
													<div class="col-sm-6">
														<img class="img-fluid mb-3"
															src="/resources/com/dist/img/photo4.jpg" alt="Photo">
														<img class="img-fluid"
															src="/resources/com/dist/img/photo1.png" alt="Photo">
													</div>
													<!-- /.col -->
												</div>
												<!-- /.row -->
											</div>
											<!-- /.col -->
										</div>
										<!-- /.row -->

										<p>
											<a href="#" class="link-black text-sm mr-2"><i
												class="fa fa-share mr-1"></i> Share</a> <a href="#"
												class="link-black text-sm"><i
												class="fa fa-thumbs-o-up mr-1"></i> Like</a> <span
												class="float-right"> <a href="#"
												class="link-black text-sm"> <i
													class="fa fa-comments-o mr-1"></i> Comments (5)
											</a>
											</span>
										</p>

										<input class="form-control form-control-sm" type="text"
											placeholder="Type a comment">
									</div>
									<!-- /.post -->
								</div>
								<!-- /.tab-pane -->
								<div class="tab-pane" id="timeline">
									<!-- The timeline -->
									<ul class="timeline timeline-inverse">
										<!-- timeline time label -->
										<li class="time-label"><span class="bg-danger"> 10
												Feb. 2014 </span></li>
										<!-- /.timeline-label -->
										<!-- timeline item -->
										<li><i class="fa fa-envelope bg-primary"></i>

											<div class="timeline-item">
												<span class="time"><i class="fa fa-clock-o"></i>
													12:05</span>

												<h3 class="timeline-header">
													<a href="#">Support Team</a> sent you an email
												</h3>

												<div class="timeline-body">Etsy doostang zoodles
													disqus groupon greplin oooj voxy zoodles, weebly ning
													heekya handango imeem plugg dopplr jibjab, movity jajah
													plickers sifteo edmodo ifttt zimbra. Babblely odeo kaboodle
													quora plaxo ideeli hulu weebly balihoo...</div>
												<div class="timeline-footer">
													<a href="#" class="btn btn-primary btn-sm">Read more</a> <a
														href="#" class="btn btn-danger btn-sm">Delete</a>
												</div>
											</div></li>
										<!-- END timeline item -->
										<!-- timeline item -->
										<li><i class="fa fa-user bg-info"></i>

											<div class="timeline-item">
												<span class="time"><i class="fa fa-clock-o"></i> 5
													mins ago</span>

												<h3 class="timeline-header no-border">
													<a href="#">Sarah Young</a> accepted your friend request
												</h3>
											</div></li>
										<!-- END timeline item -->
										<!-- timeline item -->
										<li><i class="fa fa-comments bg-warning"></i>

											<div class="timeline-item">
												<span class="time"><i class="fa fa-clock-o"></i> 27
													mins ago</span>

												<h3 class="timeline-header">
													<a href="#">Jay White</a> commented on your post
												</h3>

												<div class="timeline-body">Take me to your leader!
													Switzerland is small and neutral! We are more like Germany,
													ambitious and misunderstood!</div>
												<div class="timeline-footer">
													<a href="#" class="btn btn-warning btn-flat btn-sm">View
														comment</a>
												</div>
											</div></li>
										<!-- END timeline item -->
										<!-- timeline time label -->
										<li class="time-label"><span class="bg-success"> 3
												Jan. 2014 </span></li>
										<!-- /.timeline-label -->
										<!-- timeline item -->
										<li><i class="fa fa-camera bg-purple"></i>

											<div class="timeline-item">
												<span class="time"><i class="fa fa-clock-o"></i> 2
													days ago</span>

												<h3 class="timeline-header">
													<a href="#">Mina Lee</a> uploaded new photos
												</h3>

												<div class="timeline-body">
													<img src="http://placehold.it/150x100" alt="..."
														class="margin"> <img
														src="http://placehold.it/150x100" alt="..." class="margin">
													<img src="http://placehold.it/150x100" alt="..."
														class="margin"> <img
														src="http://placehold.it/150x100" alt="..." class="margin">
												</div>
											</div></li>
										<!-- END timeline item -->
										<li><i class="fa fa-clock-o bg-gray"></i></li>
									</ul>
								</div>
								<!-- /.tab-pane -->

								<div class="tab-pane" id="settings">
									<form class="form-horizontal" action="/profile/update"
										method="post">
										<div class="form-group">
											<label for="inputEmail">닉네임</label> <label class="spin"
												id="updateComNameSpin" style="display: none;"></label> <label
												id="comNickNameCheck" style="display: none;"></label>
											<div class="col-sm-10">
												<input type="text" class="form-control" id="inputNickname"
													name="nickname" value="${member.nickname }"
													required="required" onchange="nicknameCheck();">
											</div>
										</div>
										<div class="form-group">
											<label for="inputName2" class="col-sm-2 control-label">휴대폰
												번호</label>

											<div class="col-sm-10">
												<input type="text" class="form-control" id="inputPhone"
													name="phone" value="${member.phone }" required="required">
											</div>
										</div>

										<div class="form-group">
											<label for="inputSkills" class="col-sm-2 control-label">E-Mail</label>

											<div class="col-sm-10">
												<input type="email" class="form-control" id="inputEmail"
													name="email" value="${member.email }" required="required">
											</div>
											<input type="hidden" name="userId" value="${member.userId }"
												id="userId"> <input type="hidden" id="updatePw"
												value="${member.pw }">
										</div>
										<!-- <div class="form-group">
											<div class="col-sm-offset-2 col-sm-10">
												<div class="checkbox">
													<label> <input type="checkbox"> I agree to
														the <a href="#">terms and conditions</a>
													</label>
												</div>
											</div>
										</div> -->
										<div class="form-group">
											<div class="col-sm-offset-2 col-sm-10">
												<button type="button" onclick="profileUpdate();"
													class="btn btn-danger">수정</button>
											</div>
										</div>
									</form>
								</div>
								<!-- /.tab-pane -->
							</div>
							<!-- /.tab-content -->
						</div>
						<!-- /.card-body -->
					</div>
					<!-- /.nav-tabs-custom -->
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container-fluid -->
	</section>
	<!-- /.content -->
</div>
<!-- /.content-wrapper -->
<%@include file="../modal/imgUploadSingle.jsp"%>
<%@include file="include/footer.jsp"%>