 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@ include file="../header.jsp" %>
 <!DOCTYPE html>
 <html lang="ko">
 <head>
 <style type="text/css">
 
 a:link, a:visited {text-decoration: none; color: #656565;}
 /* 헤더 겹침 수정  */
  #header{
    position: static;
 }
	body{
	font-family:Verdana,sans-serif;
	}
 .board_list {width:100%;border-top:2px solid #252525;border-bottom:1px solid #ccc}
 .board_list thead th:first-child{background-image:none}
 .board_list thead th {border-bottom:1px solid #ccc;padding:12px 0 13px 0;color:#3b3a3a;vertical-align:middle}
 .board_list tbody td {border-top:1px solid #ccc;padding:10px 0;text-align:center;vertical-align:middle}
 .board_list tbody tr:first-child td {border:none}
 .board_list tbody td.title {text-align:left; padding-left:20px}
 .board_list tbody td a {display:inline-block}
  
 .board_view {width:35%;border-top:2px solid #252525;border-bottom:1px solid #ccc;border-right:1px solid #252525;border-left:1px solid #252525; margin: 0 auto;}
 .board_view tbody th {text-align:left;background:#f7f7f7;color:#3b3a3a}
 .board_view tbody th.list_tit {font-size:13px;color:#000;letter-spacing:0.1px}
 .board_view tbody .no_line_b th, .board_view tbody .no_line_b td {border-bottom:none}
 .board_view tbody th, .board_view tbody td {padding:15px 0 16px 16px;border-bottom:1px solid #ccc}
 .board_view tbody td.view_text {border-top:1px solid #ccc; border-bottom:1px solid #ccc;padding:45px 18px 45px 18px}
 .board_view tbody th.th_file {padding:0 0 0 15px; vertical-align:middle}
 .gesi{font-size: 30px; color:black; font-family:Verdana,sans-serif;}
 .wdp_90 {width:90%}
 .btn {border-radius:3px;padding:5px 11px;color:#fff !important; display:inline-block; background-color:#6b9ab8; border:1px solid #56819d;vertical-align:middle; float: right; margin-right: 7px;}
 #button2{margin-left: 405px;}
 #navigation{
 	    margin-left: 5px;
 }
 /* 댓글 디자인  */
 .brunch_comment{padding:0 0 80px; background-color:#fbfbfb; text-align: center;}
 .brunch_comment .wrap_comment_facebook{position:relative;}
 div{font-family: "Noto Sans Light","Malgun Gothic",sans-serif;margin:0;padding: 0;}
 .screen_out{overflow: hidden;position: absolute;width: 0;height: 0;line-height: 0;text-indent: -9999px;}
 a{color:#333; text-decoration: none;}	
 .brunch_comment .comment_head{width: 700px; height: 30px; margin: 0 auto 12px;}
 .comment_head .tit_comment{float: left; padding-top: 3px; font-weight: 400; font-size: 16px;}
 .comment_head .tit_comment .txt_num{padding-left: 5px; color: #00c3bd;}
 .brunch_comment .comment_content{width: 700px; margin: 0 auto;}
 .brunch_comment .btn_preview{width: 100%; height:47px;border-top:1px solid #ddd; font-size: 12px; line-height: 47px;color: #959595;}
 button{font-family:"Noto Sans Light","Malgun Gothic",sans-serif;border: 0 none; background-color: transparent; cursor: pointer; outline: none; border-radius: 0px; vertical-align: middle; line-height:1.5;}
 .brunch_comment .list_comment{display:block;width:100%; border-top: 1px solid #eee;}
 ul{font-family:"Noto Sans Light","Malgun Gothic",sans-serif; list-style: none; margin: 0; padding: 0;}
 .list_comment li.item{float: left; padding: 30px 0; border-bottom:1px solid #eee; width: 700px;}
 .list_comment li.item:hover{background:#f8f8f8;}
 .animation_up{animation: animation_up .2s; transition:opacity 0.2s}
 li{font-family:"Noto Sans Light","Malgun Gothic",sans-serif;list-style: none; margin:0;}
 .brunch_comment .link_profile{overflow:visible;float:left;position:relative;width:42px;height:42px;margin-left:10px;}
 .list_comment .cont_info{float:left;position:relative;width:628px;padding-left:20px;}
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
.brunch_comment .comment_write{position:relative; width:700px; padding-top:27px; margin:0 auto;}
form{font-family:"Noto Sans Light","Malgun Gothic",sans-serif;padding:0;}
input{font-family:"Noto Sans Light","Malgun Gothic",sans-serif;font-size:14px;line-height:1.5; vertical-align:middle; margin:0; padding:0;}
fieldset{font-family:"Noto Sans Light","Malgun Gothic",sans-serif; border:0 none; margin: 0; padding:0;}
legend{font-family:"Noto Sans Light","Malgun Gothic",sans-serif; margin: 0; padding: 0;}
.comment_write .link_profile{margin:6px 0 0 10px;}
.comment_write .box_area{float:left;position:relative; border:1px solid #eee; background-color:#fff;}
.comment_write .wrap_area{display:block;}
.comment_write .tf_area{padding:17px 17px 0; width: 590px; min-height:45px;border: none;line-height:22px; color:#666; background:0 0; white-space:pre-wrap; word-wrap:break-word; outline:transparent dotted; z-index:1;}
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
 #td2{padding: 0; height: 300px;}
 .all_regdate {
	float: right;
	margin-right: 15px;
}
#nextpage {
	margin-bottom: 50px;
}

#nextprvtable {
	width: 100%;
}
.all_tile {
	width: 500px;
}
#nextprvtable a:hover {
	text-decoration: underline;
}
img {
	margin: 0px 4px 2px 0px;
}


 /* 미완성  */
 
 	#login_reple{
 		background-color: white;
 	}
 	.all_tile {
	width: 500px;
	}
 	
 	
 </style>
 </head>
 <body>
 <br>
     <table class="board_view">
         <colgroup>
             <col width="15%"/>
             <col width="35%"/>
             <col width="15%"/>
             <col width="35%"/>
         </colgroup>
         
			<input type="button" id="list_btn" value="목록">
			
         <c:forEach items="${bodynext}" var="bDto">
			<!--  <input type="button" id="prev" value="이전"> -->
			<c:if test="${fn:trim(bDto.pre_title) ne '이전글없음'}">
				<a href="boardbody.bigshort?bno=${bDto.pre_article_bno}" id="prev">이전</a>
			</c:if>
			<!-- <input type="button" id="next" value="다음"> -->
			<c:if test="${fn:trim(bDto.next_title) ne '다음글 없음'}">
				<a href="boardbody.bigshort?bno=${bDto.next_article_bno}" id="next">다음</a>
			</c:if>
		</c:forEach>
         
         
         <caption class="gesi">게시글 상세</caption>
        
         <tbody>
                 <c:forEach items="${bodylist}" var="bDto">
                 <form action="modifyview.bigshort" id="bodyupdate_go" method="get">
                 	<input type="hidden" name="bno" id="bno" value="${bDto.bno }" />
                 </form>
             <tr>
                 <th scope="row">글 번호</th>
                 <td>${bDto.bno}</td>
                 <th scope="row">조회수</th>
                 <td>${bDto.viewcnt}           
                 	<c:if test="${fn:trim(sessionScope.loginUser.mid) eq fn:trim(bDto.writer) || fn:trim(sessionScope.loginUser.mname) eq '관리자' }">        
                 		<input type="button" value="수정" class="btn pull-right" id="bodyupdate">
                 	
                 		
                 		
        	 		<input type="button" value="삭제" class="btn pull-right" id="bodydel">
        	 	</c:if>
        	 </td>
             </tr>
             <tr>
                 <th scope="row">작성자</th>
                 <td>${bDto.writer}</td>
                 <th scope="row">작성시간</th>
                
                 <td><fmt:formatDate
					pattern="yyyy-MM-dd HH:mm" value="${bDto.regdate}" /></td>
             </tr>
             <tr>
                 <th scope="row">제목</th>
                 <td colspan="3">${bDto.title}</td>
             </tr>
            	<c:set var="cmt" value="${fn:replace(bDto.content,crcn,br)}" />
				<c:set var="cmt" value="${fn:replace(cmt,cr,br)}" />
				<c:set var="cmt" value="${fn:replace(cmt,cn,br)}" />
				<c:set var="cmt" value="${fn:replace(cmt,' ',sp)}" />
             <tr>
                 <td colspan="4" id="td2">

                 <c:out value="${cmt}" escapeXml="false"/>
                 
                 ${fn:trim(sessionScope.loginUser.mid) eq fn:trim(bDto.writer)}
                 </td>
             </tr>
             <tr><c:if test="${bDto.filename != '-'}">
                 <th  colspan="1" scope="row">첨부파일</th>
                 <td colspan="3">
                     
                         <input type="file" id="IDX" style="display:none">(내려받는 횟수 : ${bDto.downloadcnt } )
                         <a href="download.bigshort?bno=${bDto.bno}"><i class="fa fa-save"></i></a>
						 <a href="download.bigshort?bno=${bDto.bno}">${bDto.filename }</a>
                    
                 </td>
                  </c:if>
             </tr>
          </c:forEach>
         </tbody>
     </table>
     <br>
      
          
          <div class="brunch_comment #comment" style="display: block;">


			
            <div class="comment_head"><strong class="tit_comment"><span class="txt_num"></span></strong>
</div>
            <div class="comment_content">
                <div class="list_comment_more" style="display: none;">
                </div>
				

            </div>
<c:if test="${fn:trim(sessionScope.loginUser.mid) ne ''}">
     <div class="wrap_comment_write">
      <form id="replyadd" class="comment_write brunch_login" method="post" action="replyadd.bigshort">

	<fieldset>
		<legend class="screen_out">댓글 작성 폼</legend>
		<div class="link_profile">
		</div>
		<div class="box_area">
			<label for="tfCmt" class="screen_out">댓글 작성</label>
			<span class="wrap_area">
					<textarea class="editor tf_area" id="content" name="content" maxlength="1000" placeholder="작가와 글에 대해 이야기를 나누어 보세요!" ></textarea>
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

				<div class="wrap_btn">
						<input type="button" id="login_reple" class="btn_default #submit" value="확인">
						<input type ="hidden" id="mid" name="mid" value="${sessionScope.loginUser.mid}">
				</div>
			</div>
		<ul class="_mention_list" style="display: none;"></ul></div>
		
	</fieldset>
</form>
</div>
</c:if>
<c:if test="${fn:trim(sessionScope.loginUser.mid) eq ''}">
	<div class="wrap_comment_write">
      		<form class="comment_write brunch_login" action="#" method="post" >
	<fieldset>
		<legend class="screen_out">댓글 작성 폼</legend>
		<div class="link_profile">
		</div>
		<div class="box_area">
			<label for="tfCmt" class="screen_out">댓글 작성</label>
			<span class="wrap_area">
					<textarea class="editor tf_area" name="content" readonly="readonly" maxlength="1000" placeholder="로그인하셔야 댓글을 작성 할 수 있어요" ></textarea>
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

				<div class="wrap_btn">
						<input type="button" id="login_reple" class="btn_default #submit" value="로그인" onclick="document.getElementById('id01').style.display='block'" >
				</div>
			</div>
		<ul class="_mention_list" style="display: none;"></ul></div>
		
	</fieldset>
</form>
</div>
						
					</c:if>
		        </div>
		        <div id="nextpage">
			<table id="nextprvtable">
				<c:forEach items="${bodynext}" var="bDto">
					<tr>
						<c:if test="${fn:trim(bDto.pre_title) ne '이전글없음'}">
							<td><img src="image/nextprv/ico-btn-pre2_.gif" alt=""><a
								href="boardbody.bigshort?bno=${bDto.pre_article_bno} " id="">
									이전글</a></td>
							<td class="all_tile"><a
								href="boardbody.bigshort?bno=${bDto.pre_article_bno} " id="">
									${bDto.pre_title}</a></td>
							<td class="all_writer">${bDto.pre_writer}</td>
							<td class="all_regdate"><fmt:formatDate pattern="yyyy-MM-dd"
									value="${bDto.pre_regdate}" /></td>
						</c:if>
					</tr>
					<tr>
						<c:if test="${fn:trim(bDto.next_title) ne '다음글 없음'}">
							<td><img src="image/nextprv/ico-btn-net2_.gif" alt=""><a
								href="boardbody.bigshort?bno=${bDto.next_article_bno} " id="">
									다음글</a></td>
							<td class="all_tile"><a
								href="boardbody.bigshort?bno=${bDto.next_article_bno} " id="">${bDto.next_title}</a></td>
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
	
				$(".comment_content").html(result);
	
			}
		});
	} 
	function comment_size(){
		
		var bno = $("#bno").val();
		
		$.ajax({
			type : "POST",
			url : "commentsize.bigshort",
			data : "bno=" + bno,
			success : function(result) {
	
				$(".tit_comment").html(result);
	
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
		comment_size();
		// sweet_count(); 
		
		
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
		
		// 게시물 목록으로 넘어가는 버튼
		$("#list_btn").on("click", function(){
			
			location.href="listAll.bigshort";
			
		});
	
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
		var comment = $("#content").val();
			
			 $.ajax({
				url : "replyadd.bigshort",
				type : "POST",
				dataType : "json",
				data : "bno=" + bno +"&mid=" + mid +"&content=" + comment,
				success : function(data) {

					$("#content").val("");// 댓글 등록후 내용 초기화 하는 코드
					comment_list(); // 댓글을 다시 불러드리기 위한 호출 함수
					comment_size(); // 댓글 수를 파악하기위한 호출 함수

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
							comment_size(); // 댓글 수를 파악하기위한 호출 함수
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