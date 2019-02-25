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
            <h1>지점 등록 양식</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">지점 등록 양식</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
        
        	 <div class="col-md-12">
            <!-- general form elements -->
            <div class="card card-secondary">
              <div class="card-header">
                <h3 class="card-title">지점 등록 예시</h3>
              </div>
              <img class="img-fluid mb-3" src="/resources/main/images/roomExample.png" alt="" />
             
            </div>
            <!-- /.card -->     
          </div>
          <!-- left column -->
          <div class="col-md-12">
            <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">지점 등록란</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form role="form" method="post" enctype="multipart/form-data"
					action="/room/insertRoom">
                <div class="card-body">
                 <div class="form-group">
                    <label for="roomname">지점 이름</label>
                    <input type="text" class="form-control col-sm-4" id="roomname" name="roomname" placeholder="지점명을 입력해주세요.">
                  </div>
                
                  <div class="form-group">
                    <label for="InputFile1">스터디룸 사진(풍경)</label>
                    
                    <div class="input-group">
                      <div class="custom-file">
                        <input type="file" class="custom-file-input" id="inputFile1" name="img1" onchange="showFile(1);">
                        <label class="custom-file-label" for="exampleInputFile" id="fileLabel1">사진1</label>

                      </div>
                   		&nbsp;
                      <div class="custom-file">
						<input type="file" class="custom-file-input" id="inputFile2" name="img2" onchange="showFile(2);">
                        <label class="custom-file-label" for="exampleInputFile" id="fileLabel2">사진2</label>
                      </div>
                   
                   		 &nbsp;
                      <div class="custom-file">
                        <input type="file" class="custom-file-input" id="inputFile3" name="img3" onchange="showFile(3);">
                        <label class="custom-file-label" for="exampleInputFile" id="fileLabel3">사진3</label>
                      </div>
                   
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="presentaion1">소개글 1</label>
                    <input type="text" class="form-control" id="presentation1" name="presentation1" placeholder="위 사진들의 소개글을 입력해주세요.">
                  </div>
                  <div class="form-group">
                    <label for="InputFile1">기타시설 사진</label>
                    	<div class="input-group">
                      		<div class="custom-file">
                       			 <input type="file" class="custom-file-input" id="inputFile4" name="img4" onchange="showFile(4);">
                       			 <label class="custom-file-label" for="exampleInputFile" id="fileLabel4">사진4</label>
                     		 </div>
                   			&nbsp;
                      		<div class="custom-file">
								<input type="file" class="custom-file-input" id="inputFile5" name="img5" onchange="showFile(5);">
                       		 <label class="custom-file-label" for="exampleInputFile" id="fileLabel5">사진5</label>
                    	  </div>
                   		 </div>
                  </div>
                   <div class="form-group">
                    <label for="presentaion2">소개글 2</label>
                    <input type="text" class="form-control" id="presentation2" name="presentation2" placeholder="위 사진의 소개글을 입력해주세요.">
                  </div>
                      <!-- textarea -->
                  <div class="form-group">
                    <label>소개글 3</label>
                    <textarea class="form-control" id="presentation3" name="presentation3" rows="4" placeholder="간단한 지점 소개글을 작성해주세요.(가격, 시설 등)"></textarea>
                  </div>
               	  <div class="form-group">
               		 	<label for="loacation1">우편번호</label><br>
                 	 <div class="input-group">
						<input class="form-control col-sm-2" type="text" id="No" name="location1" style="width:30%" value="">
						<input class="btn btn-primary" type="button"  value="주소검색" onclick="goPopup();">
               	 	 </div>
              	  </div>
              		 <div class="form-group">
                	 <label for="loacation2">상세 주소</label><br>
                		<input  class="form-control col-sm-4"type="text" id="AddrPart1"  name="location2"  style="width:85%" value="">
                		 <div class="input-group">
                			<input  class="form-control col-sm-6"type="text" id="Detail"  name="location3"   style="width:30%" value="">
                			<input  class="form-control col-sm-6"type="text" id="AddrPart2"  name="location4"  style="width:30%" value="">
                		</div>
                	</div>
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Submit</button>
                  
                </div>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token }">
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
	function showFile(num) {
		if(num==1){
			var inputFile = $('#inputFile1').val();
			$('#fileLabel1').html(inputFile);
		}else if(num==2){
			var inputFile = $('#inputFile2').val();
			$('#fileLabel2').html(inputFile);
		}else if(num==3){
			var inputFile = $('#inputFile3').val();
			$('#fileLabel3').html(inputFile);
		}else if(num==4){
			var inputFile = $('#inputFile4').val();
			$('#fileLabel4').html(inputFile);
		}else if(num==5){
			var inputFile = $('#inputFile5').val();
			$('#fileLabel5').html(inputFile);
		}
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
	    var pop = window.open("/room/location?","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
	    
		// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
	    //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
	}
	
	function jusoCallBack(AddrPart1,Detail,AddrPart2,No){
	
			$('#No').val(No);
			$('#AddrPart1').val(AddrPart1);
			$('#Detail').val(Detail);
			$('#AddrPart2').val(AddrPart2);
	}
</script>

<style type="text/css">
 /* 바탕 배경 이미지 */
.pop-address-search .pop-address-search-inner { background-image: url(http://www.0000.com/img/backImg.png);}
/* 회사 로고 이미지 */
.pop-address-search .pop-address-search-inner .logo { background: url(http://www.0000.com/img/logo.png) no-repeat; background-position:center; }

/* 바탕 배경색상 */
.pop-address-search .pop-address-search-inner { background-color:#ECECEC; }
/* 검색창 색상 */
.pop-address-search .pop-address-search-inner .wrap input { background-color:#FFFFFF; }
/* 검색버튼 색상 */
.pop-address-search .pop-address-search-inner .wrap { background-color:#FFFFFF; }
/* 본문 배경색(홀수) */
.pop-address-search .pop-address-search-inner .result table.data-col tbody tr:nth-child(odd) td {background:#FFFFFF}
/* 본문 배경색(짝수) */
.pop-address-search .pop-address-search-inner .result table.data-col tbody tr:nth-child(even) td {background:#ffd393}
</style>

<%@include file="include/footer.jsp"%>