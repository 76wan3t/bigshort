<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/BigShortWeb/css/newboard.css?var=1">
<style type="text/css">

	#header a{
		text-decoration: none;
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
	$(".pull-left").on("click", function() {
		
		location.href = "/BigShortWeb/listAll.bigshort"
	});	
});
</script>
</head>
<body>
	<div>
		<div class="container">
	      <form id ="insert" name="insert" action="../boardinsertsave.bigshort" method="post" enctype="multipart/form-data" >
			<table class="table table-bordered">
			
			   <thead>
			    <caption> <h1 id="new_h1">새 글 쓰기</h1> </caption>
				    <tbody>
				            <tr>
				                <th>제목 : </th>
				                <td><input type="text" placeholder="제목을 입력하세요." name="title" id="title" class="form-control"/></td>
				            </tr>
				            <tr>
				                <th>작성자 : </th>
				                <td><input type="text" name="writer"  class="form-control" readonly="readonly" value="${mid}"></td>
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
				                </td>
				            </tr>
				    </tbody>
			    </table>
	        </form>
	    </div>
	</div>
</body>
</html>

<%@ include file = "../footer.jsp" %>