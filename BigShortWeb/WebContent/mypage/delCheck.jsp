<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>  
  
<%@ include file="../header.jsp" %>    
<html>
<head>
<link rel="stylesheet" type="text/css" href="/BigShortWeb/css/mypageCss/delCheck.css?var=1"/><!-- css파일 우선순위 설정  -->
<script type="text/javascript">
	$(document).ready(function(){
		$("#pw").blur(function(){
			var mpw = $.trim($("#pw").val());
			var mpw2 = $.trim($("#pw2").val());
			if(mpw != mpw2){
				$("#ck").css("display","block").text("일치하지 않습니다. 다시 한 번 입력해주십시오.");
			}else{
				$("#ck").css("display","none");
			}
		});
		
		$("#cksubmit").click(function(){
			var mpw = $.trim($("#pw").val());
			var mpw2 = $.trim($("#pw2").val());
			var mid = $.trim($("#id").val())
			
			if(mpw != mpw2){
				return false;
			}else if(mid == ""){
				return false;
			}
			$("#myckfrm").submit();
		});
	});
</script>
</head>
<body>
	<div id="myckwrap" class="wrap">
		<div id="title">탈퇴 확인</div>
		<form action="memdelete.bigshort" method="POST" id="myckfrm"  class="wrap">
			<div id="subtitle">본인 확인을 위해 비밀번호를 입력해 주십시오</div>
			<!-- id(로그인값 받아오기 수정불가) -->
			<input id="id" class="ckinput" name="id" type="text" readonly="readonly" value="${sessionScope.loginUser.mid}">
			<!-- pw(데이터값과 맞는지 확인) -->
			<input id="pw" class="ckinput" name="pw" type="password">
			<input id="pw2" name="pw2" type="hidden" value="${sessionScope.loginUser.mpw}">
			<div id="ck"></div>
			
			<a href="#" id="cksubmit" class="ckbtn">확인</a>
			<a href="myIndex.bigshort" id="ckcancle" class="ckbtn">취소</a>
		</form>
	</div>
</body>
</html>
<%@ include file="../footer.jsp" %>