<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Bigshort_join</title>
<link rel="stylesheet" type="text/css" href="../css/join.css?var=1"/>
<script type="text/javascript" src="../js/jquery-3.3.1.js"></script>
<script type="text/javascript">
	$(document).on("click","#frm_submit",function(){
		var mid = $("#id"),
		 	mpw = $("#pass"),
		 	mpw2 = $("#pass2"),
		 	mname = $("#name"),
		 	mphone = $("#phone"),
		 	mmail = $("#mail"),
		 	mbrn1 = $("#brn1"),
		 	mbrn2 = $("#brn2"),
		 	mbrn3 = $("#brn3"),
		 	msphone = $("#sphone"),
		 	msname = $("#sname"),
		 	mpostcode = $("#postcode"),
		 	maddress = $("#address"),
		 	maddress2 = $("#address2"),
		 	minfo_input = $(".info_input");
		
		var id = $.trim(mid.val()),
			pw = $.trim(mpw.val()),
			pw2 = $.trim(mpw2.val()),
			name = $.trim(mname.val()),
			phone = $.trim(mphone.val()),
			mail = $.trim(mmail.val()),
			brn1 = $.trim(mbrn1.val()),
			brn2 = $.trim(mbrn2.val()),
			brn3 = $.trim(mbrn3.val()),
			sphone = $.trim(msphone.val()),
			sname = $.trim(msname.val()),
			postcode = $.trim(mpostcode.val()),
			address = $.trim(maddress.val()),
			address2 = $.trim(maddress2.val()),
			info_input = $.trim(minfo_input.val());
		
		/* 필수 항목 체크 */
		/* id/pw/pw2/name/phone/mail */

		/* idck */
		var regId = /^.*(?=.{4,20})(?=.*[0-9])(?=.*[a-zA-Z]).*$/;
		if(id == ""){
			mid.focus();
			$("#idck").css("display","inline-block");
		}else if(!regId.test(id)){
			mid.select();
			$("#idck").text("4~20자 이내 숫자,영문만 사용하세요.").css("display","inline-block");
		}else{
			mpw.focus();
			$("#idck").css("display","none");
		}
		
		/* pwck */
		var regPass = /^.*(?=.{6,20})(?=.*[0-9])(?=.*[a-zA-Z]).*$/;
		if(pw == ""){
			mpw.focus();
			$("#pwck").css("display","inline-block");
			return false;
		}else if(!regPass.test(pw)){
			mpw.select();
			$("#pwck").text("6~20자 이내 숫자,영문만 사용하세요.").css("display","inline-block");
			return false;
		}else if(pw2 == ""){
			mpw2.focus();
			$("#pwck").css("display","none");
			$("#pw2ck").css("display","inline-block");
			return false;
		}else if(pw != pw2){
			mpw2.focus();
			$("#pw2ck").text("다시 입력해주세요.").css("display","inline-block");
			return false;
		}else{
			mname.focus();
			$("#pwck").css("display","none");
			$("#pw2ck").css("display","none");
		}
		
		/* nameck */
		if(name == ""){
			mname.focus();
			$("#nameck").css("display","inline-block");
			return false;
		}
		
		/* phoneck */
		var regPhone = /^(?:(010\d{4})|(01[1|6|7|8|9]\d{3,4}))(\d{4})$/;
		if(phone == ""){
			mphone.focus();
			$("#phoneck").css("display","inline-block");
			return false
		}else if($.isNumeric(phone)==false){
			mphone.focus();
            mphone.val("");
            $("#phoneck").text("숫자만 입력하세요.").css("display","inline-block");
            return false;
		}else if(!regPhone.test(phone)){
			mphone.focus();
            $("#phoneck").text("정확한 값을 입력하세요.").css("display","inline-block");
            return false;
		}
		
		/* mail */
		var regEmail= /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		if(mail == ""){
			memail.focus();
			$("#mailck").css("display","inline-block");
			return false;
		}else if(!regEmail.test(email)){
			memail.focus();
			$("#mailck").text("정확한 값을 입력해주세요.").css("display","inline-block");
			return false;
		}
		
		/* 사업자정보 */
		
		/* brn */
		
	});
	/* mail select */
	$(document).on("change","#selemail",function(){
		var selemail = $("#selemail").val();
		if(selemail == "self"){
			$("#mail").val("");
			$("#mail").focus();
		}else{
			$("#mail").val(selemail).css("text-align","right");
		}
	});
	
	
	
</script>
</head>
<body>
<!-- 사업자 번호 / 아이디(not null) / 이름(not null) / 비번(not null) / 중개소명(not null) / 중개소 주소 / 전화번호(not null) / 이메일(not null) -->
<form action="" method="POST" id="joinfrm" name="joinfrm">
	<div id="join_wrap">
		<div class="info_wrap" id="info_wrap1">
		<!-- 아이디 (필수) -->
			<div class="info">
				<span>
					<input class="info_input " type="text" id="id" name="id" placeholder="아이디">
				</span>
				<span id="idck" class="ck">필수정보 입니다.</span>
			</div>
		<!-- 비번 (필수) -->
			<div class="info">	
				<span>
					<input class="info_input" type="password" id="pass" name="pass" placeholder="비밀번호">
				</span>
				<span id="pwck" class="ck">필수정보 입니다.</span>
			</div>
		<!-- 비번 확인 (필수) -->
			<div class="info">
				<span>
					<input class="info_input" type="password" id="pass2" name="pass2" placeholder="비밀번호 재확인">
				</span>
				<span id="pw2ck" class="ck">필수정보 입니다.</span>
			</div>
		</div>
<br>
		<div class="info_wrap" id="info_wrap2">
		<!-- 이름	 (필수) -->
			<div class="info">
				<span>
					<input class="info_input" type="text" id="name" name="name" maxlength="4" placeholder="이름">
				</span>
				<span id="nameck" class="ck">필수정보 입니다.</span>
			</div>
		<!-- 전화번호 (필수) -->
			<div class="info">
				<span>
					<input class="info_input" type="text" id="phone" name="phone" maxlength="11" placeholder="핸드폰 번호 (숫자만 입력)">
				</span>
				<span id="phoneck" class="ck">필수정보 입니다.</span>
			</div>
		<!-- 이메일 (필수) -->	
			<div class="info">
				<span class="mail_span">
					<input class="info_input mail_input" type="text" id="mail" name="mail" placeholder="이메일">
				</span>
				<span>
					<select id="selemail">
						<option value="self">직접 입력 </option>
						<option value="@naver.com">@naver.com</option>
						<option value="@hanmail.net">@hanmail.net</option>
						<option value="@gmail.com">@gmail.com</option>
					</select>
				</span>
				<span id="mailck" class="ck">필수정보 입니다.</span>
			</div>
		</div>

<br>		
		<div class="info_wrap" id="info_wrap3">
		<!-- 사업자 번호 -->
		<!-- 사업자 등록 번호 ***-**-***** 10자리 형식 --> 
			<div class="info selinfo">
				<span>
					<input class="info_input brn_input" id="brn1" name="brn" placeholder="사업자 번호"> 
					- <input class="info_input brn_input" id="brn2" placeholder="**"> 
					- <input class="info_input brn_input" id="brn3" placeholder="*****">
				</span>
			</div>
		<!-- 중개소 명 -->
			<div class="info selinfo">
				<span>
					<input class="info_input" type="text"  id="sname" name="sname" placeholder="중개소 이름">
				</span>
			</div>
		<!-- 중개소 전화번호 -->
			<div class="info selinfo">
				<span class="info_input">
					<select id="sphone_num">
						<option value="062)">062</option>
						<option value="061)">061</option>
						<option value="063)">063</option>
					</select>
					<input class="info_input" type="text" id="sphone" name="sphone" placeholder="중개소 전화번호">
				</span>
			</div>
		<!-- 중개소 주소 다음 api 활용 -->
			<div class="info_input" id="address_wrap">
				<input type="text" class="join" id="postcode" placeholder="우편번호">
						<input type="button" id="addr_button" class="join_btn" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
						<input type="text" class="join" id="address" placeholder="주소">
						<input type="text" class="join" id="address2" placeholder="상세주소">
						<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
						<script>
						    function sample6_execDaumPostcode() {
						        new daum.Postcode({
						            oncomplete: function(data) {
						                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
						
						                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
						                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						                var fullAddr = ''; // 최종 주소 변수
						                var extraAddr = ''; // 조합형 주소 변수
						
						                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
						                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
						                    fullAddr = data.roadAddress;
						
						                } else { // 사용자가 지번 주소를 선택했을 경우(J)
						                    fullAddr = data.jibunAddress;
						                }
						
						                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
						                if(data.userSelectedType === 'R'){
						                    //법정동명이 있을 경우 추가한다.
						                    if(data.bname !== ''){
						                        extraAddr += data.bname;
						                    }
						                    // 건물명이 있을 경우 추가한다.
						                    if(data.buildingName !== ''){
						                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
						                    }
						                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
						                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
						                }
						
						                // 우편번호와 주소 정보를 해당 필드에 넣는다.
						                document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
						                document.getElementById('sample6_address').value = fullAddr;
						
						                // 커서를 상세주소 필드로 이동한다.
						                document.getElementById('sample6_address2').focus();
						            }
						        }).open();
						    }
						</script>
			</div>
		</div>
	</div>
	<div id="submit_wrap"><a href="#" id="frm_submit" class="join_btn">회원가입</a></div>	
</form>
</body>
</html>
<%@ include file="../footer.jsp" %>