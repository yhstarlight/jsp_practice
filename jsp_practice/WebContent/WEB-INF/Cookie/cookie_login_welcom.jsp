<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	Cookie[] cookies = request.getCookies();
    	String userid = null;
    
    	for(Cookie c : cookies){
    		if(c.getName().equals("id_cookie")){
    			userid = c.getValue();
    			break;
    		}
    	}
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		if(userid != null) {
	%>
	<p>
		<%=userid %>님 환영합니다. <br>
		<a href="cookie_login.jsp">로그인 화면으로 돌아가기</a>
	</p>
	<% } else { %>
	<p>
		시간이 지나 자동 로그아웃 처리되었습니다. <br>
		<a href="cookie_login.jsp">로그인 화면으로 돌아가기</a>
	</p>
	<% } %>

</body>
</html>