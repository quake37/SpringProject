<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet"
	href="/resources/com/dist/css/imgUploadSingle.css" type="text/css" />


<div class="modal fade" id="imgModalUpload" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">

				<!-- general form elements -->
				<div class="card card-primary">
					<div class="card-header" >
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
									<input type="file" class="custom-file-input"
										id="exampleInputFile"> <label
										class="custom-file-label" for="exampleInputFile">Choose
										file</label>
								</div>
								<div class="input-group-append">
									<span class="input-group-text" id="">Upload</span>
								</div>
							</div>
						</div>
						
					<!-- /.card-body -->

					<div class="card-footer">
						<button type="submit" class="btn btn-primary">등록</button>
					</div>
				</form>

			</div>
		</div>

	</div>

