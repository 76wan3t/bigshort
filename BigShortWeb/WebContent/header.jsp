<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
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
</head>
<body>

<div id="wrapper">
	<!-- 네비게이션 시작 -->
		<div id="header" role="banner" class="header-shadow clearfix">
		<form class="search">
			<input type="text" name="search" placeholder="">
		</form>
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
				  <c:choose>
				  	<c:when test="${empty sessionScope.loginUser}">
				  		<button onclick="document.getElementById('id01').style.display='block'" class="w3-button">로그인</button>
				  	</c:when>
				  	<c:otherwise>
				  		<ul id = modal_ul>
				  		<li>${sessionScope.loginUser.mname}(${sessionScope.loginUser.mid})</li>
				  		<li><a href="#" id="logout_btn">로그아웃</a></li>
				  		</ul>
				  	</c:otherwise>
				  </c:choose>
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
					<ul class="menu-utility">
						<li class="language-selector">
							<a href="#" data-dlg-options="{width:621}" class="dialogify">
							<img class="flag" src="image/kr.png" alt="">
							<span class="country">대한민국</span>
							</a>
							<a href="#" data-dlg-options="{width:621}" class="dialogify">
							<span class="language">한국어</span>
							</a>
						</li>
						<li class="store-locator">
							<a href="#" title="매장 위치 찾기"> 매장 위치 찾기 </a>
						</li>
					</ul>
					<ul class="menu-utility-user">
						<li class="search">
							<div class="header-search">
								<form role="search" action="/search" method="get" name="simpleSearch" novalidate="novalidate">
									<fieldset>
									<legend class="visually-hidden">카탈로그 검색하기</legend>
										<label class="visually-hidden" for="q">검색하기</label>
										<input type="text" id="q" name="q" value="" placeholder="Search" autocomplete="off" class="valid" style="display: none;">
									<input type="submit" value="go">
									</fieldset>
								</form>
							</div>
						</li>
						<li class="help">
							<a href="#" title="고객센터"> 고객센터</a>
							<div class="popup-box" id="help-dropdown">
								<ul>
									<li class="phone-number first">
										<a href="tel:0000-0000" title="CALL CENTER" class="call-us-icon">
											<span id="call-us-icon" class="help-icon">phone number</span>
										</a>
										<span class="call-us-text">CALL CENTER</span>
										<span class="call-us-number call-us">0000-0000</span>
									</li>
									<li class="email-id">
										<a href="mailto: 0000@naver.com" title="1:1 문의 e-mail" class="email-us-icon">
											<span id="email-us-icon" class="help-icon">email us</span>
										</a>
											<span class="email-us-text">1:1 문의 e-mail</span>
										<a href="mailto: 0000@naver.com" title="1:1 문의 e-mail" class="email-us">
											<span class="email-id">help@naver.com</span>
										</a>
									</li>
									<li>
										<a href="#" title="쇼핑 가이드 " class="order-status-tracking">
											<span id="order-status-tracking-icon" class="help-icon">order status</span>
											<span class="order-status-tracking-text">쇼핑 가이드 </span>
										</a>
									</li>
									<li>
										<a href="#" title="배송 및 반품" class="shipping-and-returns">
											<span id="shipping-and-returns-icon" class="help-icon">shipping and returns</span>
											<span class="shipping-and-returns-text">배송 및 반품</span>
										</a>
									</li>
									<li class="last">
										<a href="#" title="쇼핑 FAQ" class="help-and-faq">
											<span id="help-and-faq-icon" class="help-icon">faq</span>
											<span id="help-and-faq-text">쇼핑 FAQ</span>
										</a>
									</li>
								</ul>
							</div>
						</li>
						<li>
							<a href="freeboard.bizpoll">게시판</a>
						</li>
						<li class="orderstatus">
							<a id=order-status href="#" title="주문배송">주문배송</a>
						</li>
						<!-- <li class="myaccount guestuser">
							<a href="login.bizpoll" title="로그인">
								로그인
							</a>
						</li> -->
						<li class="myaccount guestuser">
							<a href="constract.bizpoll" title="회원가입">
								회원가입
							</a>
						</li>
					</ul>						
				</div>
				<div class="nav-menu">
					<a id="menu-navigator" class="menu menu-navigator"></a>
				</div>
				<div id="navigation" role="navigation">
					<nav class="clearfix">
						<div class="mobile-close-nav">
							<p class="hide" itemprop="brand">MCM</p>
							<a href="index.bizpoll" itemprop="url">
								<div class="logo">MCM</div>
							</a>
							<a class="nav-close-button"></a>
						</div>
						<div id="potraitview-header-search"></div>
							<ul class="menu-category clearfix">
								<li class="primary-navigation">
									<ul class="level-1">
										<li id="Women" class="navigation-link first">
											<a href="#" class="level-1 cat">
											Women
											</a>
									<div class="level-2">
										<div class="menu-wrapper">
											<ul class="level-2">
												<li class="no-show-desktop">
													<a href="#" class="level-2">EXPLORE & DISCOVER</a>
												</li>
												<li class="first">
													<a href="#" class="level-2 cat">New Arrivals</a>
												</li>
												<li>
													<a href="#" class="level-2 cat"> Bags</a>
													<div class="level-3">
														<ul class="level-3">
															<li>
																<a href="#">Totes</a>
															</li>
															<li>
																<a href="#">Shoulders</a>
															</li>
															<li>
																<a href="#">Clutch/Pouch</a>
															</li>
														</ul>
													</div>
												</li>
												<li class=" ">
													<a href="#" class="level-2 cat">Backpacks</a> 
												</li> 
												<li class=" ">
													<a href="#" class="level2 cat">Small Leather Goods</a>
													<div class="level-3">
														<ul class="level-3"></ul>
													</div>
												</li>
												<li class=" ">
													<a href="#" class="level-2 cat">Accessories</a>
													<div class="level-3">
														<ul class="level-3">
															<li>
																<a href="#">Technology</a>
															</li>
															<li>
																<a href="#">Scarves</a>
															</li>
															<li>
																<a href="#">Straps</a>
															</li>
															<li>
																<a href="#">Hats/Earmuffs</a>
															</li>
														</ul>
													</div>
												</li>	 
												<li class=" ">
													<a href="#" class="level-2 cat">Sunglasses</a>
												</li>
												<li class=" ">
													<a href="#" class="level-2 cat">CLOTHING</a>
												</li>
												<li class=" ">
													<a href="#" class="level-2 cat">SHOES</a>
												</li>
												<li class="last">
													<a href="#" class="level-2 cat">ZOO</a>
												</li>
											</ul>
										<div class="custom">
											<p>
												<img alt height="280" src="https://kr.mcmworldwide.com/on/demandware.static/-/Sites-mcm_navigation_catalog/ko_KR/dw7a6fe528/01_MWP8SSE83CO001_1_front.jpg" title>
											</p>
										</div>
										</div>
									</div>
									</li>
									<li id="Women" class="navigation-link first">
											<a href="#" class="level-1 cat">
											MEN
											</a>
									<div class="level-2">
										<div class="menu-wrapper">
											<ul class="level-2">
												<li class="no-show-desktop">
													<a href="#" class="level-2">EXPLORE & DISCOVER</a>
												</li>
												<li class="first">
													<a href="#" class="level-2 cat">New Arrivals</a>
												</li>
												<li>
													<a href="#" class="level-2 cat"> Bags</a>
													<div class="level-3">
														<ul class="level-3">
															<li>
																<a href="#">Totes</a>
															</li>
															<li>
																<a href="#">Shoulders</a>
															</li>
															<li>
																<a href="#">Clutch/Pouch</a>
															</li>
														</ul>
													</div>
												</li>
												<li class=" ">
													<a href="#" class="level-2 cat">Backpacks</a> 
												</li> 
												<li class=" ">
													<a href="#" class="level2 cat">Small Leather Goods</a>
													<div class="level-3">
														<ul class="level-3"></ul>
													</div>
												</li>
												<li class=" ">
													<a href="#" class="level-2 cat">BELTS</a>
													<div class="level-3">
														<ul class="level-3">
															<li>
																<a href="#">Technology</a>
															</li>
															<li>
																<a href="#">Scarves</a>
															</li>
															<li>
																<a href="#">Straps</a>
															</li>
															<li>
																<a href="#">Hats/Earmuffs</a>
															</li>
														</ul>
													</div>
												</li>	 
												<li class=" ">
													<a href="#" class="level-2 cat">CLOTHING</a>
												</li>
												<li class=" ">
													<a href="#" class="level-2 cat">ACCESSORIES</a>
												</li>
												<li class=" ">
													<a href="#" class="level-2 cat">SHOES</a>
												</li>
												<li class="last">
													<a href="#" class="level-2 cat">SUNGLASSES</a>
												</li>
												<li class="last">
													<a href="#" class="level-2 cat">ZOO</a>
												</li>
											</ul>
										<div class="custom">
											<p>
												<img alt height="280" src="https://kr.mcmworldwide.com/on/demandware.static/-/Sites-mcm_navigation_catalog/ko_KR/dwf4c62622/01_MMK8SVE53BK001_1_front.jpg" title>
											</p>
										</div>
										</div>
									</div>
									</li>
									<li id="Women" class="navigation-link first">
											<a href="#" class="level-1 cat">
											TRAVLES
											</a>
									<div class="level-2">
										<div class="menu-wrapper">
											<ul class="level-2">
												<li class="no-show-desktop">
													<a href="#" class="level-2">EXPLORE & DISCOVER</a>
												</li>
												<li class="first">
													<a href="#" class="level-2 cat">LUGGAGE</a>
												</li>
												<li>
													<a href="#" class="level-2 cat"> SMALL LEATHER GOODS</a>
													<div class="level-3">
														<ul class="level-3">
															<li>
																<a href="#">Totes</a>
															</li>
															<li>
																<a href="#">Shoulders</a>
															</li>
															<li>
																<a href="#">Clutch/Pouch</a>
															</li>
														</ul>
													</div>
												</li>
												<li class=" ">
													<a href="#" class="level-2 cat">SUNGLASSES</a> 
												</li> 
											</ul>
										<div class="custom">
											<p>
												<img alt height="280" src="https://kr.mcmworldwide.com/on/demandware.static/-/Sites-mcm_navigation_catalog/ko_KR/dw356057cd/01_MUV7AVY03LE001_1_front.jpg" title>
											</p>
										</div>
										</div>
									</div>
									</li>
								</ul>
							</li>
							<li class="secondary-navigation">
								<ul class="level-1">
									<li id="SpecialGifts" class="navigation-link first">
										<a href="https://kr.mcmworldwide.com/gifts-1" class="level-1 cat">
											Gifts
										</a>
									<div class="level-2 ">
									<div class="menu-wrapper">
										<ul class="level-2">
											<li class="no-show-desktop">
												<a href="https://kr.mcmworldwide.com/gifts-1" class="level-2">EXPLORE &amp; DISCOVER</a>
											</li>
										<li class="first ">
												<a href="http://kr.mcmworldwide.com/lunar-new-year-gift-guide" class="level-2 cat">
													Lunar New Year Gift Guide
												</a>
										</li>
										<li class=" ">
											<a href="http://kr.mcmworldwide.com/gifts/gifts-for-her" class="level-2 cat">
												Gifts For Her
											</a>
											</li>
										<li class=" ">
											<a href="http://kr.mcmworldwide.com/gifts/gifts-for-him" class="level-2 cat">
												Gifts For Him
											</a>
										</li>
									<li class="last ">
											<a href="http://kr.mcmworldwide.com/gifts/gifts-under-%24300" class="level-2 cat">
												Gifts Under $300
											</a>
									</li>
								</ul>
								<div class="custom"><p><img alt="" height="280" src="https://kr.mcmworldwide.com/on/demandware.static/-/Sites-mcm_navigation_catalog/ko_KR/dw555ae062/01_MYS8SPA43PV001_1_front.jpg" title="" width="259"></p></div>
									</div>
								</div>
							</li>
						<li class="lookbook navigation-link  "><a class="level-1 lookbook" href="/collection/spring-summer-2018"> COLLECTION
					</a>
				<div class="level-2 ">
					<div class="menu-wrapper">
						<ul class="level-2">
							<li class="no-show-desktop">
								<a class="level-2" href="/collection/spring-summer-2018">EXPLORE &amp; DISCOVER&nbsp;</a>
							</li>
							<li class="first">
								<a href="http://kr.mcmworldwide.com/collection/spring-summer-2018" class="level-2 SPRING / SUMMER 2018">
									SPRING / SUMMER 2018
								</a>
							</li>
							<li>
								<a href="http://kr.mcmworldwide.com/collection/autumn-winter-2017" class="level-2 AUTUMN / WINTER 2017">
									AUTUMN / WINTER 2017
								</a>
							</li>
							<li class="last">
								<a href="http://kr.mcmworldwide.com/collection/spring-summer-2017" class="level-2 SS17-Lookbook">
									Spring / Summer 2017
								</a>
							</li>
						</ul>
					</div>
				</div>
			</li>
			<li class="navigation-link  last">
				<a href="/zeitgeist" class="level-1 zeitgeist"> ZeitGeist</a>
			<div class="level-2 ">
				<div class="menu-wrapper">
					<ul class="level-2">
						<li class="no-show-desktop">
							<a href="/zeitgeist" class="level-2">DISCOVER THE&nbsp;ZeitGeist</a>
						</li>
						<li class="first">
							<a href="http://kr.mcmworldwide.com/zeitgeist/journal" class="level-2 journal">
								MCM 뉴스
							</a>
						</li>
						<li>
							<a href="http://kr.mcmworldwide.com/zeitgeist/our-story" class="level-2 OurStory">
								MCM 스토리
							</a>
						</li>
						<li class="last">
							<a href="http://kr.mcmworldwide.com/zeitgeist/boutiques" class="level-2 Boutique">
								MCM 매장
							</a>
						</li>
					</ul>
				</div>
			</div>
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