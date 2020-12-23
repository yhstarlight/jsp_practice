<%@page import="user.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	User user = (User)session.getAttribute("login");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<% if(user != null){ %>
		<h3><%=user.getName() %>님은 현재 로그인 중입니다.</h3>
		<a href="login_welcome.jsp">웰컴 페이지로</a>
	<% } else {
	%>
	<form action="login_controller.jsp" method="post">
		<p>
			<input type="text" name="account" placeholder="아이디"> <br>
			<input type="password" name="password" placeholder="비밀번호"> <br>
			<button type="submit">로그인</button>
			<button type="button" onclick="location.href='register_form.jsp'">회원가입</button>
			<!-- location.href는 자바스크립트 문법입니다. 페이지를 이동시킬 때 사용합니다. -->
		</p>
	</form>
	<% } %>
</body>
</html>