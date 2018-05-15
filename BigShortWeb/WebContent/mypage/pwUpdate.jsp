<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>  
  
<%@ include file="../header.jsp" %>    
<html>
<head>
<link rel="stylesheet" type="text/css" href="/BigShortWeb/css/mypageCss/pwUpdate.css?var=1"/><!-- css파일 우선순위 설정  -->
<script type="text/javascript">
	$(document).ready(function(){

		$("#pw").blur(function(){
			var pw = $("#pw").val();
			var pw2 = $("#pw2").val();
			var ck = $("#ck");
			
			if(pw != pw2){
				ck.css("display","block").text("잘 못 입력하셨습니다. 다시 한 번 더 입력해주세요.");
			}else if(pw == pw2){
				ck.css("display","none");
			}
		});
		
		$("#cksubmit").on("click",function(){
			var pw = $.trim($("#pw").val());
			var pw2 = $.trim($("#pw2").val());
			var newpw = $.trim($("#newpw").val());
			var newpw2 = $.trim($("#newpw2").val());
			var ck = $("#ck");
			
			var regPass = /^.*(?=.{6,20})(?=.*[0-9])(?=.*[a-zA-Z]).*$/;
			if(pw != pw2){
				return false;
			}else if(!regaPass.text(newpw)){
				$("#ck").text("6~20자 이내 숫자,영문만 사용하세요.").css("display","block");
				return false;
			}else{
				ck.css("display","none");
				$("#myckfrm").submit();
			}
		});
	});
	
</script>
</head>
<body>
	<div id="myckwrap" class="wrap">
		<div id="title">비밀번호 변경</div>
		<form action="updatePw" method="POST" id="myckfrm"  class="wrap">
			<span class="subtitle">기존의 비밀번호를 입력해주세요.</span>
			<input id="id" name="id" value="${sessionScope.loginUser.mid}" type="hidden">
			<!-- 기존 pw확인 -->
			<!-- pw(데이터값과 맞는지 확인) -->
			<input id="pw" class="ckinput" name="pw" type="password">
			<input id="pw2" name="pw2" type="hidden" value="${sessionScope.loginUser.mpw}">

			<!-- 새로운 비밀번호 -->
			<span class="subtitle">새로운 비밀번호</span>
			<input id="newpw" class="ckinput" name="newpw" type="password">
			<span class="subtitle">새로운 비밀번호 확인</span>
			<input id="newpw2" class="ckinput" name="newpw2" type="password">
			<div id="ck"></div>
			<!-- 버튼 -->
			<a href="#" id="cksubmit" class="ckbtn">확인</a>
			<a href="myIndex.bigshort" id="ckcancle" class="ckbtn">취소</a>
		</form>
	</div>
</body>
</html>
<%@ include file="../footer.jsp" %>