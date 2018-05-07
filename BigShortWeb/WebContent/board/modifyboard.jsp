<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/BigShortWeb/css/newboard.css?var=1">
<script type="text/javascript">
	$(document).ready(function() {
			
		//파일 업로드
			$("#files").on("change", function(){
				
				var filename = $(this)[0].files[0].name;
				
				$('.upload-name').val(filename);
	
			});
			
		// 게시글 등록 버튼을 클릭하면 이벤트 처리
		$(".pull-right").on("click", function() {
				
				$("#update").submit();
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
	      <form id ="update" name="update" action="../boardupdate.bigshort" method="post" enctype="multipart/form-data" >
			<table class="table table-bordered">
			
			   <thead>
			    <caption> <h1 id="new_h1">글 수정</h1> </caption>
				    <tbody>
				            <tr>
				                <th>제목 : </th>
				                <td><input type="text" value="${bDto.title}" name="title" id="title" class="form-control"/></td>
				            </tr>
				            <tr>
				                <th>작성자 : </th>
				                <td><input type="text" name="writer"  class="form-control" readonly="readonly" value="${bDto.writer}"></td>
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
				                <td><textarea cols="10" name="content" class="form-control" id="content">${bDto.content }</textarea></td>
				            </tr> 
				            <tr>
				                <td colspan="2">
				                    <input type="button" value="수정" class="btn pull-right"/>
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