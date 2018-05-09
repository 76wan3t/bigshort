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
 .btn {border-radius:3px;padding:5px 11px;color:#fff !important; display:inline-block; background-color:#6b9ab8; border:1px solid #56819d;vertical-align:middle}
 #button2{margin-left: 405px;}
 #navigation{
 	    margin-left: 5px;
 }
 /* 댓글 디자인  */
 .brunch_comment{padding:0 0 80px; background-color:#fbfbfb;}
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
 .list_comment li.item{float: left; padding: 30px 0; border-bottom:1px solid #eee;}
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
 .list_comment .comment_setting{display:none; position:absolute; right: 18px; top:-3px;}
 .comment_setting .btn_set{display:inline; float:left; margin-left:8px; font-size:12px; color:#959595;}
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
.comment_write .box_area{float:right;position:relative;width:624px; border:1px solid #eee; background-color:#fff;}
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
 /* 미완성  */
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
         <caption class="gesi">게시글 상세</caption>
         <tbody>
             <tr>
                 <th scope="row">글 번호</th>
                 <td>${bDto.bno}</td>
                 <c:forEach items="${bodylist}" var="bDto">
                 <th scope="row">조회수</th>
                 <td>${bDto.viewcnt}</td>
                 </c:forEach>
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
             <tr>
                 <td colspan="4">${boardview.content}</td>
             </tr>
             <tr><c:if test="${bDto.filename != '-'}">
                 <th scope="row">첨부파일(내려받는 횟수 : ${bDto.downloadcnt } )</th>
                 <td colspan="3">
                     
                         <input type="file" id="IDX" style="display:none">
                         <a href="download.bizpoll?bno=${bDto.bno}"><i class="fa fa-save"></i></a>
						 <a href="download.bizpoll?bno=${bDto.bno}">${bDto.filename }</a>
                    
                 </td>
                  </c:if>
             </tr>
         </tbody>
     </table>
     <br>
      
          
          <div class="brunch_comment #comment" style="display: block;">

            <a name="comments" class="screen_out">댓글</a>

			
            <div class="comment_head"><strong class="tit_comment">댓글<span class="txt_num"> ${count}</span></strong>
</div>
            <div class="comment_content">
                <div class="list_comment_more" style="display: none;">
                    <button type="button" data-action="moreList" class="btn_preview">이전 댓글 보기</button>
                </div>
				
				<c:forEach items="${replyview}" var="replyview">
                <ul class="list_comment"><li class="item animation_up"><div class="comment">
		<a href="/@@3jUF" class="link_profile">
			<img src="//img1.daumcdn.net/thumb/C42x42/?fname=http://t1.daumcdn.net/brunch/service/user/3jUF/image/iSvVjV7XpGc6Ns_2hm8BrIocFj4.jpg" width="42" height="42" class="img_thumb" alt="Vegit 이미지">
		</a>
	<div class="cont_info">
		<div class="info_append">
			<strong class="tit_userid">
				<a href="/@@3jUF" class="link_userid">${replyview.writer}</a>
			</strong>
			<span class="ico_dot"></span>
			<span class="txt_time">May 07. 2018</span>
		</div>
		<p class="desc_comment">저도 옛날 옛적에 인터뷰를 한번 했다가, 댓글을 보고 깜짝 놀란적이 있죠. 물론 제가 한말이 아닌데 제가 한말로 처리 된 부분도 있었지만, 그와 상관없이 참 이상한 사람들이 많구나.. 라고 생각했던 경험이 있네요.</p>

		<div class="comment_setting">
			<div class="wrap_comment_menu">
						<button type="button" class="btn_set" data-action="report" data-commentno="347302">신고</button>
					
			</div>
		</div>
	</div>
</div></ul>
</c:forEach>
            </div>
				

            <div class="wrap_comment_write">
            <form class="comment_write brunch_login" method="post" novalidate="">
	<input type="hidden" name="sticker" value="">

	<fieldset>
		<legend class="screen_out">댓글 작성 폼</legend>
		<div class="link_profile">
					<img src="//img1.daumcdn.net/thumb/C42x42/?fname=http://t1.daumcdn.net/brunch/service/guest/image/05yccYvwPPjX61Yi9Q1qeS99Esc.jpg" width="42" height="42" class="img_thumb" alt="이미지 정보">
		</div>
		<div class="box_area">
			<label for="tfCmt" class="screen_out">댓글 작성</label>
			<span class="wrap_area">
					<!-- <div contenteditable="" class="editor tf_area"></div> -->
					<div class="editor_placeholder" style="display: none;"></div>
					<textarea class="editor tf_area" name="content" maxlength="1000" placeholder="작가와 글에 대해 이야기를 나누어 보세요!" ></textarea>
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
						<button type="submit" class="btn_default #submit">확인</button>
						<input type ="hidden" id="btn44" value="${sessionScope.loginUser.mid}">
				</div>
			</div>
		<ul class="_mention_list" style="display: none;"></ul></div>
	</fieldset>
</form></div>
		        </div>
     
     
 <script type="text/javascript">

function comment_list(){
	
	var bno = $("#hidden").val();
	
	$.ajax({
		type : "POST",
		url : "commentlist.bizpoll",
		data : "bno=" + bno,
		success : function(result) {

			$("#commentlist").html(result);

		}
	});
} 
	
	
	function sweet_count(){
		var bno = $("#hidden").val();
		
		$.ajax({
			type : "POST",
			url : "sweetcount.bizpoll",
			data : "bno=" + bno,
			success : function(result) {

				$("#cafe-menu").html(result);

			}
		});
		
	}


	$(document).ready(function(){
		
		comment_list();
		sweet_count();
		
		
		
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
		$(document).on("click", "#_submitCmt",function() {
			
			
		var bno = $("#bno").val();
		var mid = $("#mid2").val();
		var comment = $("#comment_text").val();
			
			 $.ajax({
				url : "replyadd.bizpoll",
				type : "POST",
				dataType : "json",
				data : "bno=" + bno +"&mid=" + mid +"&comment_text=" + comment,
				success : function(data) {

					$("#comment_text").val("");// 댓글 등록후 내용 초기화 하는 코드
					comment_list(); // 댓글을 다시 불러드리기 위한 호출 함수

				},

				error : function() {
					alert("System Error!!!");

				}
			}); 
			return false; // false를 하면 등록할때 스크롤이 맨위로 올라가지 않는다.

		});
	
	
	
		$(document).on("click", ".delUrl2", function() {
			
				var Del = confirm("삭제 하시겠습니까?") // 클릭시 삭제할 것인지 물어보는 코드

				if (Del == true) {

					var rno = $(this).attr("data_num"); // 해당 댓글 값을 가져오는 코드

					 $.ajax({
						url : "replydel.bizpoll",
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
		
		
		$(document).on("click", "#bodydel", function() {
			
			var Del = confirm("삭제 하시겠습니까?") // 클릭시 삭제할 것인지 물어보는 코드

			if (Del == true) {

				var bno = $("#hidden").val(); 

				 $.ajax({
					url : "modifydelete.bizpoll",
					type : "POST",
					dataType : "json",
					data : "bno=" + bno,
					success : function(data) {

						location.href="boardlist.bizpoll";
						

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