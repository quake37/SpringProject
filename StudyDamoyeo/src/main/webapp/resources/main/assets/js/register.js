
$(document).ready(function() {
	 var idReg = /^[a-z0-9]{6,20}$/g;
	 var regExp = /[\{\}\[\]\/?.,;:|\)*~`!^\-+<>@\#$%&\\\=\(\'\"]/gi;


	$("#RegisterComId").on("input", function() {
		var userid = $("#RegisterComId").val();
		
		if(!idReg.test(userid)){
			$("#comIdCheck2").text("if문 : "+idReg.test(userid));
			$("#comIdCheck").text("6~20자 영문자 또는 숫자이어야 합니다.");
			$("#comIdCheck").show(500);
			$("#RegisterComId").focus();
		}else{
			$("#comIdCheck2").text("else문 : "+idReg.test(userid));
			$("#comIdCheck").hide();
			alert(userid);
			  $.ajax({
		            async: true,
		            type : 'POST',
		            data : userid,
		            url : "/member/idcheck",
		            dataType : "json",
		            contentType: "application/json; charset=UTF-8",
		            success : function(data) {
		            	if (data.cnt > 0) {
		                    alert("아이디가 존재합니다. 다른 아이디를 입력해주세요.");
		                    //아이디가 존제할 경우 빨깡으로 , 아니면 파랑으로 처리하는 디자인
          
		                } else {
		                    alert("사용가능한 아이디입니다.");
		                    //아이디가 존제할 경우 빨깡으로 , 아니면 파랑으로 처리하는 디자인
		                  
		                    //아이디가 중복하지 않으면  idck = 1 
		                    idck = 1;	                    
		                }  	
		            },
		            error : function(request,status,error) {	                
		            	  alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);

		            }
			  });
		}
	});
	
	
	
});