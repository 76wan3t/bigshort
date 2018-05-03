<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Bigshort_join</title>
<style type="text/css">
body{
	padding: 0;
	margin: 0;
}
#ck{
	color: red;
	font-size: 13px;
	margin-left: 20px;
}
#join_wrap{
	width: 600px;
	margin: 50px auto;
}
.info_wrap{
	width: 500px;
	height: 150px;
	border: 1px solid gray;
}
.info{
	width: 100%;
	height:50px;
	border-bottom: 1px solid gray;
}
.info:last-child{
	border-bottom: none;
}
#info_wrap3{
	height: 230px;
}
.info_input{
	width: 90%;
	height: 50%;
	border: none;
	margin-left: 20px;
}
#mail{
	width: 50%;
}
.brn_input{
	width: 20%;
	border: 1px solid gray;
}
#sphone{
	width: 70%;
}
#frm_submit{
	width: 100px;
	height: 40px;
}
#submit_wrap{
	width: 200px;
	margin: 0 auto;
}
</style>
</head>
<body>
<!-- 사업자 번호 / 아이디(not null) / 이름(not null) / 비번(not null) / 중개소명(not null) / 중개소 주소 / 전화번호(not null) / 이메일(not null) -->
<!-- 사업자 등록 번호 ***-**-***** 10자리 형식 --> 
<form action="" method="POST" id="joinfrm" name="joinfrm">
	<div id="join_wrap">
	
		<div class="info_wrap" id="info_wrap1">
		<!-- 아이디 -->
			<div class="info">
				<span>
					<input class="info_input" id="id" name="id" placeholder="아이디">
				</span>
				<div id="ck">필수정보 입니다.</div>
			</div>
		<!-- 비번 -->
			<div class="info">	
				<span>
					<input class="info_input" id="pass" name="pass" placeholder="비밀번호">
				</span>
			</div>
		<!-- 비번 확인 -->
			<div class="info">
				<span>
					<input class="info_input" id="pass2" name="pass2" placeholder="비밀번호 재확인">
				</span>
			</div>
		</div>
<br>
		<div class="info_wrap" id="info_wrap2">
		<!-- 이름	 -->
			<div class="info">
				<span>
					<input class="info_input" id="name" name="name" placeholder="이름">
				</span>
			</div>
		<!-- 전화번호 -->
			<div class="info">
				<span>
					<input class="info_input" id="phone" name="phone" placeholder="핸드폰 번호 ('-'를 제외한 11자리만 입력해주세요.)">
				</span>
			</div>
		<!-- 이메일 -->	
			<div class="info">
				<span class="mail_span">
					<input class="info_input" id="mail" name="mail" placeholder="이메일">
				</span>
				<span>
					<select>
						<option>직접 입력 </option>
						<option>@naver.com</option>
						<option>@hanmail.net</option>
						<option>@gmail.com</option>
					</select>
				</span>
			</div>
		</div>

<br>		
		<div class="info_wrap" id="info_wrap3">
		<!-- 사업자 번호 -->
			<div class="info">
				<span>
					<input class="info_input brn_input" id="brn1" name="brn" placeholder="사업자 번호"> 
					- <input class="info_input brn_input" id="brn2"> 
					- <input class="info_input brn_input" id="brn3">
				</span>
			</div>
		<!-- 중개소 명 -->
			<div class="info">
				<span>
					<input class="info_input" id="sname" name="sname" placeholder="중개소 이름">
				</span>
			</div>
		<!-- 중개소 전화번호 -->
			<div class="info">
				<span>
					<select>
						<option>062</option>
						<option>061</option>
						<option>063</option>
					</select>
					<input class="info_input" id="sphone" name="sphone" placeholder="중개소 전화번호">
				</span>
			</div>
		<!-- 중개소 주소 다음 api 활용 -->
			<div class="info">
				<input type="text" class="join" id="sample6_postcode" placeholder="우편번호">
						<input type="button" id="addr_button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
						<input type="text" class="join" id="sample6_address" placeholder="주소">
						<input type="text" class="join" id="sample6_address2" placeholder="상세주소">
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
	<div id="submit_wrap"><input id="frm_submit" name="frm_submit" type="submit" value="회원가입"></div>	
</form>
</body>
</html>