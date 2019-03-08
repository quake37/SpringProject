var token = $("meta[name='_csrf']").attr("content");
var header = $("meta[name='_csrf_header']").attr("content");

$(document).ready(
		function() {
			$('.comfirmReservation1').on('click', function() {
				var tr = $(this).parent('td').parent('tr');
				var td = tr.children();
				var no = td.eq(0).text();
			
				comfirmReservation(1,no);
			});

			$('.comfirmReservation2').on('click', function() {
				var tr = $(this).parent('td').parent('tr');
				var td = tr.children();
				var no = td.eq(0).text();
			
				comfirmReservation(2,no);
			});

			function comfirmReservation(flag, no) {
				var send;
				if (flag == 1) {
					send = "1#"+no;
				} else if (flag == 2) {
					send = "-1#"+no;
				}
				
				$.ajax({
					async : true,
					type : 'POST',
					data : send,
					url : "/reservation/successReservation",
					dataType : "json",
					contentType : "application/json",
					beforeSend : function(xhr) {
						xhr.setRequestHeader(header, token);
					},
					success : function(data) {
						if(data.response=="success"){
							alert("예약확인하셨습니다.");
							location.reload();
						}else if(data.response=="cancle"){
							alert("취소하셨습니다 사유를 입력해주세요.");
							location.reload();
						}
					},
					error : function(request, status, error) {
						alert("code:" + request.status + "\n" + "message:"
								+ request.responseText + "\n" + "error:"
								+ error);

					}
				});

			}

		});
