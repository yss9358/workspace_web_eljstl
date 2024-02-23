<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.vo.UserVo"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>el-jstl</h1>
	<h2>el</h2>
	<h3>request.attribute 값 활용</h3>
	
	<%
		UserVo userVo  = (UserVo)request.getAttribute("userVo");
		int i = (int)(request.getAttribute("num"));
		String str = (String)request.getAttribute("str");
	%>
	1.no=<%=userVo.getNo()%><br>
	2.name=<%=userVo.getName()%><br>
	3.email=<%=userVo.getEmail()%><br>
	4.password=<%=userVo.getPassword()%><br>
	5.gender=<%=userVo.getGender()%><br>
	6.i =<%=i%><br>
	7.str=<%=str%><br>
	<br><br><br><br><br><br><br><br><br><br>
	<!-- 
		requestScope 로 request의 Atrribute값을 사용가능 
		getter로 사용가능
	-->
	no=${requestScope.userVo.no}<br> <!-- getNo() -->
	name=${requestScope.userVo.name}<br>
	email=${requestScope.userVo.email}<br>
	password=${userVo.password}<br>
	gender=${requestScope.userVo.gender}<br>
	i=${requestScope.num}<br>
	str=${requestScope.str}<br>
	
	
</body>
</html>