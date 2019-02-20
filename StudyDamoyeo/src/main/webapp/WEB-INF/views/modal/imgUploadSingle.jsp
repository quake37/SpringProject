<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet"
	href="/resources/com/dist/css/imgUploadSingle.css" type="text/css" />

<script type="text/javascript">
	function fileCheck(fileName, fileSize) {
		if (fileSize >= 5242880) {
			alert('파일 사이즈가 초과했습니다');
			return false;
		}
		var regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$");
		if (regex.test(fileName)) {
			alert('해당 종류의 파일은 업로드 할 수 없습니다');
			return false;
		}
		return true;
	}
	function showFile() {
		var inputFile = $('#inputFile').val();

		$('#fileLabel').html(inputFile);
	}

	function upload() {
		var inputFile = $('#inputFile');
		var formData = new FormData();

		if (!fileCheck(inputFile.name, inputFile.size))
			return false;
		formData.append("uploadFile", inputFile);

		$.ajax({
			url : "/profile/imgUpload",
			processData : false,
			contentType : false,
			data : formData,
			type : 'POST',
			dataType : 'json',
			success : function(result) {
				alert('업로드가 완료되었습니다');
			}
		});
	}
</script>
<div class="modal fade" id="imgModalUpload" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">

				<!-- general form elements -->
				<div class="card card-primary">
					<div class="card-header">
						<h3 class="card-title">프로필 이미지 등록</h3>
					</div>
				</div>

			</div>
			<div class="modal-body">
				<form role="form">

					<div class="form-group">
						<label for="exampleInputFile">프로필 이미지 업로드</label>
						<div class="input-group">
							<div class="custom-file">
								<input type="file" class="custom-file-input" id="inputFile"
									onchange="showFile();"> <label
									class="custom-file-label" for="exampleInputFile" id="fileLabel">첨부할
									이미지를 선택해주세요</label> 
							</div>

						</div>
					</div>

					<!-- /.card-body -->

					<div class="card-footer">
						<button type="button" class="btn btn-primary" onclick="upload();">등록</button>
					</div>
				</form>

			</div>
		</div>

	</div>
</div>
