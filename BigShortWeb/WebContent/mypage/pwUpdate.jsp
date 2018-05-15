<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>  
  
<%@ include file="../header.jsp" %>    
<html>
<head>
<link rel="stylesheet" type="text/css" href="/BigShortWeb/css/mypageCss/pwUpdate.css?var=1"/><!-- css파일 우선순위 설정  -->
<script type="text/javascript">

</script>
</head>
<body>
	<div id="myckwrap" class="wrap">
		<div id="title">비밀번호 변경</div>
		<form action="" method="POST" id="myckfrm"  class="wrap">
			<span class="subtitle">기존의 비밀번호를 입력해주세요.</span>
			<!-- 기존 pw확인 -->
			<!-- pw(데이터값과 맞는지 확인) -->
			<input id="pw" class="ckinput" name="pw" type="password">

			<!-- 새로운 비밀번호 -->
			<span class="subtitle">새로운 비밀번호</span>
			<input id="newpw" class="ckinput" name="newpw" type="password">
			<span class="subtitle">새로운 비밀번호 확인</span>
			<input id="newpw2" class="ckinput" name="newpw2" type="password">
			
			<!-- 버튼 -->
			<a href="#" id="cksubmit" class="ckbtn">확인</a>
			<a href="myIndex.bigshort" id="ckcancle" class="ckbtn">취소</a>
		</form>
	</div>
</body>
</html>
<%@ include file="../footer.jsp" %>