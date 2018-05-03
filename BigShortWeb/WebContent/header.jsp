<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
	
	<%
		response.setHeader("Cache-control", "no-store");
		response.setHeader("Pragma", "no-cache");
	%>
	
	<%
    	// 줄바꿈을 위한 코딩
    	  pageContext.setAttribute("cr", "\r");
		  pageContext.setAttribute("cn", "\n");
		  pageContext.setAttribute("crcn", "\r\n");
		  pageContext.setAttribute("sp", "&nbsp;");
		  pageContext.setAttribute("br", "<br/>");

	%> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="./css/header.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>

<div id="wrapper">
	<!-- 네비게이션 시작 -->
		<div id="header" role="banner" class="header-shadow clearfix">

			<header class="clearfix">
				<h1 class="primary-logo clearfix">
					<p class="hide" itemprop="brand">MCM</p>
					<a href="#" itemprop="url">
						<div class="logo">MCM</div>
					</a>
				</h1>
				<div class="utility-menu">
				<!-- 로그인 모달 -->
				<div class="modal_btn">
				  <!-- <button onclick="document.getElementById('id01').style.display='block'" class="w3-button">로그인</button> -->
				  <div id="id01" class="w3-modal">
				    <div class="w3-modal-content">
				      <div class="w3-container">
				        <span onclick="document.getElementById('id01').style.display='none'" class="w3-button w3-display-topright">&times;</span>
				       <!-- 모달 로그인 -->
				       <div id="wrap">
							<div id="kakao_header">
								<h1>
								<a id="kakao_logo" href="#">
									<img src="image/logo.png">
								</a>
								</h1>
							</div>
							<div id="kakao_content">
								<div id="login_content">
									<div id="login_area">
							<div id="container">
								<form action="loginck.bizpoll" method="POST" id="frm_login" name="frm_login">
									<input class="idpw" type="text" id="login_id" name="login_id" placeholder="아이디를 입력 해 주세요"></input>
									<input class="idpw" type="password" id="login_pw" name="login_pw" placeholder="비밀번호(4~16자리)"></input>
									<span id="span_login">아이디 또는 비밀번호가 틀렸습니다</span>
									<a href="#" id="btn_login" name="btn_login"><span> 로그인 </span></a>
								</form>		
							</div>
							<div id="login_help">
								<div id="remember"> 
									<input type="checkbox" name="remember" id="remember2">
									<label for="remember2">자동 로그인</label>
								</div>
								
								<div class="right">
									<a href="#">계정 찾기</a>
									<span class="right_bar"></span>
									<a href="#">비밀번호 찾기</a>
								</div>
								<a id="member" href="member.bizpoll">회원가입</a>
							</div>
									</div>
								</div>
							</div>
						</div>
				       <!-- 모달 끝 -->
				      </div>
				    </div>
				  </div>
				</div>
					
					<ul class="menu-utility-user">
						<li class="search">
							<div class="header-search">
							</div>
						</li>

						<li>
							<c:choose>
							  	<c:when test="${empty sessionScope.loginUser}">
							  		<a onclick="document.getElementById('id01').style.display='block'" style="cursor: pointer;" >로그인</a>
							  	</c:when>
							  	<c:otherwise>
							  		<ul id = modal_ul>
							  		<li>${sessionScope.loginUser.mname}(${sessionScope.loginUser.mid})</li>
							  		<li><a href="#" id="logout_btn">로그아웃</a></li>
							  		<li><a href="#" id="mypage">마이페이지</a></li>
							  		</ul>
							  	</c:otherwise>
						    </c:choose>
				  		</li>
						<li class="myaccount guestuser">
							<a href="constract.bizpoll">회원가입</a>
						</li>
												<li>
							<a href="freeboard.bizpoll">자유게시판</a>
						</li>
						<li class="help">
							<a href="#" title="고객센터">고객센터</a>
						</li>

					</ul>						
				</div>
				<div class="nav-menu">
					<a id="menu-navigator" class="menu menu-navigator"></a>
				</div>
				<div id="navigation" role="navigation">
					<nav class="clearfix">
							<ul class="menu-category clearfix">
								<li class="primary-navigation">
									<ul class="level-1">
										<li id="Women" class="navigation-link first">
											<a href="#" class="level-1 cat">
												광산구
											</a>
										</li>
										<li id="Women" class="navigation-link first">
											<a href="#" class="level-1 cat">
											북구
											</a>
										</li>
										<li id="Women" class="navigation-link first">
											<a href="#" class="level-1 cat">
												남구
											</a>
										</li>
										<li id="SpecialGifts" class="navigation-link first">
											<a href="https://kr.mcmworldwide.com/gifts-1" class="level-1 cat">
												서구
											</a>
										</li>
										<li class="lookbook navigation-link  ">
											<a class="level-1 lookbook" href="#"> 
												동구
											</a>
										</li>
									</ul>
								</li>
							</ul>

					</nav>
				</div>
			</header>
		</div>
	</div>
	

</body>
</html>