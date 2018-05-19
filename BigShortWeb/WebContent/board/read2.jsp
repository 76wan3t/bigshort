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
	#content{width: 1000px; margin:0 auto; padding:22px 0 100px;}
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
	.tab_type>.btn_tab>li{display:table-cell;position:relative;vertical-align:middle;}
	.tab_type>.btn_tab>li a{display:block;width: 100%;height:100%;background-color:#faf8f7;border-top:1px solid #fbf9f8;border-bottom:1px solid #f2f0ef;font-size: 20px;font-weight:500; color:#808486; text-align:center; line-height:54px;}
	.notice .notice_area .tab_content_wrap{padding:50px 70px 45px;}
	.tab_type>.tab_content_wrap{background-color:#fff;}
	form{margin:0;padding:0;}
	.tab_type .tab_content.active{display:block;}
	.notice .detail_title{padding:11px 0 15px; border-top:1px solid #717171; border-bottom:1px solid #e2ddd5;}
	.notice .detail_title strong{font-size:14px;font-weight:400;color:#38474f;line-height:22px;}
	.notice .detail_title ul{overflow:hidden; margin-top:12px;}
	.notice .detail_title ul li:first-child{margin-left:0;padding-left:0;border-left:0;}
	.notice .detail_title ul li{float:left; font-size:14px;color:#717171; line-height:14px;padding-left:12px;margin-left:12px;border-left:1px solid #e2ddd5;}
	.notice .detail_content{padding:36px 20px 40px; font-size:14px;color:#717171;line-height:22px;}
	
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
	
</style>
</head>
<body>
	
<!-- container -->
		<div id="container">
			<!-- content -->
			<div id="content" class="notice">

				<!-- sub_title -->
				<div class="sub_title">
					<ul class="sub_nav">
						<li><a href="/main">HOME</a></li>
						<li><span>공지사항</span></li>
					</ul>
					<div class="sub_title_wrap">
						<h2>묻고 답하기</h2>
					</div>
				</div>
				<!-- //sub_title -->

				<div class="notice_area">
					<div class="tab_type">
						<ul class="btn_tab">
							<li><a href="/bbs/newsList?type=N">도미노뉴스</a></li>
							<li class="active"><a href="/bbs/newsList?type=P">PRESS</a></li>
						</ul>
						<div class="tab_content_wrap">
							
								<div class="tab_content active">
								<%--  <c:forEach items="${bodylist}" var="bDto"> --%>
									<div class="notice_detail">
									
										<div class="detail_title">	
                 							<%-- <form action="modifyview.bigshort" id="bodyupdate_go" method="get">
                 							<input type="hidden" name="bno" id="bno" value="${bDto.bno }" />
                			 			</form> --%>
											<strong>도미노피자, 소아청소년 환자 돕는 ‘희망나눔기금’ 총 3억 원 후원</strong>
											<ul>
												<li class="bno">${bDto.bno}</li>
												<li class="views">조회 ${bDto.viewcnt}</li>
												<li class="writer">작성자${bDto.writer}</li>
											</ul>
										</div>
										
										<div class="detail_content">
										</div>

							
										<div class="detail_lst_view">
											<ul>
											<li class="lst_prev"><strong>이전글이 없습니다.</strong></li>
											<li class="lst_next"><a href="#none" onclick="goView('1997', 'view'); return false;">도미노피자, 삼성서울병원에 희망나눔기금 1억 원 전달</a></li>
											</ul>
										</div>
										
										<div class="btn_wrap">
											<div class="btn_fix_rgt">
												<a href="javascript:goView('1998', 'list');" class="btn"><span class="btn_txt">목록</span></a>
											</div>
										</div>
								
									</div>
								<%-- 	</c:forEach> --%>
								</div>
							
						</div>
					</div>
				</div>



			</div>
			<!-- //content -->
		</div>
		<!-- //container -->



</body>
</html>