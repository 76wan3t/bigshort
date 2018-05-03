<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="container">
			<!-- content -->
			<div id="content" class="notice">

				<!-- sub_title -->
				<div class="sub_title">
					<ul class="sub_nav">
						<li><a href="/main">HOME</a></li>
						<li><a href="/bbs/newsList?type=N">공지사항</a></li>
						<li><span>도미노뉴스</span></li>
					</ul>
					<div class="sub_title_wrap">
						<h2>공지사항</h2>
					</div>
				</div>
				<!-- //sub_title -->

				<div class="notice_area">
					<div class="tab_type">
						<ul class="btn_tab">
							<li class="active"><a href="/bbs/newsList?type=N">도미노뉴스</a></li>
							<li><a href="/bbs/newsList?type=P">PRESS</a></li>
						</ul>
						<div class="tab_content_wrap">
							<div class="tab_content active">
								<form id="searchForm" name="searchForm" action="/bbs/newsList" method="post">
									<input type="hidden" id="type" name="type" value="N">
									<input type="hidden" id="pageNo" name="pageNo" value="1">
									<div class="form_group" style="width:530px;">
										<div class="form_field">
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
											<a href="javascript:fncSearch();" class="btn btn_srch"><span class="btn_txt">검색</span></a>
										</div>
									</div>
								</form>
								<p class="srch_result">총 <span>267</span>건</p>
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
											<th class="tbl_date">등록일</th>
											<th class="tbl_views">조회</th>
										</tr>
									</thead>
									<tbody>
									<tr>
											<td>267</td>
											<td><a href="#none" onclick="goView('2006'); return false;">도미노 파티카 10주년 기념 고객 대상 이벤트 당첨자 안내</a></td>
											<td>2018-04-06</td>
											<td>6857</td>
										</tr>
										<tr>
											<td>266</td>
											<td><a href="#none" onclick="goView('2005'); return false;">피자 가격 인상 안내</a></td>
											<td>2018-04-06</td>
											<td>5832</td>
										</tr>
										<tr>
											<td>265</td>
											<td><a href="#none" onclick="goView('2002'); return false;">[공지] 2월 14일 수요일 홈페이지 접속 장애 관련</a></td>
											<td>2018-02-15</td>
											<td>5909</td>
										</tr>
										<tr>
											<td>264</td>
											<td><a href="#none" onclick="goView('2001'); return false;">설 연휴(2월 16일) 연장영업 안내</a></td>
											<td>2018-02-14</td>
											<td>7979</td>
										</tr>
										<tr>
											<td>263</td>
											<td><a href="#none" onclick="goView('1975'); return false;">12월 31일 뉴이어 이브 연장영업 안내</a></td>
											<td>2017-12-28</td>
											<td>54830</td>
										</tr>
										<tr>
											<td>262</td>
											<td><a href="#none" onclick="goView('1973'); return false;">크리스마스 이브 (24일) 연장영업 안내</a></td>
											<td>2017-12-22</td>
											<td>5562</td>
										</tr>
										<tr>
											<td>261</td>
											<td><a href="#none" onclick="goView('1971'); return false;">[공지] 12월 7일 목요일 도미챗 주문 장애 관련</a></td>
											<td>2017-12-07</td>
											<td>5818</td>
										</tr>
										<tr>
											<td>260</td>
											<td><a href="#none" onclick="goView('1970'); return false;">[공지]7치즈 앤 그릴드비프 피자 &amp; 음료 함께 주문 시, 2018 도미노 Planner 미증정 매장 공지</a></td>
											<td>2017-11-28</td>
											<td>3023</td>
										</tr>
										<tr>
											<td>259</td>
											<td><a href="#none" onclick="goView('1969'); return false;">2017 도미챗 신규가입 주문 고객 대상 IT 아이템 당첨자 안내</a></td>
											<td>2017-11-23</td>
											<td>1196</td>
										</tr>
										<tr>
											<td>258</td>
											<td><a href="#none" onclick="goView('1968'); return false;">[공지] 도미노피자 개인정보 처리방침 개정 안내</a></td>
											<td>2017-11-23</td>
											<td>168</td>
										</tr>
										</tbody>
								</table>
								<div class="page_nav">
									<a href="javascript:;" class="btn_ico btn_first">처음</a><a href="javascript:;" class="btn_ico btn_prev2">이전</a><ul>
										<li><strong>1</strong></li>  <li><a href="javascript:;" onclick="javascript:paging(2); return false;">2</a></li>  <li><a href="javascript:;" onclick="javascript:paging(3); return false;">3</a></li>  <li><a href="javascript:;" onclick="javascript:paging(4); return false;">4</a></li>  <li><a href="javascript:;" onclick="javascript:paging(5); return false;">5</a></li>  <li><a href="javascript:;" onclick="javascript:paging(6); return false;">6</a></li>  <li><a href="javascript:;" onclick="javascript:paging(7); return false;">7</a></li>  <li><a href="javascript:;" onclick="javascript:paging(8); return false;">8</a></li>  <li><a href="javascript:;" onclick="javascript:paging(9); return false;">9</a></li>  <li><a href="javascript:;" onclick="javascript:paging(10); return false;">10</a></li></ul>
									<a href="javascript:;" class="btn_ico btn_next2" onclick="javascript:paging(11, 1); return false;">다음</a><a href="javascript:;" class="btn_ico btn_last" onclick="javascript:paging(27); return false;">마지막</a></div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- //content -->
		</div>

</body>
</html>
