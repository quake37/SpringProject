var token = $("meta[name='_csrf']").attr("content");
var header = $("meta[name='_csrf_header']").attr("content");
var idReg = /^[a-z0-9]{6,20}$/g;
var regExp =/[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]/gi;

var comuserid,comnickname,useruserid,usernickname;

var timeoutcom1,timeoutcom2,timeoutuser1,timeoutuser2;

var delaycom1 = 2000;
var delaycom2 = 2000;
var delayuser1 = 2000;
var delayuser2 = 2000;

var checkcom1 = false;
var checkcom2 = false;
var checkuser1 = false;
var checkuser2 = false;

$('.modal').on('hidden.bs.modal', function (e) {
    console.log('modal close');
    $("#comNickNameCheck").hide();
    $("#comIdCheck").hide();
    $("#userNickNameCheck").hide();
    $("#userIdCheck").hide();
    checkcom1 = false;
    checkcom2 = false;
    checkuser1 = false;
    checkuser2 = false;
  $(this).find('form')[0].reset()
});

$(function() { $("input:text").keydown(function(evt) { if (evt.keyCode == 13) return false; }); });


$("#RegisterComId").on("change", function() {
	comuserid = $("#RegisterComId").val();
	ComcheckUserId(comuserid);
		
});
$("#RegisterComName").on("change", function() {
	comnickname = $("#RegisterComName").val();
	ComcheckUserName(comnickname);
});


$("#RegisterUserId").on("change", function() {
	useruserid = $("#RegisterUserId").val();
	UsercheckUserId(useruserid);
		
});
$("#RegisterUserName").on("change", function() {
	usernickname = $("#RegisterUserName").val();
	UsercheckUserName(usernickname);
});

function UsercheckUserId(userid) {
	if(!idReg.test(userid)){
		idReg.test(userid);
		$("#userIdCheck").css({"color":"#f54f29"});
		$("#userIdCheck").text("6~20자 영문자 또는 숫자이어야 합니다.");
		$("#userIdCheck").show(500);
		checkuser1=false;
	}else{
		idReg.test(userid);
		$("#userIdCheck").hide(500);
		$("#RegisterUserIdSpin").show(500);
		if(timeoutuser1) {
	       clearTimeout(timeoutuser1);
	    }
		timeoutuser1 = setTimeout(function() {
	    	
	    	 $.ajax({
		            async: true,
		            type : 'POST',
		            data : userid,
		            url : "/member/idcheck",
		            dataType : "json",
		            contentType: "application/json",
		            beforeSend : function(xhr)
		            {   /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
		            	xhr.setRequestHeader(header, token);
		            },
		            success : function(data) {
		            	if (data.cnt > 0) {
		            		$("#RegisterUserIdSpin").hide(500);
		                	$("#userIdCheck").css({"color":"#f54f29"});
		                	$("#userIdCheck").text("이미 사용중인 아이디입니다.");
		                	$("#RegisterComId").focus();
		                	$("#userIdCheck").show(500);
		                	checkuser1=false;
		                } else {
		                	
		                	$("#RegisterUserIdSpin").hide(500);
		                	$("#userIdCheck").css({"color":"#9c9b7a"});
		                	$("#userIdCheck").text("사용가능한 아이디입니다.");
		                	$("#userIdCheck").show(500);
		                	checkuser1=true;
		                }  	
		            },
		            error : function(request,status,error) {	                
		            	  alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);

		            }
			  });
	    }, delayuser1);
		 
	}
}

function UsercheckUserName(nickname) {
	if(!regExp.test(nickname)){
		regExp.test(nickname);
		$("#userNickNameCheck").hide(500);
		$("#RegisterUserNameSpin").show(500);
		if(timeoutuser2) {
		       clearTimeout(timeoutuser2);
		    }
		timeoutuser2 = setTimeout(function() {
		    	
		    	 $.ajax({
			            async: true,
			            type : 'POST',
			            data : nickname,
			            url : "/member/nicknamecheck",
			            dataType : "json",
			            contentType: "application/json",
			            beforeSend : function(xhr)
			            {   /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
			            	xhr.setRequestHeader(header, token);
			            },
			            success : function(data) {
			            	if (data.cnt > 0) {
			            		$("#RegisterUserNameSpin").hide(500);
			                	$("#userNickNameCheck").css({"color":"#f54f29"});
			                	$("#userNickNameCheck").text("이미 사용중인 닉네임입니다.");
			                	$("#RegisterComName").focus();
			                	$("#userNickNameCheck").show(500);
			                	checkuser2=false;
			                } else {
			                	$("#RegisterUserNameSpin").hide(500);
			                	$("#userNickNameCheck").css({"color":"#9c9b7a"});
			                	$("#userNickNameCheck").text("사용가능한 닉네임입니다.");
			                	$("#userNickNameCheck").show(500);
			                	checkuser2=true;
			                
			                }  	
			            },
			            error : function(request,status,error) {	                
			            	  alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);

			            }
				  });
		    }, delayuser2);
	}else{
		regExp.test(nickname);
		$("#userNickNameCheck").css({"color":"#f54f29"});
		$("#userNickNameCheck").text("특수문자가 포함되어있습니다.");
		$("#userNickNameCheck").show(500);
		checkuser2=false;
	}
}

function ComcheckUserName(nickname) {
	if(!regExp.test(nickname)){
		regExp.test(nickname);
		$("#comNickNameCheck").hide(500);
		$("#RegisterComNameSpin").show(500);
		if(timeoutcom2) {
		       clearTimeout(timeoutcom2);
		    }
		timeoutcom2 = setTimeout(function() {
		    	
		    	 $.ajax({
			            async: true,
			            type : 'POST',
			            data : nickname,
			            url : "/member/nicknamecheck",
			            dataType : "json",
			            contentType: "application/json",
			            beforeSend : function(xhr)
			            {   /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
			            	xhr.setRequestHeader(header, token);
			            },
			            success : function(data) {
			            	if (data.cnt > 0) {
			            		$("#RegisterComNameSpin").hide(500);
			                	$("#comNickNameCheck").css({"color":"#f54f29"});
			                	$("#comNickNameCheck").text("이미 사용중인 닉네임입니다.");
			                	$("#RegisterComName").focus();
			                	$("#comNickNameCheck").show(500);
			                	checkcom2=false;
			                } else {
			                	$("#RegisterComNameSpin").hide(500);
			                	$("#comNickNameCheck").css({"color":"#9c9b7a"});
			                	$("#comNickNameCheck").text("사용가능한 닉네임입니다.");
			                	$("#comNickNameCheck").show(500);
			                	checkcom2=true;
			                
			                }  	
			            },
			            error : function(request,status,error) {	                
			            	  alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);

			            }
				  });
		    }, delaycom2);
	}else{
		regExp.test(nickname);
		$("#comNickNameCheck").css({"color":"#f54f29"});
		$("#comNickNameCheck").text("특수문자가 포함되어있습니다.");
		$("#comNickNameCheck").show(500);
		checkcom2=false;
	}
}


function ComcheckUserId(userid) {
	if(!idReg.test(userid)){
		idReg.test(userid);
		$("#comIdCheck").css({"color":"#f54f29"});
		$("#comIdCheck").text("6~20자 영문자 또는 숫자이어야 합니다.");
		$("#comIdCheck").show(500);
		checkcom1=false;
	}else{
		idReg.test(userid);
		$("#comIdCheck").hide(500);
		$("#RegisterComIdSpin").show(500);
		if(timeoutcom1) {
	       clearTimeout(timeoutcom1);
	    }
		timeoutcom1 = setTimeout(function() {
	    	
	    	 $.ajax({
		            async: true,
		            type : 'POST',
		            data : userid,
		            url : "/member/idcheck",
		            dataType : "json",
		            contentType: "application/json",
		            beforeSend : function(xhr)
		            {   /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
		            	xhr.setRequestHeader(header, token);
		            },
		            success : function(data) {
		            	if (data.cnt > 0) {
		            		$("#RegisterComIdSpin").hide(500);
		                	$("#comIdCheck").css({"color":"#f54f29"});
		                	$("#comIdCheck").text("이미 사용중인 아이디입니다.");
		                	$("#RegisterComId").focus();
		                	$("#comIdCheck").show(500);
		                	checkcom1=false;
		                } else {
		                	
		                	$("#RegisterComIdSpin").hide(500);
		                	$("#comIdCheck").css({"color":"#9c9b7a"});
		                	$("#comIdCheck").text("사용가능한 아이디입니다.");
		                	$("#comIdCheck").show(500);
		                	checkcom1=true;
		                }  	
		            },
		            error : function(request,status,error) {	                
		            	  alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);

		            }
			  });
	    }, delaycom1);
		 
	}
}

function DoComsignUp() {
	if(!checkcom1){
		$("#RegisterComId").focus();
		alert("아이디를 확인해주세요.");
		return false;
	}
	else if(!checkcom2){
		$("#RegisterComName").focus();
		alert("닉네임을 확인해주세요.");
		return false;
	}
	else{
		$("#RegisterCom").submit();
		alert("축하합니다. 가입되었습니다.")
	}
	
}

function DoUsersignUp(){
	if(!checkuser1){
		$("#RegisterUserId").focus();
		alert("아이디를 확인해주세요.");
		return false;
	}
	else if(!checkuser2){
		$("#RegisterUserName").focus();
		alert("닉네임을 확인해주세요.");
		return false;
	}
	else{
		$("#RegisterUser").submit();
		alert("축하합니다. 가입되었습니다.")
	}
}


////////////////////////////////////////////////////////////////////////////////////////////





