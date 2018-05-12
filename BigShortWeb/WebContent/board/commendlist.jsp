<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
           <!-- JSTL 라이브러리를 사용하기 위한 선언문 -->
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   <!-- prefix는 표기법  -->
		<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
		<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:forEach items="${replylist}" var="replylist">
               <ul class="list_comment"><li class="item animation_up">
                <div class="comment">
			<div class="cont_info">
				<div class="info_append">
					<strong class="tit_userid">
						<a href="#" class="link_userid">${replylist.writer}</a>
					</strong>
					<span class="ico_dot"></span>
					<span class="txt_time"></span>
				</div>
				
				<p class="desc_comment">${replylist.content}</p>
		
				<div class="comment_setting">
					<div class="wrap_comment_menu">
						<button type="button" class="btn_set" data-action="report" data-commentno="347302">신고</button>
					</div>
				</div>
			</div>
		</div>
		</ul>
	</c:forEach>

</body>
</html>