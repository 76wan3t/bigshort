<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/BigShortWeb/css/mypageCss/myIndex.css?var=1"/><!-- css파일 우선순위 설정  -->
</head>
<body>
<div id="index_wrap">
<!-- 회원프로필 -->
	<div id="profile" class="info_wrap">
		<div id="profile_in">
			<div id="img_wrap"><img id="user_logo" src="/BigShortWeb/images/user.png"></div>
			<div id="user_info">
				<ul>
					<li>아이디</li>
					<li>$</li>
					<li>이름</li>
					<li>$</li>
					<li></li>
					<li></li>
				</ul>
			</div>
		</div>
	</div>
<!-- 정보 수정 -->	
	<div id="profile_up" class="info_wrap wrap">
		<div id="up" class="info_div">
		<img class="my_logo" src="/BigShortWeb/images/fix.png">
		<div>정보 수정</div>
		</div>
	</div>
<!-- 탈퇴 -->	
	<div id="profile_del" class="info_wrap wrap">
		<div id="del" class="info_div">
		<img class="my_logo" src="/BigShortWeb/images/delete-cross.png">
		<div>회원 탈퇴</div>
		</div>
	</div>
</div>
</body>
</html>