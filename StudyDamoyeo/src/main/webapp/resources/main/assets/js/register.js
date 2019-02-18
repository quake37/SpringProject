

$(document).ready(function() {
	var token = $("meta[name='_csrf']").attr("content");
	var header = $("meta[name='_csrf_header']").attr("content");
	 var idReg = /^[a-z0-9]{6,20}$/g;
	 var regExp = /[\{\}\[\]\/?.,;:|\)*~`!^\-+<>@\#$%&\\\=\(\'\"]/gi;
	 var userid;
	 var timeout;
	 var delay = 2000;   // 2 seconds
	$("#RegisterComId").on("change keyup paste", function() {
		userid = $("#RegisterComId").val();
		
		if(!idReg.test(userid)){
			$("#comIdCheck").css({"color":"#f54f29"});
			//$("#comIdCheck2").text("if문 : "+idReg.test(userid));
			$("#comIdCheck").text("6~20자 영문자 또는 숫자이어야 합니다.");
			$("#comIdCheck").show(500);
			$("#RegisterComId").focus();
		}else{
			//$("#comIdCheck2").text("else문 : "+idReg.test(userid));
			$("#comIdCheck").hide(500);
			$("#RegisterComSpin").show(500);
			if(timeout) {
		       clearTimeout(timeout);
		    }
		    timeout = setTimeout(function() {
		    	alert(userid);
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
			                    alert("아이디가 존재합니다. 다른 아이디를 입력해주세요.");
			                } else {
			                	$("#RegisterComSpin").hide(500);
			                	$("#comIdCheck").css({"color":"blue"});
			                	$("#comIdCheck").text("사용가능한 아이디입니다.");
			                	$("#comIdCheck").show(500);
			                }  	
			            },
			            error : function(request,status,error) {	                
			            	  alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);

			            }
				  });
		    }, delay);
			 
		}
	});
	
	
});