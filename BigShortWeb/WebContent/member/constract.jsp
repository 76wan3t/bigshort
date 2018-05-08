<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입 동의페이지</title>
<link rel="stylesheet" type="text/css" href="/BigShortWeb/css/constract.css?var=2">
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script type="text/javascript">
	$(document).ready(function() {

		$("#cbox").click(function() { /* cbox를 클릭하면 이벤트 발생 */

			var click = $("#cbox").is(":checked"); /* cbox를 클릭햇을때 나오는 true,false값 click변수에 담음 */

			if (click == true) { /* click변수에 담겨있는 값이 true이면 실행 */
				$(".ckboxs").prop("checked", true);
			} else {/* click변수에 담겨있는값이 true가 아니면 실행 */
				$(".ckboxs").prop("checked", false);
			}
		});

		$(".ckboxs").on("click", function() { /* 4개로 이뤄져 있는 체크박스들을 클릭하면 이벤트 발생 */
			var ckleng = $(".ckboxs:checkbox:checked").length; /* 4개로 이뤄져있는 ckboxs를 체크가 되면 ckleng에 값이 담기게 변수생성 */

			if (ckleng == 4) { /* ckleng에 값이 4면 실행 */
				$("#cbox").prop("checked", true); /* ckleng의 값이 4이면 #cbox를 체크 */
			} else {
				$("#cbox").prop("checked", false); /* ckleng의 값이 4가 아니면 #cbox체크를 해제 */
			}
		});

		$(".btn_agree").on("click", function() { /* btn_agree(동의)버튼을 클릭하면 이벤트 발생 */
			var li1checked = $("#li1box").is(":checked"); /* li1box의 체크값을 li1checked 변수에 담음 */
			var li2checked = $("#li2box").is(":checked"); /* li2box의 체크값을 li2checked 변수에 담음 */

			if (li1checked == false || li2checked == false) { /* li1checked나 li2checked가 둘중에 하나라도 체크가 안되있으면 if실행 */
				$("#span").css("display", "block"); /* #span에 css style display를 block를 실행 */
				return false; /*  */
			} else {
				$("#join_content").submit();
			}
		});
	});
</script>
</head>
<body>

		<div class="lang">
			<select id="langselect">
				<option>한국어</option>
				<option>English</option>
			</select>
		</div>
		
		
	<div id="body_wrap">
		<div id="constract_container">
			<form id="join_content" action="join.bigshort" method="get">
				<div class="terms">
					<p class="terms_p">
						<span class="terms_span">
							<input type="checkbox" id="cbox">
							<label for="cbox">
								이용약관, 개인정보 수집 및 이용<br>
								위치정보 이용약관(선택), 프로모션 안내<br>
								메일 수신(선택)에 모두 동의합니다.
							</label>
						</span>
					</p>
					
					<ul id="terms_ul">
					<li id="terms_ul_li1">
						<span class="ul_li_span">
							<input type="checkbox" id="li1box" class="ckboxs">
							<label for="li1box" class="label1">
							가방 이용약관 동의<span class="span_only">(필수)</span>
							</label>
						</span>
						<div class="terms_box">
							<h3 class="article_title">제 1 조 (목적)</h3>
							<p>이 약관은 가방 이 제공하는 네이버
							 및 가방 관련 제반 서비스의 이용과 관련하여 회사와 회원과의 권리,
							 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.</p><br>
							
							<h3 class="article_title">제 2 조 (정의)</h3>
							<p>이 약관에서 사용하는 용어의 정의는 다음과 같습니다.<br>
							   ①"서비스"라 함은 구현되는 단말기(PC, TV, 휴대형단말기 등의 각종 유<br>
							   무선 장치를 포함)와 상관없이 "회원"이 이용할 수 있는 가방 및 가방<br>
							   관련 제반 서비스를 의미합니다.
							</p>
						</div>
						
					</li>
					<li id="terms_ul_li2">
						<span class="ul_li_span">
							<input type="checkbox" id="li2box" class="ckboxs">
							<label for="li2box" class="label1">
							개인정보 수집 및 이용에 대한 안내<span class="span_only">(필수)</span>
							</label>
						</span>
						
						<div class="terms_box">
							<h3 class="article_title"></h3>
							<p>정보통신망법 규정에 따라 가방에 회원가입 신청하시는 분께 수집하<br>
							는 개인정보의 항목, 개인정보의 수집 및 이용목적, 개인정보의 보유 및 이<br>
							용기간을 안내 드리오니 자세히 읽은 후 동의하여 주시기 바랍니다.</p><br>
							
							<h3 class="article_title">1. 수집하는 개인정보</h3>
							<p>이용자는 회원가입을 하지 않아도 정보 검색, 뉴스 보기 등 대부분의 가<br>
							방 서비스를 회원과 동일하게 이용할 수 있습니다. 이용자가 메일, 캘<br>
							린더, 카페, 블로그 등과 같이 개인화 혹은 회원제 서비스를 이용하기 위해 회원가입을 할 경우, 가<br>
							방은 서비스 이용을 위해 필요한 최소한의 개인정보를 수집합니다.
							</p>
						</div>
					</li>
					
					<li id="terms_ul_li3">
						<span class="ul_li_span">
							<input type="checkbox" id="li3box" class="ckboxs">
							<label for="li3box" class="label1">
							위치정보 이용약관 동의<span class="span_only">(선택)</span>
							</label>
						</span>
						<div class="terms_box">
							<h3 class="article_title"></h3>
							<p>위치정보 이용약관에 동의하시면, 위치를 활용한 광고 정보 수신 등을<br>
							 포함하는 가방 위치기반 서비스를 이용할 수 있습니다.</p><br>
						</div>
					</li>
					
					
					<li id="terms_ul_li4">
						<span class="ul_li_span">
							<input type="checkbox" id="li4box" class="ckboxs">
							<label for="li4box" class="label1">
							이벤트 등 프로모션 알림 메일 수신<span class="span_only">(선택)</span>
							</label>
						</span>
					</li>
				</ul>
				<span id="error_span">가방 이용약관과 개인정보 수집 및 이용에 대한 안내 모두 동의해주세요.</span>
			</div>	
			<div class="btn_double_area">
				<span><a href="index.bigshort" class="btn_type btn_default">비동의</a></span>
				<span><a href="#" class="btn_type btn_agree">동의</a></span>
			
			</div>
				
		</form>
		
	</div>				
</div>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>
<%@ include file="../footer.jsp"%>