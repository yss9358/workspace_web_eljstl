<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>el-jstl</h1>
	<h2>el</h2>
	<h3>연산자</h3>
	
	<h4>산술연산자</h4>
	<!-- \를 쓰면 그대로 표현됨 -->
	\${4+5 } --> ${4+5 }<br>
	\${4-5 } --> ${4-5 }<br>
	\${4*5 } --> ${4*5 }<br>
	<br>
	\${4/5 } --> ${4/5 }<br>
	<br>
	\${4%5 } --> ${4%5 }<br>
	\${4 mod 5} --> ${4 mod 5 }<br>
	<br>
	
	<h4>관계연산자</h4>
	\${4>5} --> ${4>5}<br>
	\${4 gt 5} --> ${4 gt 5}<br>
	<br>
	\${4<5} --> ${4<5}<br>
	\${4 lt 5} --> ${4 lt 5}<br>
	<br>
	\${4>=5} --> ${4>=5}<br>
	\${4 ge 5} --> ${4 ge 5}<br>
	<br>
	\${4<=5} --> ${4<=5}<br>
	\${4 le 5} --> ${4 le 5}<br>
	<br>
	\${4==5} --> ${4==5}<br>
	\${4 eq 5} --> ${4 eq 5}<br>
	<br>
	\${4!=5} --> ${4!=5}<br>
	
	<h4>삼향연산자</h4>
	<!-- ${"조건식"?"true값" : "false값"}  -->
	\${ 4>=5 ? 4 : 5} --> ${ 4>=5 ? 4 : 5} <br>
	\${ 4>=5 ? 4 : 5} --> ${ 4>=5 ? 4 : 5} <br>
	
	<h4>논리연산자</h4>
	<!--  true && true = true (&& and) -->
	\${(5>2) && (2<10)} --> ${(5>2) && (2<10)}<br>
	
	<!--  true && false = false (&& and) -->
	\${(5>2) && (2>10)} --> ${(5>2) && (2>10)}<br>
	
	<!-- true || false = true (|| or )  -->
	\${(5>2) || (2>10)} --> ${(5>2) || (2>10)}<br>
	
	<!--  !true -->
	\${!(5>2)} --> ${!(5>2)} <br>
	
	<h4>null검사</h4>
	\${str} -->${str}<br>
	\${str == null} --> ${str == null}<br>
	\${empty str} --> ${empty str}<br>
	\${empty reqVal} --> ${empty reqVal}<br>
	\${reqVal} --> ${reqVal}<br>
	
	
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
</body>
</html>