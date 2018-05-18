<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
</head>
<body>
	
	<c:forEach items="${gwangsan}" var="gwangsan">
				<div class="product">
					<a href="${gwangsan.url}">
					<span class="aptname">건물명 : ${gwangsan.aptname}</span>
					<span class="standard">평수 : ${gwangsan.dongextent}</span>
					<span class="average">평균가 : 
						<fmt:formatNumber value="${pDto.mean_price}" pattern="###,###,###,###"/>원
					</span>
					<span class="price">매매가 : ${gwangsan.nameprice}원</span>
					</a>
				</div>
		</c:forEach>
	
	
	
</body>
</html>