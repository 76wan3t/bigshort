<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>  
  
<%@ include file="../header.jsp" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Bigshort_join</title>
<link rel="stylesheet" type="text/css" href="/BigShortWeb/css/mypageCss/myUpdate.css?var=1"/><!-- css파일 우선순위 설정  -->
<script type="text/javascript">
	
	/* 회원가입 버튼을 눌렀을 경우 */
	$(document).on("click","#frm_submit",function(){
		var mid = $("#id"),
		 	mpw = $("#pass"),
		 	mpw2 = $("#pass2"),
		 	mname = $("#name"),
		 	mphone = $("#phone"),
		 	mmail = $("#mail"),
		 	mmail2 = $("#mail2"),
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
			mail2 = $.trim(mmail2.val()),
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
		/* pwck */
		var regPass = /^.*(?=.{6,20})(?=.*[0-9])(?=.*[a-zA-Z]).*$/;
		if(pw == ""){
			mpw.focus();
			mpw.css("display","block").css("margin-bottom","0");
			$("#pwck").css("display","block");
			return false;
		}else if(!regPass.test(pw)){
			mpw.select();
			mpw.css("display","block").css("margin-bottom","0");
			$("#pwck").text("6~20자 이내 숫자,영문만 사용하세요.").css("display","block");
			return false;
		}else if(pw2 == ""){
			mpw2.focus();
			$("#pwck").css("display","none");
			mpw2.css("display","block").css("margin-bottom","0");
			$("#pw2ck").css("display","block");
			return false;
		}else if(pw != pw2){
			mpw2.focus();
			mpw2.css("display","block").css("margin-bottom","0");
			$("#pw2ck").text("다시 입력해주세요.").css("display","block");
			return false;
		}else{
			mphone.focus();
			$("#pwck").css("display","none");
			$("#pw2ck").css("display","none");
		}
		
		/* nameck */
		if(name == ""){
			mname.focus();
			mname.css("display","block").css("margin-bottom","0");
			$("#nameck").css("display","block");
			return false;
		}else if($.isNumeric(name) == true){
			mname.focus();
			mname.css("display","block").css("margin-bottom","0");
			$("#nameck").text("한글만 입력해주세요").css("display","block");
			return false;
		}else{
			$("#nameck").css("display","none");
			mphone.focus();
		}
		
		/* phoneck */
		var regPhone = /^(?:(010\d{4})|(01[1|6|7|8|9]\d{3,4}))(\d{4})$/;
		if(phone == ""){
			mphone.focus();
			mphone.css("display","block").css("margin-bottom","0");
			$("#phoneck").css("display","block");
			return false
		}else if($.isNumeric(phone)==false){
			mphone.focus();
            mphone.val("");
            mphone.css("display","block").css("margin-bottom","0");
            $("#phoneck").text("숫자만 입력하세요.").css("display","block");
            return false;
		}else if(!regPhone.test(phone)){
			mphone.focus();
			mphone.css("display","block").css("margin-bottom","0");
            $("#phoneck").text("정확한 값을 입력하세요.").css("display","block");
            return false;
		}else{
			mmail.focus();
			$("#phoneck").css("display","none");
		}
		
		/* mail */
		var regEmail= /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		var allmail = mail +"@"+ mail2;
		if(mail == ""){
			mmail.focus();
			mmail.css("display","block").css("margin-bottom","0");
            $("#mailck").text("정확한 값을 입력하세요.").css("display","block");
			return false;
		}else if(mail2 == ""){
			mmail2.focus();
			mmail.css("display","block").css("margin-bottom","0");
            $("#mailck").text("정확한 값을 입력하세요.").css("display","block");
			return false;
		}else if(!regEmail.test(allmail)){
			mmail.focus();
			mmail.css("display","block").css("margin-bottom","0");
            $("#mailck").text("정확한 값을 입력하세요.").css("display","block");
			return false;
		}else{
			$("#mailck").css("display","none");
		}
	/* 선택정보 */
		/* 사업자정보 */
		/* brn */
		if($.isNumeric($(".brn_input"))==true){
			$(".brn_input").css("margin-bottom","0");
			$("#seleck1").css("display","block").text("숫자를 입력해주세요.");
			return false;
		}else if($.isNumeric($(".brn_input"))==false){
			$("#seleck1").css("display","none");	
		}
		/* sname 상호명 */
		/* sphone */
	
		$("#joinfrm").submit();
	});
	
	/* mail select */
	$(document).on("change","#selemail",function(){
		var selemail = $("#selemail").val();
		if(selemail == "self"){
			$("#mail2").focus();
			$("#mail2").val(""); //원래 있던 값을 없애고 공백으로 
			$("input[name='mail2']").attr("readonly",false); // readonly 해제
		}else{
			$("#mail2").val(selemail).css("text-align","left").css("padding-left","5px");
			$("input[name='mail2']").attr("readonly",true);	// readonly 설정
		}
	});
	
	/* sphone select */
	// 가게 전화번호 같은 경우에는 지역번호를 입력후 이어서 쓸수 있도록 설정
	$(document).on("change","#sphone_num", function(){
		var sphone = $(this).val();
		if(sphone == "choi"){
			sphone.focus();
		}else{
			$("#sphone").val(sphone).css("text-align","left");
		}
	});
	
	
</script>
</head>
<body>
<input type="hidden" id="myindex" value="mypage">
<form action="" method="POST" id="joinfrm" name="joinfrm">
	<div id="join_wrap">
	<div id="title">정보 수정</div>
		<div id="info_wrap1">
		<!-- 아이디 (필수) -->
			<div class="info" id="id_div">
				<span>
					&nbsp;&nbsp;*아이디:<input class="info_input " type="text" id="id" name="id" readonly="readonly" value="${sessionScope.loginUser.mid}">
				</span>
				<span id="idck" class="ck">필수정보 입니다.</span>
			</div>
<br>
		<div class="info_wrap" id="info_wrap2">
		<!-- 이름	 (필수) -->
			<div class="info" id="name_div">
				<span>
					&nbsp;&nbsp;*이름:<input class="info_input" type="text" id="name" name="name" maxlength="4" value="${member.mname}">
				</span>
				<span id="nameck" class="ck">필수정보 입니다.</span>
			</div>
		<!-- 전화번호 (필수) -->
			<div class="info" id="phone_div">
				<span>
					&nbsp;&nbsp;*전화번호:<input class="info_input" type="text" id="phone" name="phone" maxlength="11"  value="${member.mphone}">
				</span>
				<span id="phoneck" class="ck">필수정보 입니다.</span>
			</div>
		<!-- 이메일 (필수) -->	
			<div id="mail_div" class="info">
				<span class="mail_span">
					&nbsp;&nbsp;*이메일:<input class="info_input mail_input" type="text" id="mail" name="mail" value="${member.memail}">
					@<input class="info_input mail_input" type="text" id="mail2" name="mail2"  value="${member.memail2}">
				</span>
				<span>
					<select id="selemail">
						<option value="self">직접 입력 </option>
						<option value="naver.com">naver.com</option>
						<option value="hanmail.net">hanmail.net</option>
						<option value="gmail.com">gmail.com</option>
					</select>
				</span>
				<span id="mailck" class="ck">필수정보 입니다.</span>
			</div>
		</div>

<br>		
		<div class="info_wrap" id="info_wrap3">
		<!-- 사업자 번호 -->
		<!-- 사업자 등록 번호 ***-**-***** 10자리 형식 --> 
			<div id="brn_div" class="info selinfo">
				<span>
					&nbsp;사업자번호:<input class="info_input brn_input" id="brn1" name="brn1" maxlength="3" > 
					- <input class="info_input brn_input" id="brn2" name="brn2" placeholder="**" maxlength="2"> 
					- <input class="info_input brn_input" id="brn3" name="brn3" placeholder="*****" maxlength="5">
				</span>
				<span id="seleck1" class="ck"></span>
			</div>
		<!-- 중개소 명 -->
			<div class="info selinfo" id="sname_div">
				<span>
					&nbsp;&nbsp;중개소이름:<input class="info_input" type="text"  id="sname" name="sname" value="${member.mbisname}">
				</span>
			</div>
		<!-- 중개소 전화번호 -->
			<div class="info selinfo" id="sphone_div">
				<span class="info_input">
					<select id="sphone_num">
						<option value="choi">선택</option>
						<option value="062)">062</option>
						<option value="061)">061</option>
						<option value="063)">063</option>
					</select>
					<input class="info_input" type="text" id="sphone" name="sphone" placeholder="중개소 전화번호" maxlength="11"  value="${member.mbisphone}">
				</span>
				<span id="seleck2" class="ck"></span>
			</div>
		<!-- 중개소 주소 다음 api 활용 -->
			<div class="info_input" id="address_wrap">
				<input type="text" class="join" id="postcode" name="postcode" placeholder="우편번호" value="${member.mjusonum}">
						<input type="button" id="addr_button" class="join_btn" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
						<input type="text" class="join addr_input" id="address" name="address" placeholder="주소"  value="${member.mjuso}">
						<input type="text" class="join addr_input" id="address2" name="address2" placeholder="상세주소" value="${member.mjuso2}">
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
						                document.getElementById('postcode').value = data.zonecode; //5자리 새우편번호 사용
						                document.getElementById('address').value = fullAddr;
						
						                // 커서를 상세주소 필드로 이동한다.
						                document.getElementById('address2').focus();
						            }
						        }).open();
						    }
						</script>
			</div>
		</div>
	
	</div>
	
	<div id="submit_wrap">
		<a href="#" id="frm_submit" class="join_btn">수정</a>
		<a href="myIndex.bigshort" id="frm_cancle" class="join_btn">취소</a>
	</div>	
</form>
</body>
</html>