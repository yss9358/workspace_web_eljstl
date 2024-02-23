<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.vo.UserVo" %>

<body>
	<!--  
		jsp에서 el사용
		
		
		parameter -> param.변수
		attribute -> requestScope.별명.변수 (requestScope 생략가능)
		session -> sessionScope.별명.변수 (sessionScope 생략가능)
	
	-->



	<p>스크립틀릿 사용</p>
	
	<%
		UserVo authUser = (UserVo)session.getAttribute("authUser");
	%>
		<div id="header" class="clearfix">
		<%if(authUser != null){ %>
			<ul>
				<li><%=authUser.getName()%>님 안녕하세요^^</li>
				<li><a href="" class="btn_s">로그아웃</a></li>
				<li><a href="" class="btn_s">회원정보수정</a></li>
			</ul>
		<%} else {%>
			<ul>
				<li><a href="" class="btn_s">로그인</a></li>
				<li><a href="" class="btn_s">회원가입</a></li>
			</ul>
		<%} %>
		</div>
		<!-- //header -->
	
	<p>el사용</p>
	
	<div id="header" class="clearfix">
		<%if(authUser != null){ %>
			<ul>
				<li>${sessionScope.authUser.name}님 안녕하세요^^</li>
				<li><a href="" class="btn_s">로그아웃</a></li>
				<li><a href="" class="btn_s">회원정보수정</a></li>
			</ul>
		<%} else {%>
			<ul>
				<li><a href="" class="btn_s">로그인</a></li>
				<li><a href="" class="btn_s">회원가입</a></li>
			</ul>
		<%} %>
		</div>
		<!-- //header -->
	<p>el사용</p>
	
	<div id="header" class="clearfix">
		<%if(authUser != null){ %>
			<ul>
				<li>${authUser.name}님 안녕하세요^^</li>
				<li><a href="" class="btn_s">로그아웃</a></li>
				<li><a href="" class="btn_s">회원정보수정</a></li>
			</ul>
		<%} else {%>
			<ul>
				<li><a href="" class="btn_s">로그인</a></li>
				<li><a href="" class="btn_s">회원가입</a></li>
			</ul>
		<%} %>
		</div>
		<!-- //header -->
	
	
</body>
</html>