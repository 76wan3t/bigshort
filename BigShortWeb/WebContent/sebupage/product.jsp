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
	
	<c:forEach items="${product}" var="product">
		<div class="product">
			<a href="${product.url}">
			<span class="aptname">건물명 : ${product.aptname}</span>
			<span class="standard">면적 : ${product.dongextent}ｍ²</span>
			<span class="average">평균가 : <fmt:formatNumber value="${pDto.mean_price}" pattern="###,###,###,###"/>원
			</span>
			<span class="price">매매가 :${product.nameprice}원</span>
			</a>
		</div>
	</c:forEach>
	
	
	
</body>
</html>