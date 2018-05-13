<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>  
  
<%@ include file="../header.jsp" %>    
<html>
<head>
<link rel="stylesheet" type="text/css" href="/BigShortWeb/css/mypageCss/myCheck.css?var=1"/><!-- css파일 우선순위 설정  -->
</head>
<body>
	<div id="myckwrap" class="wrap">
		<div id="title">탈퇴 확인</div>
		<form action="" method="POST" id="myckfrm"  class="wrap">
			<div id="subtitle">본인 확인을 위해 비밀번호를 입력해 주십시오</div>
			<!-- id(로그인값 받아오기 수정불가) -->
			<input id="id" class="ckinput" name="id" type="text" readonly="readonly" value="$">
			<!-- pw(데이터값과 맞는지 확인) -->
			<input id="pw" class="ckinput" name="pw" type="password">
			<input id="cksubmit" class="ckinput"  type="submit" value="확인">
		</form>
	</div>
</body>
</html>
<%@ include file="../footer.jsp" %>