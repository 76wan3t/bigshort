<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style type="text/css">

	#header{
		position: static;
	}
	#header a{
		text-decoration: none;
	}
	th{
		width: 62px;
		padding-top: 10px;
		text-align: right;
	}
	#content{
		height: 400px;
		width: 700px;
	}
	.form-control{
		width: 700px!important;
		margin-top: 15px;
		margin-left: 5px;
	}
	.container{
		margin: 0 auto;
		width: 50%;
	}
	
	.list{
		float: right;
		background-color: #f1404b;
		border: none;
		color: white;
		text-align: center;
		text-decoration: none;
		display: inline-block;
		cursor: pointer;
		padding: 1px 8px 1px 8px;
		margin-top: 5px;
		margin-right: 5px;
	}
	.list:hover{
	
		box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 
					0 6px 20px 0 rgba(0, 0, 0, 0.19);
	}
	
	.pull-right{
	
		float: right;
		color: #fff;
    		background-color: #449d44;
    		border-color: #398439;
		border: none;
		text-align: center;
		text-decoration: none;
		display: inline-block;
		cursor: pointer;
		padding: 1px 8px 1px 8px;
		margin-top: 5px;
		margin-right: 5px;
		padding-left: 20px;
    		padding-right: 20px;
    		letter-spacing: 1px;
	}
	.pull-right:hover{
	
		box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 
		0 6px 20px 0 rgba(0, 0, 0, 0.19);
		
	}
	.pull-left{
		float: left;
		color: #333;
    		background-color: #fff;
    		border-color: #ccc!important;
		text-align: center;
		text-decoration: none;
		display: inline-block;
		cursor: pointer;
		padding: 1px 8px 1px 8px;
		margin-top: 5px;
		margin-right: 5px;
	}
	.pull-left:hover{	
		box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 
				0 6px 20px 0 rgba(0, 0, 0, 0.19);
	}
	#label{
		float: right;
		background-color: #f1404b;
		border: none;
		color: white;
		text-align: center;
		text-decoration: none;
		display: inline-block;
		cursor: pointer;
		margin-top: 15px;
	}
	#label:hover{
		box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 
				0 6px 20px 0 rgba(0, 0, 0, 0.19);
	}
	.upload-name { 
		width : 614px;
		display: inline-block; 
		padding: 5px 5px; /* label의 패딩값과 일치 */ 
		font-size: inherit; 
		font-family: inherit; 
		line-height: normal; 
		vertical-align: middle; 
		background-color: white; 
		border: 1px solid #ebebeb; 
		border-bottom-color: #e2e2e2; 
		border-radius: .25em; 
		-webkit-appearance: none; /* 네이티브 외형 감추기 */ 
		margin-top: 15px;
		margin-left: 5px;
	}
	.btn{
	    	display: inline-block;
    		padding: 6px 12px;
    		margin-bottom: 0;
    		font-size: 14px;
    		font-weight: normal;
    		line-height: 1.42857143;
    		text-align: center;
    		white-space: nowrap;
    		vertical-align: middle;
    		-ms-touch-action: manipulation;
    		touch-action: manipulation;
    		cursor: pointer;
    		-webkit-user-select: none;
    		-moz-user-select: none;
    		-ms-user-select: none;
    		user-select: none;
    		background-image: none;
    		border: 1px solid transparent;
    		border-radius: 4px;
	}
	#file_td{
		margin-top: 15px;
	}
	.table-bordered{
		border-color: #ddd;
		margin-bottom: 20px;
   		background-color: #fff;
    		border: 1px solid #ddd;
    		border-radius: 4px;
   		box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
	}

	
</style>
<script type="text/javascript">
$(document).ready(function() {
		
		$("#files").on("change", function(){
			
			var filename = $(this)[0].files[0].name;
			
			$('.upload-name').val(filename);

		});
		
	// 게시글 등록 버튼을 클릭하면 이벤트 처리
	$(".pull-right").on("click", function() {
			
			$("#insert").submit();
	});	
	$(".list").on("click", function() {
		
		location.href = "boardlist.bizpoll"
	});	
});
</script>
</head>
<body>
	<div>
		<div class="container">
	      <form id ="insert" name="insert" action="boardinertsave.bizpoll" method="post" enctype="multipart/form-data" >
			<table class="table table-bordered">
			
			   <thead>
			    <caption> <h1>새 글 쓰기</h1> </caption>
				    <tbody>
				            <tr>
				                <th>제목 : </th>
				                <td><input type="text" placeholder="제목을 입력하세요." name="title" id="title" class="form-control"/></td>
				            </tr>
				            <tr>
				                <th>작성자 : </th>
				                <td><input type="text" name="writer"  class="form-control" readonly="readonly" value="${id}"></td>
				            </tr>
				            <tr>
						<th >첨부파일 : </th>
						<td id="file_td">
							<span class="filter-50">
								<input class="upload-name" value="파일선택" disabled="disabled">
								<input type="file" name="files" id="files" style="display: none">
								<label for="files" id="label" class="btn">파일 첨부</label>
							</span>
						</td>
					    </tr>
				            <tr>
				                <th>내용 : </th>
				                <td><textarea cols="10" placeholder="내용을 입력하세요. " name="content" class="form-control" id="content"></textarea></td>
				            </tr> 
				            <tr>
				                <td colspan="2">
				                    <input type="button" value="등록" class="btn pull-right"/>
				                    <input type="button" value="취소" class="btn pull-left"/>
				                    <input type="button" value="글 목록" class="btn list" />
				                </td>
				            </tr>
				    </tbody>
			    </table>
	        </form>
	    </div>
	</div>
</body>
</html>