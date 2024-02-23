<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>el-jstl</h1>
	<h2>el</h2>
	<h3>반복문 - list</h3>
	<%@ page import="com.javaex.vo.UserVo" %>
	<%@ page import="java.util.List"%>
	<%
		List<UserVo> userList = (List<UserVo>)request.getAttribute("userList");
	%>
	<%-- 향상된 for문
	<%
	for(UserVo vo : userList){
	%>
	<tr>
		<td><%=vo.getNo()%></td>
		<td><%=vo.getName()%></td>
		<td><%=vo.getEmail()%></td>
		<td><%=vo.getPassword()%></td>
		<td><%=vo.getGender()%></td>			
	</tr>
	<%
	} 
	%> 
	--%>
	<h4>스크립틀릿 for문</h4>
	<table border="1">
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>이메일</th>
				<th>패스워드</th>
				<th>성별</th>
			</tr>
		</thead>
		<tbody>
			
			<%
			for(int i=0; i<userList.size(); i++) {
			%>
			<tr>
				<td><%=userList.get(i).getNo() %></td>
				<td><%=userList.get(i).getName() %></td>
				<td><%=userList.get(i).getEmail() %></td>
				<td><%=userList.get(i).getPassword() %></td>
				<td><%=userList.get(i).getGender() %></td>
			</tr>
			<%
			}
			%>
			
		</tbody>
	</table>
	<br><br><br><br><br><br><br><br>
	<h4>jstl for문</h4>
	<table border="1">
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>이메일</th>
				<th>패스워드</th>
				<th>성별</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${requestScope.userList}" var="userVo">
				<tr>
					<td>${userVo.no}</td>
					<td>${userVo.name}</td>
					<td>${userVo.email}</td>
					<td>${userVo.password}</td>
					<td>${userVo.gender}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<br><br><br><br><br><br><br>
	<h4>jstl for문(begin end)</h4>
	<p>
		items : 가져올 데이터<br>
		var : 변수명 지정<br>
		begin : 시작<br>
		end : 끝<br>
		step : 몇개씩 <br>
		varStatus="status" : 리스트의 몇번째 값을 출력하고 있는지<br>
		varStatus="count" : 지정한값으로 돌리는 리스트의 몇번째 인지<br>
	</p>
	<table border="1">
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>이메일</th>
				<th>패스워드</th>
				<th>성별</th>
				<th>status.index</th>
				<th>status.count</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${requestScope.userList}" var="userVo" begin="5" end="10" step="2" varStatus="status">
				<tr>
					<td>${userVo.no}</td>
					<td>${userVo.name}</td>
					<td>${userVo.email}</td>
					<td>${userVo.password}</td>
					<td>${userVo.gender}</td>
					<td>${status.index}</td>
					<td>${status.count}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>			
	<br><br><br><br><br><br><br><br>	
				
			

















	
	
	
	
	
</body>
</html>