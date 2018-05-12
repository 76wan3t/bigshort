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
<style type="text/css">

	.writer{
		text-align: left;
	}
	.desc_comment{
		text-align: left;
	}
</style>
</head>
<body>

	<c:forEach items="${replylist}" var="replylist">
               <ul class="list_comment"><li class="item animation_up">
                <div class="comment">
			<div class="cont_info">
				<div class="writer">
					${replylist.writer} <fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${replylist.regdata }" />
				</div>
				
				
				<c:set var="cmt" value="${fn:replace(replylist.content,crcn,br)}" />
				<c:set var="cmt" value="${fn:replace(cmt,cr,br)}" />
				<c:set var="cmt" value="${fn:replace(cmt,cn,br)}" />
				<c:set var="cmt" value="${fn:replace(cmt,' ',sp)}" />
				
				
				<div class="desc_comment"><c:out value="${cmt}" escapeXml="false"/></div>
		
				<div class="comment_setting">
					<div class="wrap_comment_menu">
						<a href="#" class="btn_set" >신고</a>
						<c:if test="${fn:trim(sessionScope.loginUser.mid) eq fn:trim(replylist.writer) || fn:trim(sessionScope.loginUser.mname) eq '관리자' }">
							<span class="btn_set"> | <a href="#" class="btn_set rplay_del" href="#" data_num="${bDto.rno }">삭제</a></span>
						</c:if>
					</div>
				</div>
			</div>
		</div>
		</ul>
	</c:forEach>

</body>
</html>