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
                 <td>${map.IDX }</td>
                 <th scope="row">조회수</th>
                 <td>${map.HIT_CNT }</td>
             </tr>
             <tr>
                 <th scope="row">작성자</th>
                 <td>${map.CREA_ID }</td>
                 <th scope="row">작성시간</th>
                 <td>${bDto.regdate}</td>
             </tr>
             <tr>
                 <th scope="row">제목</th>
                 <td colspan="3">${map.TITLE }</td>
             </tr>
             <tr>
                 <td colspan="4">${map.CONTENTS }</td>
             </tr>
             <tr>
                 <th scope="row">첨부파일</th>
                 <td colspan="3">
                     <c:forEach var="row" items="${list }">
                         <input type="hidden" id="IDX" value="${row.IDX }">
                         <a href="#this" name="file">${row.ORIGINAL_FILE_NAME }</a>
                         (${row.FILE_SIZE }kb)
                     </c:forEach>
                 </td>
             </tr>
         </tbody>
     </table>
     <br>
      
          
          <div class="brunch_comment #comment" style="display: block;">

            <a name="comments" class="screen_out">댓글</a>

			
            <div class="comment_head"><strong class="tit_comment">댓글<span class="txt_num">3</span></strong>
</div>
            <div class="comment_content">
                <div class="list_comment_more" style="display: none;">
                    <button type="button" data-action="moreList" class="btn_preview">이전 댓글 보기</button>
                </div>

                <ul class="list_comment"><li class="item animation_up"><div class="comment">
		<a href="/@@3jUF" class="link_profile">
			<img src="//img1.daumcdn.net/thumb/C42x42/?fname=http://t1.daumcdn.net/brunch/service/user/3jUF/image/iSvVjV7XpGc6Ns_2hm8BrIocFj4.jpg" width="42" height="42" class="img_thumb" alt="Vegit 이미지">
		</a>
	<div class="cont_info">
		<div class="info_append">
			<strong class="tit_userid">
				<a href="/@@3jUF" class="link_userid">Vegit</a>
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
</div></li><li class="item animation_up"><div class="comment">
		<a href="/@@1bGJ" class="link_profile">
			<img src="//img1.daumcdn.net/thumb/C42x42/?fname=http://t1.daumcdn.net/brunch/service/user/1bGJ/image/kd3sYi-62AgGas31xLFYGJ57u3c.jpg" width="42" height="42" class="img_thumb" alt="루퍼트 이미지">
		</a>
	<div class="cont_info">
		<div class="info_append">
			<strong class="tit_userid">
				<a href="/@@1bGJ" class="link_userid">루퍼트</a>
			</strong>
			<span class="ico_dot"></span>
			<span class="txt_time">May 07. 2018</span>
		</div>
		<p class="desc_comment"><a href="/@@3jUF" class="link_mention" data-id="3jUF">@Vegit</a> 저와 비슷한 경험을 하신분이군요!<br>평소에는 있는줄 모르는 이상한 사람들이 많죠</p>

		<div class="comment_setting">
			<div class="wrap_comment_menu">
						<button type="button" class="btn_set" data-action="report" data-commentno="347320">신고</button>
					
			</div>
		</div>
	</div>
</div></li><li class="item animation_up"><div class="comment">
		<a href="/@@3jUF" class="link_profile">
			<img src="//img1.daumcdn.net/thumb/C42x42/?fname=http://t1.daumcdn.net/brunch/service/user/3jUF/image/iSvVjV7XpGc6Ns_2hm8BrIocFj4.jpg" width="42" height="42" class="img_thumb" alt="Vegit 이미지">
		</a>
	<div class="cont_info">
		<div class="info_append">
			<strong class="tit_userid">
				<a href="/@@3jUF" class="link_userid">Vegit</a>
			</strong>
			<span class="ico_dot"></span>
			<span class="txt_time">May 07. 2018</span>
		</div>
		<p class="desc_comment">어쩔수없는것 같아요. 기사의 목적에 따라 글을 묘하게 다르게 이해한 사람이 글을 쓰기도 하고, 또 받아들이는 사람이 다르게 받아들이기도 하는것 같더라구요. 유명한 사람들은 그래서 더 행복하고, 더 힘들고 그럴것 같다는 생각을 했었네요.</p>

		<div class="comment_setting">
			<div class="wrap_comment_menu">
						<button type="button" class="btn_set" data-action="report" data-commentno="347324">신고</button>
					
			</div>
		</div>
	</div>
</div></li></ul>
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
					<div contenteditable="" class="editor tf_area"></div><div class="editor_placeholder" style="display: block;">작가와 글에 대해 이야기를 나누어 보세요!</div><textarea class="editor tf_area" name="content" maxlength="1000" placeholder="작가와 글에 대해 이야기를 나누어 보세요!" style="display: none;"></textarea>
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
				</div>
			</div>
		<ul class="_mention_list" style="display: none;"></ul></div>
	</fieldset>
</form></div>
		        </div>
     
     
 <script type="text/javascript">
         $(document).ready(function(){
             $("#list").on("click", function(e){ //목록으로 버튼
                 e.preventDefault();
                 fn_openBoardList();
             });
              
             $("#update").on("click", function(e){ //수정하기 버튼
                 e.preventDefault();
                 fn_openBoardUpdate();
             });
              
             $("a[name='file']").on("click", function(e){ //파일 이름
                 e.preventDefault();
             });
         });
          
         function fn_openBoardList(){
             var comSubmit = new ComSubmit();
             comSubmit.setUrl("<c:url value='/sample/openBoardList.do' />");
             comSubmit.submit();
         }
          
         function fn_openBoardUpdate(){
             var idx = "${map.IDX}";
             var comSubmit = new ComSubmit();
             comSubmit.setUrl("<c:url value='/sample/openBoardUpdate.do' />");
             comSubmit.addParam("IDX", idx);
             comSubmit.submit();
         }
 
     </script>
 </body>
 </html>