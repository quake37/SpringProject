<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta id="_csrf" name="_csrf" content="${_csrf.token}" />
<!-- default header name is X-CSRF-TOKEN -->
<meta id="_csrf_header" name="_csrf_header"
	content="${_csrf.headerName}" />

<link rel="stylesheet" href="/resources/user/jquery-ui-datepicker/jquery-ui.min.css" type="text/css" />
<div class="modal fade" id="ReservationRoom" tabindex="-1"
	role="dialog" aria-labelledby="exampleModalCenterTitle"
	aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="ReservationRoomTitle">스터디카페 예약신청란</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form method="post" action="/reservation/insert" id="Reservation">
					<div class="box-body">
					
						<div class="form-group">
						
							<label for="userid">신청자 아이디 </label>				
							<input type="text" name="userid" class="form-control col-xl-11" id="ReservationID"
								readonly="readonly" value="<sec:authentication property="principal.username"/>">

						</div>
						<div class="form-group">
						
							<label for="userid">스터디카페명 </label>				
							<input type="text" name="roomname" class="form-control col-xl-11" id="ReservationRoomname"
								readonly="readonly"  value="${room.roomname }">

						</div>

						<div class="form-group">
						
							<label for="inputEmail">모집인원(작성자 포함)</label>
                            <input id="total_people" name="people" min="1" value="1" type="number" style="ime-mode:disabled;" onkeypress="return digit_check(event)" class="form-control validate col-xl-2" numberOnly>
						</div>
						
						<div class="form-group">
						
							<label for="inputEmail">예약날짜 </label> 
							 <input id="expire_date" name="resdate" type="text" class="form-control validate col-xl-7 col-lg-8 col-md-8 col-sm-7"
                                        data-large-mode="true" required >
						</div>
						
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token }">
							<input type="hidden" name="rno" value="${room.rno}">
					</div>
					<div class="box-footer">
						<button class="btn btn-primary" type="submit" >예약하기</button>
					</div>
					 
				</form>
			</div>

		</div>
	</div>
</div>
  	<script src="/resources/user/js/jquery-3.3.1.min.js"></script>
    <!-- https://jquery.com/download/ -->
    <script src="/resources/user/jquery-ui-datepicker/jquery-ui.min.js"></script>
    <!-- https://jqueryui.com/download/ -->
    <script src="/resources/user/js/bootstrap.min.js"></script>
<script>
$('.modal').on('hidden.bs.modal', function (e) {
    console.log('modal close');
  $(this).find('form')[0].reset()
});
$(function () {
    $('#expire_date').datepicker();
});
function digit_check(evt){
    var code = evt.which?evt.which:event.keyCode;
    if(code < 48 || code > 57){
        return false;
    }
}

</script>