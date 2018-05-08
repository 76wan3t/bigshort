<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
<style type="text/css">
.w3-container {
	z-index: 3;
	opacity: 1;
	
}
#span_id{
	color: red;
	}
</style>
<script type="text/javascript" src="/BigShortWeb/js/jquery-3.3.1.js"></script>
<script type="text/javascript">

	$(document).ready(function(){
		
		$("#btn_login").on("click", function(){
				 
	     			var id =$("#login_id").val();
	     			var pw = $("#login_pw").val();
	     			
						
					if(id == ""){
						 $("#login_id").focus();
	                 	 $("#span_id").text("아이디를 입력해주세요").css("display", "block");
	                 	 return false;
	                 	
					}else if(pw == ""){
						 $("#login_pw").focus();
	                 	 $("#span_id").text("비밀번호를 입력해주세요").css("display", "block");
	                 	 return false;
	                 	
					}else {
						
						$("#span_id").css("display", "none");
						
						$.ajax({
							url:"/BigShortWeb/loginck.bigshort",
							type: "POST",
							dataType :"json",
							data : "id=" +id +"&"+ "pw=" +  pw,
							success : function(data){
								
								if(data.flag == 0 ){
									
									alert("로그인 실패");
									$("#loginid").select();
									$("#span_id").text(" 아이디 또는 패스워드가 틀렸습니다. ").css("display", "block");
									
								}else{
									
									alert("로그인성공");
									location.reload();
								} 
							},
							
							error : function(){
								alert("System Error!!!");
								
							}
						});
					}
			});

		
		$("#login_id").blur(function(){
         	var uid = $('#login_id');
         	var id = $.trim(uid.val());
 			if(id != ""){
 				$("#span_id").css("display", "none");
 			}
         });
		
		$("#login_pw").blur(function(){
         	var upw = $('#login_pw');
         	var pw = $.trim(upw.val());
 			if(pw != ""){
 				$("#span_id").css("display", "none");
 			}
 				
         });
		
	
	$("#logout_btn").on("click", function(){
		
		$.ajax({
			url:"logout.bigshort",
			type: "POST",
			dataType :"JSON",
			success : function(data){				
				if(data.flag == "0" ){
					
					alert("로그아웃 실패");
					
				}else{
					
					alert("로그아웃 성공");
					//location.href = "index.bizpoll";
					//$("#frm_memeber").submit();
					location.reload();
				} 
			},
			
			error : function(){
				alert("System Error!!!");
				
				}
			});
		});
	});

</script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" type="text/css" href="/BigShortWeb/css/header.css?var=1">
<link rel="stylesheet" type="text/css" href="/BigShortWeb/css/footer.css?var=1">
</head>
<body>

	
	<div id="wrapper">
		<!-- 네비게이션 시작 -->
		<div id="header" role="banner" class="header-shadow clearfix">
			<header class="clearfix">
				<div class="utility-menu">
					<a id="logo_a" href="/BigShortWeb/index.bigshort">
						<img id="logo" src="/BigShortWeb/images/LOGO6.png">가방
					</a>
					<div id="muin">
						<ul class="menu-utility-user">
							<li class="search"></li>
							<!-- <li class="logo_a">가방</li> -->
							<li><c:choose>
									<c:when test="${empty sessionScope.loginUser}">
										<a
											onclick="document.getElementById('id01').style.display='block'"
											style="cursor: pointer;">로그인</a>
									</c:when>
									<c:otherwise>
										<ul id=modal_ul>
											<li>${sessionScope.loginUser.mname}(${sessionScope.loginUser.mid})</li>
											<li><a href="#" id="logout_btn">로그아웃</a></li>
											<li><a href="#" id="mypage">마이페이지</a></li>
										</ul>
									</c:otherwise>
								</c:choose></li>
							<li class="myaccount guestuser"><a href="/BigShortWeb/constract.bigshort">회원가입</a>
							</li>				
							<li class="help"><a href="/BigShortWeb/listAll.bigshort" title="고객센터">고객센터</a></li>

						</ul>
					</div>
				</div>

				<!-- <div id="navigation" role="navigation">
					<img id="logo" src="/BigShortWeb/images/gabang_logo.png">
					<nav class="clearfix">
						<ul class="menu-category clearfix">
							<li class="primary-navigation">
								<ul class="level-1">
									<li id="Women" class="navigation-link first"><a href="#" class="level-1 cat"> 광산구 </a></li>
									<li id="Women" class="navigation-link first"><a href="#" class="level-1 cat"> 북구 </a></li>
									<li id="Women" class="navigation-link first"><a href="#" class="level-1 cat"> 남구 </a></li>
									<li id="SpecialGifts" class="navigation-link first"><a href="https://kr.mcmworldwide.com/gifts-1" class="level-1 cat">서구 </a></li>
									<li class="lookbook navigation-link"><a class="level-1 lookbook" href="#"> 동구 </a></li>
								</ul>
							</li>
						</ul>

					</nav>
				</div> -->
			</header>
					<div id="header_inner"></div>
		</div>
	</div>




	<!-- 로그인 모달 -->
	<div class="modal_btn">
		<!-- <button onclick="document.getElementById('id01').style.display='block'" class="w3-button">로그인</button> -->
		<div id="id01" class="w3-modal">
			<div class="w3-modal-content">
				<div class="w3-container">
					<span
						onclick="document.getElementById('id01').style.display='none'"
						class="w3-button w3-display-topright">&times;</span>
					<!-- 모달 로그인 -->
					<div id="wrap">
						<div id="bigshort_header">
							<h1>
								<a id="bigshort_logo" href="#"> <img
									src="/BigShortWeb/images/LOGO6.png"><span>가방</span>
								</a>
							</h1>
						</div>
						<div id="bigshort_content">
							<div id="login_content">
								<div id="login_area">
									<div id="container_login">
										<form action="loginck.bizpoll" method="POST" id="frm_login"
											name="frm_login">
											<input class="idpw" type="text" id="login_id" name="login_id" placeholder="아이디를 입력 해 주세요"></input> 
											<input class="idpw" type="password" id="login_pw" name="login_pw" placeholder="비밀번호(4~16자리)"></input>
											<span id="span_id">아이디 또는 비밀번호가 틀렸습니다</span> 
											<a href="#" id="btn_login" name="btn_login"><span> 로그인 </span></a>
										</form>
									</div>
									<div id="login_help">
										<div id="remember">
											<a id="member" href="/BigShortWeb/constract.bigshort">회원가입</a>
											<span class="right_bar"></span>
										</div>

										<div class="right">
											<a href="#">계정 찾기</a> <span class="right_bar"></span> <a
												href="#">비밀번호 찾기</a>
										</div>
										
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 모달 끝 -->
	
	
	<!-- ScrollToTop -->
	<button onclick="topFunction()" id="myBtn">Top</button>
	
	<script  type="text/javascript">
	window.onscroll = function() {scrollFunction()};
	
	function scrollFunction(){
			if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20){
			document.getElementById("myBtn").style.display = "block";
		} else {
			document.getElementById("myBtn").style.display = "none";
			
			}
	}
	
	function topFunction(){
		
		document.body.scrollTop.scrollTop = 0;
		document.documentElement.scrollTop = 0;
	}
	</script>

</body>
</html>