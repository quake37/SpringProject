var token = $("meta[name='_csrf']").attr("content");
var header = $("meta[name='_csrf_header']").attr("content");
var idReg = /^[a-z0-9]{6,20}$/g;
var regExp =/[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]/gi;
var userid,nickname;
var timeout,timeout2;
var delay = 2000;
var delay2 = 2000;// 2 seconds
var check1 = false;
var check2 = false;

$(function() { $("input:text").keydown(function(evt) { if (evt.keyCode == 13) return false; }); });


$(document).ready(function() {
	$("#RegisterComId").on("change", function() {
		userid = $("#RegisterComId").val();
		checkUserId(userid);
		
	});
	$("#RegisterComName").on("change", function() {
		nickname = $("#RegisterComName").val();
		checkUserName(nickname);
	});
});

function checkUserName(nickname) {
	if(!regExp.test(nickname)){
		regExp.test(nickname);
		$("#comNickNameCheck").hide(500);
		$("#RegisterComNameSpin").show(500);
		if(timeout2) {
		       clearTimeout(timeout2);
		    }
		    timeout2 = setTimeout(function() {
		    	
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
			                	$("#comNickNameCheck").text("이미 사용중인 아이디입니다.");
			                	$("#comNickNameCheck").show(500);
			                	check2=false;
			                } else {
			                	$("#RegisterComNameSpin").hide(500);
			                	$("#comNickNameCheck").css({"color":"#9c9b7a"});
			                	$("#comNickNameCheck").text("사용가능한 아이디입니다.");
			                	$("#comNickNameCheck").show(500);
			                	check2=true;
			                }  	
			            },
			            error : function(request,status,error) {	                
			            	  alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);

			            }
				  });
		    }, delay2);
	}else{
		regExp.test(nickname);
		$("#comNickNameCheck").css({"color":"#f54f29"});
		$("#comNickNameCheck").text("특수문자가 포함되어있습니다.");
		$("#comNickNameCheck").show(500);
		check2=false;
	}
}


function checkUserId(userid) {
	if(!idReg.test(userid)){
		idReg.test(userid);
		$("#comIdCheck").css({"color":"#f54f29"});
		$("#comIdCheck").text("6~20자 영문자 또는 숫자이어야 합니다.");
		$("#comIdCheck").show(500);
		check1=false;
	}else{
		idReg.test(userid);
		$("#comIdCheck").hide(500);
		$("#RegisterComIdSpin").show(500);
		if(timeout) {
	       clearTimeout(timeout);
	    }
	    timeout = setTimeout(function() {
	    	
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
		                	$("#comIdCheck").show(500);
		                	check1=false;
		                } else {
		                	
		                	$("#RegisterComIdSpin").hide(500);
		                	$("#comIdCheck").css({"color":"#9c9b7a"});
		                	$("#comIdCheck").text("사용가능한 아이디입니다.");
		                	$("#comIdCheck").show(500);
		                	check1=true;
		                }  	
		            },
		            error : function(request,status,error) {	                
		            	  alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);

		            }
			  });
	    }, delay);
		 
	}
}

function DosignUp() {
	if(!check1){
		$("#RegisterComId").focus();
		alert("아이디를 확인해주세요.");
		return false;
	}
	
}