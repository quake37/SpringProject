<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<%@include file="include/header.jsp"%>



  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>지점 소개등록 양식</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">지점 소개등록 양식</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <!-- left column -->
          <div class="col-md-12">
            <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">지점 소개 등록</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form role="form">
                <div class="card-body">
                  <div class="form-group">
                    <label for="InputFile1">스터디룸 사진(풍경)</label>
                    
                    <div class="input-group">
                      <div class="custom-file">
                        <input type="file" multiple="multiple" class="custom-file-input" id="inputFile1" onchange="showFile();">
                        <label class="custom-file-label" for="exampleInputFile" id="fileLabel1">사진1</label>

                      </div>
                   		&nbsp;
                      <div class="custom-file">
						<input type="file" multiple="multiple" class="custom-file-input" id="inputFile2" onchange="showFile();">
                        <label class="custom-file-label" for="exampleInputFile" id="fileLabel2">사진2</label>
                      </div>
                   
                   		 &nbsp;
                      <div class="custom-file">
                        <input type="file" multiple="multiple" class="custom-file-input" id="inputFile3" onchange="showFile();">
                        <label class="custom-file-label" for="exampleInputFile" id="fileLabel3">사진3</label>
      
                      </div>
                   
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="presentaion1">소개글 1</label>
                    <input type="password" class="form-control" id="presentation1" placeholder="위 사진들의 소개글을 입력해주세요.">
                  </div>
                  <div class="form-group">
                    <label for="InputFile1">기타시설 사진</label>
                    
                    <div class="input-group">
                      <div class="custom-file">
                        <input type="file" multiple="multiple" class="custom-file-input" id="inputFile4" onchange="showFile();">
                        <label class="custom-file-label" for="exampleInputFile" id="fileLabel4">사진4</label>

                      </div>
                   		&nbsp;
                      <div class="custom-file">
						<input type="file" multiple="multiple" class="custom-file-input" id="inputFile5" onchange="showFile();">
                        <label class="custom-file-label" for="exampleInputFile" id="fileLabel5">사진5</label>
                      </div>
                    </div>
                  </div>
                   <div class="form-group">
                    <label for="presentaion2">소개글 2</label>
                    <input type="password" class="form-control" id="presentation2" placeholder="위 사진의 소개글을 입력해주세요.">
                  </div>
                      <!-- textarea -->
                  <div class="form-group">
                    <label>소개글 3</label>
                    <textarea class="form-control" rows="4" placeholder="간단한 지점 소개글을 작성해주세요.(가격, 시설 등)"></textarea>
                  </div>
                <input type="button"  value="주소검색" onclick="goPopup();">
                
                <input type="text" id="roadAddrPart1" style="width:85%"></td>
                
                <input type="text" id="addrDetail" style="width:40%" value="">
                <input type="text" id="roadAddrPart2"  style="width:40%" value="">
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Submit</button>
                  
                </div>
              </form>
            </div>
            <!-- /.card -->     
          </div>
          <!--/.col (right) -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
<script>
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
		var inputFile = $('#inputFile1').val();

		$('#fileLabel1').html(inputFile);
	}

	function upload() {
		var inputFile = $('#inputFile1');
		var formData = new FormData();

		if (!fileCheck(inputFile.name, inputFile.size))
			return false;
		//formData.append("uploadFile", inputFile);

		/* $.ajax({
			url : "/profile/imgUpload",
			processData : false,
			contentType : false,
			data : formData,
			type : 'POST',
			dataType : 'json',
			success : function(result) {
				alert('업로드가 완료되었습니다');
			}
		}); */
	}
	
	function goPopup(){
		// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
	    var pop = window.open("/register/location","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
	    
		// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
	    //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
	}
	
	function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn
			, detBdNmList, bdNm, bdKdcd, siNm, sggNm, emdNm, liNm, rn, udrtYn, buldMnnm, buldSlno, mtYn, lnbrMnnm, lnbrSlno, emdNo){
			// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
			document.form.roadAddrPart1.value = roadAddrPart1;
			document.form.roadAddrPart2.value = roadAddrPart2;
			document.form.addrDetail.value = addrDetail;
			document.form.zipNo.value = zipNo;
	}
</script>

<%@include file="include/footer.jsp"%>