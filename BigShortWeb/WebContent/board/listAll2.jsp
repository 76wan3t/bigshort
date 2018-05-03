<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%-- <%@ include file="../header.jsp" %> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>자유게시판</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="css/bootstrap.css">
<style type="text/css">
	body{
	font-size: 13px;
	font-family: 'Noto Sans KR',Tahoma,sans-serif;
	font-weight: 400;
	color: #717171;
	}
	#container{
		margin-top:132px;
	}
	div{
	 margin: 0;
	 padding: 0;
	}
	h2{
	 margin: 0;
	 padding: 0;
	}
	#content{
		width: 1000px;
		margin: 0 auto;
		padding: 22px 0 100px;
	}
	.sub_title{
		position: relative;
		height: 62px;
		overflow: hidden;
		position: absolute;
		top:0;
	}
	
		.sub_title_wrap h2{
		font-size: 34px;
		font-weight: 500;
		color: #767067;
		text-align: center;
		line-height: 38px;
	}
	.tab_type{
		box-shadow: 1px 1px 4px rgba(0,0,0,0.34);
	}
	.tab_type>.btn_tab{
		display: table;
		table-layout: fixed;
		width: 100%;
	}
	ul{
	list-style: none;
	margin: 0;
	padding: 0;
	}
	.tab_type>.btn_tab>li{
		display: table-cell;
		position: relative;
		vertical-align: middle;
	}
	li{
		list-style: none;
		margin: 0;
		padding: 0;
	}
	.tab_type>.btn_tab>li.active a{
		background-color: #fff;
		border-bottom: 1px solid #fff;
		color:#38474f;
	}
	.tab_type>.btn_tab>li a:hover {
		background-color: #fff;
		border-bottom: 1px solid #fff;
		color:#38474f;
	}
	.tab_type>.btn_tab>li a{
		display: block;
		width: 100%;
		height: 100%;
		background-color: #faf8f7;
		border-top: 1px solid #fbf9f8;
		border-bottom: 1px solid #f2f0ef;
		font-size: 20px;
		font-weight: 500;
		color:#808486;
		text-align: center;
		line-height: 54px;
	}
	a{
		/* color:#666; */
		text-decoration: none;
	}
	.notice .notice_area .tab_content_wrap{
		padding: 50px 70px 45px;
	}
	.tab_type>.tab_content_wrap{
		background-color: #fff;
	}
	.tab_type .tab_content.active{
		display: block;
	}
	form{
		margin: 0;
		padding: 0;
	}
	input{
		font-size: 13px;
		font-family: 'Noto Sans KR',Tahoma,sans-serif;
		font-weight: 400;
		color:#717171;
		vertical-align: middle;
		margin: 0;
		padding: 0;
	}
	.notice .notice_area .form_group{
		margin: 0 auto;
	}
	.form_group .form_field:first-child{
		margin-left: 0;
	}
	.form_group .form_field{
		float:left;
		margin: 0 -2px 0 10px;
	}
	
	.notice .notice_area .form_group .sel_box{
		width: 90px;
	}
	.sel_box{
		display: inline-block;
		height: 34px;
		background-color: #fff;
		border: 1px solid #bebebe;
		line-height: 36px;
		font-size: 14px;
		color: #666;
		vertical-align: middle;
		text-align: left;
	}
	.sel_box select{
		display: block;
		width: 100%;
		height: 100%;
		padding: 0 0 0 5px;
		border: 0;
	}
	select {
	font-size: 13px;
	font-family: 'Noto Sans KR',Tahoma,sans-serif;
	font-weight: 400;
	color: #717171;
	vertical-align: middle;
	}
	
	.form_item{
		display: inline-block;
		position: relative;
		vertical-align: middle;
	}
	.notice .notice_area .form_group .i_text{
		width: 255px;
	}
	.form_item .i_text{
		position: relative;
		z-index: 5;
		border: 1px solid #bebebe;
		
	}
	input[type='text']{
		height: 34px;
		padding-left: 10px;
		line-height: 36px;
		font-size: 14px;
	}
	.form_group:after{
		display: block;
		content: '';
		clear : both;
	}
	.notice .notice_area .form_group .btn{
		width: 150px;
	}
	.btn_srch .btn_txt{
		color: #fff;
	}
	a.btn{
		display: inline-block;
		height: 34px;
		padding: 0 10px;
		border: 2px solid #0078ae;
		font-size: 14px;
		font-weight : 500;
		color: #0078ae;
		text-align: center;
	}
	.btn_srch{
		background-color: #38474f !important;
		border-color: #38474f !important;
	}
	a.btn .btn_txt{
		display: inline-block;
		vertical-align: middle;
	}
	
	.notice .notice_area .srch_result{
		margin-top: 15px;
		font-size: 14px;
		color: #f06418;
		text-align: right;
		line-height: 30px;
	}
	p{
		margin: 0;
		padding: 0;
	}
	.tbl_lst{
		width: 100%;
	}
	table{
		border-collapse: collapse;
		border-spacing: 0;
	}
	.tbl_lst th{
		border-top:1px solid #717171;
		font-size: 14px;
		font-weight: 500;
		color: #38474f;
		height: 44px;
		border-bottom: 1px solid #e2ddd5;
		text-align: center;
	}
	th{
	font-family: 'Noto Sans KR',Tahoma,sans-serif;
	margin: 0;
	padding: 0;
	}
	.tbl_lst td{
		font-size: 14px;
		color: #717171;
		height: 44px;
		border-bottom: 1px solid #e2ddd5;
		text-align: center;
	}
	.tbl_lst tr:hover td{
		background-color: #faf8f7;
		color:#38474f;
	}
	td{
		font-family: 'Noto Sans KR',Tahoma,sans-serif;
		font-weight: 400;
		padding: 0;
		margin: 0;
	}
	.tbl_lst td>a {
		display: block;
		overflow: hidden;
		width: 500px;
		padding: 0 20px;
		text-align: left;
		color: #717171;
		text-overflow: ellipsis;
		word-break: break-all;
		white-space: nowrap;
	}
	.pagination{
	text-align: center;
	}

	.pagination > .active > a {
		background-color: #B7F0B1;
		border-color: #B7F0B1;
	}
	
	.pagination > .active > a:hover {
		background-color: #A5DE9F;
		border-color: #A5DE9F;
	}
	
</style>
</head>
<body>
<!-- 콘테이너  -->
<!-- 콘테이너 -->
<div id="container">
			<!--  content -->
			<div id="content" class="notice">
				
				<div class="sub_title">
				<div class="sub_title_wrap">
						<h2>공지사항</h2>
				</div>
				</div>
				<!-- sub_title -->
				
				<div class="notice_area">
					<div class="tab_type">
						<ul class="btn_tab">
							<li class="active"><a href="#">게시글</a></li>
							<li><a href="#">자유컬럼</a></li>
						</ul>
						<div class="tab_content_wrap">
							<div class="tab_content active">
								<form id="searchForm" name=searchForm" action="#" method="post">
									<input type="hidden" id="type" name="type" value="N">
									<input type="hidden" id="pageNo" name="pageNo" value="1">
									<div class="form_group" style="width:530px;">
										<div class="form field">
											<div class="sel_box">
												<select id="search" name="search">
													<option value="subject" selected="">제목</option>
													<option value="content">내용</option>
													<option value="all">제목+내용</option>
												</select>
											</div>
										</div>
										<div class="form_field">
											<div class="form_item">
												<input type="text" id="conditionTemp" name="conditionTemp" class="i_text" value="">
												<input type="hidden" id="condition" name="condition" class="i_text" value="">
											</div>
										</div>
										<div class="form_field">
											<a href="javacript:fncSearch();" class="btn btn_srch"><span class="btn_txt">검색</span></a>
										</div>
									</div>
								</form>
								<p class="srch_result">게시글수:<span>1</span>건</p>
								<table class="tbl_lst">
									<colgroup>
										<col width="100px">
										<col>
										<col width="150px">
										<col width="105px">
									</colgroup>
									<thead>
										<tr>
											<th class="tbl_num">번호</th>
											<th class="tbl_name">제목</th>
											<th class="tbl_writer">글쓴이</th>
											<th class="tbl_date">등록일</th>
											<th class="tbl_views">조회</th>
										</tr>
									</thead>
									<tbody>
									<tr>
											<td>267</td>
											<td><a href="" onclick="">도미노</a></td>
											<td>글쓴이</td>
											<td>2018-04-06</td>
											<td>6857</td>
										</tr>
										
											
									</tbody>
								</table>
								
								<form id="insert" name="insert" action="#"  method="post">
             						 <input type="button" value="게시글 작성" class="w3-button w3-black" id="btn_submit2">
             						 <input type="hidden" value="<%-- ${sessionScope.loginUser.mid } --%>" name="hidden_id">
        						</form>
        						
        	<div class="text-center">
						<ul class = "pagination">
							<c:if test="${pageMaker.prev}">
							<li>
								<a href="boardlist.bizpoll?page=${pageMaker.startPage - 1}">&laquo;</a>
							</li>
							</c:if>
							
							<!--c아웃은 버튼을 눌렀을때 호버 상태가 되어있게 해주는것  -->
							<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
								<li <c:out value="${pageMaker.criDto.page == idx? 'class=active':''}"/>>
									<a href="boardlist.bizpoll?page=${idx}">${idx}</a>
								</li>							
							</c:forEach>
							
							
							
							<c:if test="${pageMaker.next}">
							<li>
								<a href="boardlist.bizpoll?page=${pageMaker.endPage + 1}">&raquo;</a>
							</li>
							</c:if>
						</ul>
					
					
					
				</div>
        						
							</div>
						</div>
					</div>
				</div>				
			</div>

</div>

</body>
</html>