<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    String id = (String)session.getAttribute("user_id");
    String nick = (String)session.getAttribute("user_nick");
    //혹은 미리 받지 않고 바디에서 아이디가 존재할 경우 닉네임을 받아와도 된다.
    //if(id 존재){
   	// 닉네임 받아오기 }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% if(id==null){%>
		<form action="session_login_con.jsp" method="post">
		<input type="text" name="id" size="10" placeholder="ID"> <br>
		<input type="password" name="pw" size="10" placeholder="PW"> <br>
		<input type="text" name="nick" size="10" placeholder="별명"> <br>
		<input type="submit" value="로그인">
	</form>
	<%} else { 
		out.print(nick+"님이 로그인 중입니다.<br>"); %>
		<a href="session_welcom.jsp">웰컴 페이지로 이동하기</a>
	<% } %>
	 

</body>
</html>