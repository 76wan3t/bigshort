<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입 동의페이지</title>

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
	<div id="body_wrap">
		<div class="lang">
			<select id="langselect">
				<option>English</option>
				<option>한국어</option>
			</select>
		</div>
		
	<div id="constract_container">
		<form id="join_content">
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
			</div>
		
		</form>
	
	
	</div>
	
	
	
	
	</div>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>
<%@ include file="../footer.jsp"%>