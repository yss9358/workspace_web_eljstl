<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<p>jstl if~else문</p>
	<c:choose>
		<c:when test="${param.color==1}">
			<span style="color: red">빨강</span>
		</c:when>
		<c:when test="${param.color==2}">
			<span style="color: green">녹색</span>
		</c:when>	
		<c:when test="${param.color==3}">
			<span style="color: blue">파랑</span>
		</c:when>
		<c:otherwise>
			<span>color 파라미터 없음</span>
		</c:otherwise>
	</c:choose>
	
	<!-- ------------------------------------------------- -->
	
	<p>jstl if~else문</p>
	<div id="header">
		<h1>MySite</h1>
		<ul>
		<c:choose>
			<c:when test="${empty sessionScope.authUser}"> <!-- session의 authUser가 null 일때 -->
				<li><a href="/mysite/user?a=loginform">로그인</a></li>
				<li><a href="/mysite/user?a=joinform">회원가입</a></li>
			</c:when>
			<c:when test="${ !(empty sessionScope.authuer) }"> <!-- session의 authUser가 null이 아닐때 -->
				<li><a href="/mysite/user?a=modifyform">회원정보수정</a></li>
				<li><a href="/mysite/user?a=logout">로그아웃</a></li> 
				<li> ${sessionScope.authUser.name}님 안녕하세요^^;</li>
			</c:when>
		</c:choose>
		</ul>
	</div> <!-- /header -->
		
	
</body>
</html>