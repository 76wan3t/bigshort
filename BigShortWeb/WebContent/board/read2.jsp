<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@ include file="../header.jsp" %>
 <!DOCTYPE html>
 <html lang="ko">
 <head>
 <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <style type="text/css">
 
 a:link, a:visited {text-decoration: none; color: #656565;}
 /* 헤더 겹침 수정  */
  #header{
    position: static;
    min-width: 1180px!important;
 }
 #footer{
 	min-width: 1180px!important;
 }
	body{
	font-family:Verdana,sans-serif;
	}
	#container{
		margin-top: 132px;
	}
	div{margin: 0;padding: 0;}
	#content{width: 1000px; margin:150px auto 0px; padding:22px 0 100px;}
	body{font-size:13px;font-family:'Noto Sans KR',Tahoma,sans-serif;font-weight:400; color:#717171;}
	.sub_title{position:relative;height:62px;}
	.sub_title .sub_nav{overflow:hidden; position:absolute;top:0;right:0;}
	ul{list-style:none; margin:0; padding:0;}
	.sub_title .sub_nav li {float:left; position:relative;}
	li{list-style:none;margin:0;padding:0;}
	.sub_title .sub_nav li a {font-size:14px;color:#767067;}
	a{text-decoration:none;}
	.sub_title .sub_nav li span {font-size:14px;color:#767067;}
	.sub_title .sub_title_wrap h2{font-size:34px; font-weight:500; color:#767067;text-align: center;line-height:38px;}
	h2{margin:0;padding:0;}
	.tab_type{box-shadow:1px 1px 4px rgba(0,0,0,0.34);}
	.tab_type>.btn_tab{display:table;table-layout:fixed;width:100%;}
	/* .tab_type>.btn_tab>li.active a { background-color: #fff;border-bottom: 1px solid #fff; color: #38474f;} */
	.tab_type>.btn_tab>li a{display:block;width: 100%;height:100%;background-color:#faf8f7;border-top:1px solid #fbf9f8;border-bottom:1px solid #f2f0ef;font-size: 20px;font-weight:500; color:#808486; text-align:center; line-height:54px;}
	.tab_type>.btn_tab>li{display:table-cell;position:relative;vertical-align:middle;}
	.notice .notice_area .tab_content_wrap{padding:50px 70px 45px;}
	.tab_type>.tab_content_wrap{background-color:#fff;}
	.tbl_lst td>a {
		display: inline;
		overflow: hidden;
		width: 500px;
		text-align: center;
		color: #717171;
		text-overflow: ellipsis;
		word-break: break-all;
		white-space: nowrap;
	}
	form{margin:0;padding:0;}
	.tab_type .tab_content.active{display:block;}
	.notice .detail_title{padding:11px 0 15px; border-top:1px solid #717171; border-bottom:1px solid #e2ddd5;}
	.notice .detail_title strong{font-size:14px;font-weight:400;color:#38474f;line-height:22px;}
	.notice .detail_title ul{overflow:hidden; margin-top:12px;}
	.notice .detail_title ul li:first-child{margin-left:0;padding-left:0;border-left:0;}
	.notice .detail_title ul li{float:left; font-size:14px;color:#717171; line-height:14px;padding-left:12px;margin-left:12px;border-left:1px solid #e2ddd5;}
	.notice .detail_content{padding:36px 20px 40px; font-size:14px;color:#717171;line-height:150px;}
	
	.notice .detail_lst_view{border-top:1px solid #e2ddd5;}
	.notice detail_lst_view ul li{border-bottom:1px solid #e2ddd5;}
	.notice .detail_lst_view ul li strong{display:block;position:relative;padding-left:55px;font-weight:400;line-height:43px;}
	.notice .detail_lst_view ul li{border-bottom:1px solid #e2ddd5;}
	.notice .detail_lst_view ul li a{display:block;position:relative;padding-left:55px;font-weight:400;line-height:43px;}
	a:hover {text-decoration:none;}
	.notice .notice_detail .btn_wrap{margin-top:20px;}
	.btn_wrap{overflow:hidden;}
	.btn_wrap .btn_fix_rgt{float:right;font-size:0;}
	.notice .notice_detail .btn_wrap .btn{padding:0 20px;}
	a.btn{display:inline-block;height:34px; border:2px solid #0078ae;font-size:14px;font-weight:500; color:#0078ae; text-align: center;}
	a.btn .btn_txt{display:inline-block;vertical-align:middle;}
	
	 /* 댓글 디자인  */
 .brunch_comment{padding:0 0 80px; background-color:#fbfbfb; text-align: center;}
 .brunch_comment .wrap_comment_facebook{position:relative;}
 div{font-family: "Noto Sans Light","Malgun Gothic",sans-serif;margin:0;padding: 0;}
 .screen_out{overflow: hidden;position: absolute;width: 0;height: 0;line-height: 0;text-indent: -9999px;}
 a{color:#333; text-decoration: none;}	
 .brunch_comment .comment_head{min-width:1000px; width: 1000px; height: 30px; margin: 0 auto 12px;}
 .comment_head .tit_comment{float: left; padding-top: 3px; font-weight: 400; font-size: 16px;}
 .comment_head .tit_comment .txt_num{padding-left: 5px; color: #00c3bd;}
 .brunch_comment .comment_content{min-width:994px;width: 994px; margin: 0 auto;}
 .brunch_comment .btn_preview{width: 100%; height:47px;border-top:1px solid #ddd; font-size: 12px; line-height: 47px;color: #959595;}
 button{font-family:"Noto Sans Light","Malgun Gothic",sans-serif;border: 0 none; background-color: transparent; cursor: pointer; outline: none; border-radius: 0px; vertical-align: middle; line-height:1.5;}
 .brunch_comment .list_comment{display:block;width:100%; border-top: 1px solid #eee;}
 ul{font-family:"Noto Sans Light","Malgun Gothic",sans-serif; list-style: none; margin: 0; padding: 0;}
 .list_comment li.item{float: left; padding: 30px 0; border-bottom:1px solid #eee; width: 994px; min-width:994px;}
 .list_comment li.item:hover{background:#f8f8f8;}
 .animation_up{animation: animation_up .2s; transition:opacity 0.2s}
 li{font-family:"Noto Sans Light","Malgun Gothic",sans-serif;list-style: none; margin:0;}
 .brunch_comment .link_profile{overflow:visible;float:left;position:relative;width:42px;height:42px;margin-left:10px;}
 .list_comment .cont_info{float:left;position:relative;min-width:994px;width:994px;padding-left:20px;}
 .list_comment .info_append{width:100%;font-size: 12px;line-height:14px;}
 .list_comment .info_append .tit_userid{float:left;}
 .list_comment .info_append .link_userid{font-weight: 400;}
 .list_comment .info_append .ico_dot{float:left;width: 2px; height:2px;margin: 6px 4px 0; background-color:#e4e4e4; vertical-align:top;}
 .list_comment .info_append .txt_time{float:left;color:#959595;}
 .list_comment .desc_comment{padding:8px 50px 0 0; font-size: 14px; word-wrap:break-word;clear:left;}
 p{font-family:"Noto Sans Light","Malgun Gothic",sans-serif; margin: 0;}
 .list_comment .comment_setting{ position:absolute; right: 18px; top:-3px;}
 .comment_setting .btn_set{display:inline; margin-left:2px; font-size:12px; color:#959595;}
.brunch_comment .link_profile .img_thumb{border-radius:42px; background-color:#fff;}
.img_thumb{display:block; border:0 none;}
.list_comment  .desc_comment a.link_mention{display:inline-block; padding:0 2px; font-weight:700; background-color:#ddd; text-decoration:none;}
.wrap_comment_write{clear:both;}
.brunch_comment .comment_write{position:relative; width:1000px; padding-top:27px; margin:0 auto;}
form{font-family:"Noto Sans Light","Malgun Gothic",sans-serif;padding:0;}
input{font-family:"Noto Sans Light","Malgun Gothic",sans-serif;font-size:14px;line-height:1.5; vertical-align:middle; margin:0; padding:0;}
fieldset{font-family:"Noto Sans Light","Malgun Gothic",sans-serif; border:0 none; margin: 2px!important; padding:0!important;}
legend{font-family:"Noto Sans Light","Malgun Gothic",sans-serif; margin: 0; padding: 0;}
.comment_write .link_profile{margin:6px 0 0 10px;}
.comment_write .box_area{float:left;position:relative; border:1px solid #eee; background-color:#fff;width:865px}
.comment_write .wrap_area{display:block;}
.comment_write .tf_area{padding:17px 17px 0; width:861px; min-height:45px;border: none;line-height:22px; color:#666; background:0 0; white-space:pre-wrap; word-wrap:break-word; outline:transparent dotted; z-index:1;}
.comment_write .editor_placeholder{position:absolute; z-index:0;top:17px; left:17px; line-height:22px; color:silver;}
 textarea{font-family:"Noto Sans Light","Malgun Gothic",sans-serif;font-size:14px;vertical-align:middle; margin:0;}
 .comment_write .comment_sticker{display:none; width:64px; margin:0 0 13px 17px;}
 .brunch_comment .comment_sticker{position:relative;padding-top:10px;}
 .comment_write .write_append{height:44px; padding:10px 19px 0;}
 .comment_write .select_sticker{float:left;position:relative;padding-top:7px;}
 .comment_write .btn_sticker{float:left;width:22px;height:22px;background-position:-340px 0;}
 .ico_brunch{display:inline-block; overflow:hidden; background:url(//t1.daumcdn.net/brunch/static/img/help/pc/ico_brunch8_180227.png) no-repeat; line-height:0;text-indent:-9999px;vertical-align:top;}
 .comment_write .layer_sticker{display:none;}
 .comment_write .write_append .wrap_btn{float:right;}
 .comment_write .write_append .btn_default{width:56px;height:30px;margin-left:5px; border:1px solid #bbb;border-radius:32px; line-height:28px;color:#666;}
 .brunch_comment ._mention_list{overflow:hidden; overflow-y:auto; position:absolute; width:238px; max-height:334px; border:1px solid #d9d9d9;background-color:#fff;z-index:11;}
 #td2{margin:5px 10px 5px 10px; border-bottom: 0px; height: 200px;}
 .all_regdate {float: right;margin-right: 15px;}
 #nextpage {margin:0 auto; width:801px;}
 #nextprvtable {width: 100%; display: inline-block}
 #nextprvtable a:hover {text-decoration: underline;}
 img {margin: 0px 4px 2px 0px;} 
 #login_reple{background-color:#fbfbfb; height: 106px; width:131px;border:1px solid #c0c0c0}
 .all_tile {width: 500px;}
 #listbtn{width: 80px;margin:0 auto;}
 #btnall{text-align: center;}
 .w3-button:hover{background-color: #63BBED!important; opacity:0.7; color:#ffffff!important;}
 #modal_ul > li > a{
	color: white;
    font-size: 15px;
    
    font-family: 'Jeju Gothic', serif;
}
#bodyupdate{
	float:right;
	padding: 1px 9px;
	font-family:"Noto Sans Light","Malgun Gothic",sans-serif;
}
#bodydel{
	float:right;
	padding: 1px 9px;
	font-family:"Noto Sans Light","Malgun Gothic",sans-serif;
	margin-right: 5px;
}
.w3-table td{padding: 8px 21px!important;}
.w3-table td a{text-overflow: ellipsis;overflow: hidden; max-width:408px; height:19px;}

	
</style>
</head>
<body>
	
<!-- container -->
		<div id="container">
			<!-- content -->
			<div id="content" class="notice">

				<!-- sub_title -->
				<div class="sub_title">
					<div class="sub_title_wrap">
						<h2>묻고 답하기</h2>
					</div>
				</div>
				<!-- //sub_title -->

				<div class="notice_area">
					<div class="tab_type">
						<ul class="btn_tab">
							<li><a href="#">게시글</a></li>
							<!-- <li class="active"><a href="#">자유컬럼</a></li> -->
						</ul>
						<div class="tab_content_wrap">
							
								<div class="tab_content active">
								
									<div class="notice_detail">
									<c:forEach items="${bodylist}" var="bDto"> 
										<div class="detail_title">	
                 							 <form action="modifyview.bigshort" id="bodyupdate_go" method="get">
                 							<input type="hidden" name="bno" id="bno" value="${bDto.bno }" />
                			 			</form>
											<strong style="color:blue">${bDto.title}</strong>
												<c:if test="${fn:trim(sessionScope.loginUser.mid) eq fn:trim(bDto.writer) || fn:trim(sessionScope.loginUser.mname) eq '관리자' }">        
                 		<input type="button" value="수정" class="w3-button w3-white w3-border" id="bodyupdate">
                 	
                 		
                 		
        	 		<input type="button" value="삭제" class="w3-button w3-white w3-border" id="bodydel">
        	 	</c:if>
											<ul>
												<li class="bno">번호 ${bDto.bno}</li>
												<li class="writer">${bDto.writer}</li>
												<li class="views">조회 ${bDto.viewcnt}</li>
												<li class="regdate"><fmt:formatDate
												pattern="yyyy-MM-dd HH:mm" value="${bDto.regdate}" />
             									</li>
             									
             									<li class="filedl">첨부파일<c:if test="${bDto.filename != '-'}">
                
                     
                        							 <input type="file" id="IDX" style="display:none">(내려받는 횟수 : ${bDto.downloadcnt } )
                         							 <a href="download.bigshort?bno=${bDto.bno}"><i class="fa fa-save"></i></a>
						 							 <a href="download.bigshort?bno=${bDto.bno}">${bDto.filename }</a>
                                                     </c:if></li>
             									
											</ul>
										</div>
										
										<div class="detail_content">
										<c:set var="cmt" value="${fn:replace(bDto.content,crcn,br)}" />
										<c:set var="cmt" value="${fn:replace(cmt,cr,br)}" />
										<c:set var="cmt" value="${fn:replace(cmt,cn,br)}" />
										<c:set var="cmt" value="${fn:replace(cmt,' ',sp)}" />
										
										 <c:out value="${cmt}" escapeXml="false"/>
										
										</div>
								</c:forEach>			
								<div id="btnall2">
	   <div id="btnall">
         <c:forEach items="${bodynext}" var="bDto">
			<!--  <input type="button" id="prev" value="이전"> -->
			
			<c:if test="${fn:trim(bDto.pre_title) ne '이전글없음'}">
				<a href="boardbody.bigshort?bno=${bDto.pre_article_bno}" id="prev" class="w3-button w3-white w3-border">이전</a>
			</c:if>
			
			<a href="listAll.bigshort"id="listbtn"class="w3-button w3-white w3-border">목록</a>
			
			<!-- <input type="button" id="list_btn" value="목록" class="w3-button w3-white w3-border w3-round-large"> -->
			<!-- <input type="button" id="next" value="다음"> -->
			<c:if test="${fn:trim(bDto.next_title) ne '다음글 없음'}">
				<a href="boardbody.bigshort?bno=${bDto.next_article_bno}" id="next" class="w3-button w3-white w3-border">다음</a>
			</c:if>
		</c:forEach>
	 </div> 
	</div>
									</div>
								</div>							
						</div>
					</div>
				</div>
			</div>
			<!-- //content -->
		</div>
		<!-- //container -->
          <div class="brunch_comment #comment" style="display: block;">
          	<div id="repleyda"></div>


			

	<c:if test="${fn:trim(sessionScope.loginUser.mid) ne ''}">
     <div class="wrap_comment_write">
      <form id="replyadd" class="comment_write brunch_login" method="post" action="replyadd.bigshort">
	<div id="chat">
	<fieldset>
		<legend class="screen_out">댓글 작성 폼</legend>
		<div class="box_area">
			<label for="tfCmt" class="screen_out">댓글 작성</label>
			<span class="wrap_area">
					<textarea class="editor tf_area" id="content2" name="content" maxlength="1000" placeholder="댓글은 작성자에게 가장 큰 힘이 됩니다.!!" ></textarea>
			</span>
			<div class="comment_sticker"></div>

			<div class="write_append">

				<div class="select_sticker">
					<button type="button" class="ico_brunch btn_sticker #sticker" data-action="selectSticker">스티커</button>
					<div class="layer_sticker">
						<strong class="screen_out">스티커 카테고리 선택</strong>
						<ul class="tab_sticker">
							<li>
								<a href="#none" class="link_tab"></a>
							</li>
						</ul>
					</div>
				</div>


				
			</div>
		<ul class="_mention_list" style="display: none;"></ul></div>
		<div class="wrap_btn">
						<input type="button" id="login_reple" class="btn_default #submit" value="확인">
						<input type ="hidden" id="mid" name="mid" value="${sessionScope.loginUser.mid}">
				</div>
	</fieldset>
		</div>
		
</form>
</div>
</c:if>
<c:if test="${fn:trim(sessionScope.loginUser.mid) eq ''}">
	<div class="wrap_comment_write">
      		<form class="comment_write brunch_login" action="#" method="post" >
   <div id="chat2">
	<fieldset>
		<legend class="screen_out">댓글 작성 폼</legend>
		<div class="box_area">
			<label for="tfCmt" class="screen_out">댓글 작성</label>
			<span class="wrap_area">
					<textarea class="editor tf_area" id="content2" name="content" readonly="readonly" maxlength="1000" placeholder="로그인하셔야 댓글을 작성 할 수 있어요" ></textarea>
			</span>
			<div class="comment_sticker"></div>

			<div class="write_append">

				<div class="select_sticker">
					<div class="layer_sticker">
						<strong class="screen_out">스티커 카테고리 선택</strong>
						<ul class="tab_sticker">
							<li>
								<a href="#none" class="link_tab"></a>
							</li>
						</ul>
					</div>
				</div>

				
			</div>
		<ul class="_mention_list" style="display: none;"></ul></div>
			<div class="wrap_btn">
					<input type="button" id="login_reple" class="btn_default #submit" value="로그인" onclick="document.getElementById('id01').style.display='block'" >
				</div>
	</fieldset>
		</div>
</form>
</div>
						
					</c:if>
		        </div>
		         <div id="nextpage">
			<table id="nextprvtable" class="w3-table w3-striped">
				<c:forEach items="${bodynext}" var="bDto">
					<tr>
						<c:if test="${fn:trim(bDto.pre_title) ne '이전글없음'}">
							<td><!-- <i class="fa fa-arrow-left"></i> --><a
								href="boardbody.bigshort?bno=${bDto.pre_article_bno} " id="">
									이전글</a></td>
							<td class="all_tile"><nobr><a
								href="boardbody.bigshort?bno=${bDto.pre_article_bno} " id="">
									${bDto.pre_title}</a></nobr></td>
							<td class="all_writer">${bDto.pre_writer}</td>
							<td class="all_regdate"><fmt:formatDate pattern="yyyy-MM-dd"
									value="${bDto.pre_regdate}" /></td>
						</c:if>
					</tr>
					<tr>
						<c:if test="${fn:trim(bDto.next_title) ne '다음글 없음'}">
							<td>
							<a
								href="boardbody.bigshort?bno=${bDto.next_article_bno} " id="">
									다음글</a><!-- <i class="fa fa-arrow-right"></i> --></td>
							<td class="all_tile"><nobr><a href="boardbody.bigshort?bno=${bDto.next_article_bno} " id="">${bDto.next_title}</a></nobr></td>
							<td class="all_writer">${bDto.next_writer}</td>
							<td class="all_regdate"><fmt:formatDate pattern="yyyy-MM-dd"
									value="${bDto.next_regdate}" /></td>
						</c:if>
					</tr>
				</c:forEach>

			</table>
		</div>

<script type="text/javascript">

	function comment_list(){
		
		var bno = $("#bno").val();
		
		$.ajax({
			type : "POST",
			url : "commentlist.bigshort",
			data : "bno=" + bno,
			success : function(result) {
	
				$("#repleyda").html(result);
	
			}
		});
	} 
	
	
	
/*  	function sweet_count(){
		var bno = $("#hidden").val();
		
		$.ajax({
			type : "POST",
			url : "sweetcount.bizpoll",
			data : "bno=" + bno,
			success : function(result) {

				$("#cafe-menu").html(result);

			}
		});
		
	} */


	$(document).ready(function(){
		
		comment_list();

		
		
		var comment2 = $("#comment2").val();
		
		if(comment2 == 'ture' ){
			
			$('html, body').animate({
				
				scrollTop: $('#commentlist').offset().top
				
			});
		
			
		}
		
		$("#answer_bnt").on("click", function(){
			
			
			var bno = $("#hidden").val();
			var dd = "<%=session.getAttribute("loginUser")%>"
			
			
			
			if (dd != "null") {
				
				location.href="answer.bizpoll?bno="+bno;

			} else {
				
				alert("로그인 하셔야 답글을 달 수 있습니다.")
				$("#id01").css("display", "block");

			}
		});
		
		/* // 게시물 목록으로 넘어가는 버튼
		$("#list_btn").on("click", function(){
			
			location.href="listAll.bigshort";
			
		}); */
	
		// 게시글 등록 버튼을 클릭하면 이벤트 처리
		 $("#btn_submit").on("click", function() {
			
			var dd = "<%=session.getAttribute("loginUser")%>"
	
				if (dd != "null") {
	
					$("#insert").submit();
	
				} else {
					alert("로그인 해주세요!!!!!!")
					$("#id01").css("display", "block");
	
				}
			});
		
		
			$("#list").on("click", function(){
				
				$("#boardlist").submit();
			});
	
	
	});

		// 댓글 등록하기 위한 이벤트
		$(document).on("click", "#login_reple",function() {
			
			
		var bno = $("#bno").val();
		var mid = $("#mid").val();
		var comment = $("#content2").val();
		
			
			 $.ajax({
				url : "replyadd.bigshort",
				type : "POST",
				dataType : "json",
				data : "bno=" + bno +"&mid=" + mid +"&content=" + comment,
				success : function(data) {

					$("#content2").val("");// 댓글 등록후 내용 초기화 하는 코드
					comment_list(); // 댓글을 다시 불러드리기 위한 호출 함수
					

				},

				error : function() {
					alert("System Error!!!");

				}
			}); 
			return false; // false를 하면 등록할때 스크롤이 맨위로 올라가지 않는다.

		});
	
	
		// 댓글 삭제 이벤트
		$(document).on("click", ".rplay_del", function() {
			
				var Del = confirm("삭제 하시겠습니까?") // 클릭시 삭제할 것인지 물어보는 코드

				if (Del == true) {

					var rno = $(this).attr("data_num"); // 해당 댓글 값을 가져오는 코드

					 $.ajax({
						url : "replydel.bigshort",
						type : "POST",
						dataType : "json",
						data : "rno=" + rno,
						success : function(data) {

							comment_list(); // 삭제 완료하면 댓글을 다시 불러드리기 위한 함수 호출
							
						},

						error : function() {
							alert("System Error!!!");

						}
					}); 
					return false; // 리턴 false를 안하게 되면 스크롤이 맨위로 향하게 됨 그걸 방지하기 위함

				} else {

					alert("취소 되었습니다.");
					return false;

				}

			}); 
		
		$(document).on("click", "#likeItMemberBtn", function() {
			
			var bno = $("#hidden").val();
			var id = "<%=session.getAttribute("loginUser")%>";4
			var mid = $("#mid2").val();
			
			if (id != "null") {

				$.ajax({
					
					url : "sweetadd.bizpoll",
					type : "POST",
					dataType : "json",
					data : "bno=" + bno +"&mid=" + mid,
					success : function(data) {

						sweet_count(); // 좋아요를 누르면 올라가고 다시 생성 되게 한다.

					},

					error : function() {
						alert("System Error!!!");

					}
				});
				
				return false;

			} else {
				
				alert("로그인을 하셔야 '좋아요'를 올리수 있습니다.");
				$("#id01").css("display", "block");

			}
			
			
			
			
		});
		
		//게시판 수정 이벤트
		
		$(document).on("click", "#bodyupdate", function() {
			
			var Del = confirm("수정 하시겠습니까?") // 클릭시 삭제할 것인지 물어보는 코드

			if (Del == true) {

				$("#bodyupdate_go").submit();

			} else {

				alert("취소 되었습니다.");
				return false;

			}

		}); 
		
		//게시판 삭제 이벤트
		$(document).on("click", "#bodydel", function() {
			
			var Del = confirm("삭제 하시겠습니까?") // 클릭시 삭제할 것인지 물어보는 코드

			if (Del == true) {

				var bno = $("#bno").val(); 

				 $.ajax({
					url : "modifydelete.bigshort",
					type : "POST",
					dataType : "json",
					data : "bno=" + bno,
					success : function(data) {

						location.href="listAll.bigshort";
						

					},

					error : function() {
						alert("System Error!!!");

					}
				}); 

			} else {

				alert("취소 되었습니다.");
				return false;

			}

		}); 
		
</script>

</body>
</html>