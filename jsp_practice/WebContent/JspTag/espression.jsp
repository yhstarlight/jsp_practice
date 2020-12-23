<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String name = "홍길동";
	String address = "서울특별시";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% out.print("이름: " + name + "<br>"); %>
	
	<hr>
	
	이름: <%=name %><br>
	주소: <%=address %><br>
	난수: <%=Math.random() %> <!-- 세미콜론은 작성하지 않는다. -->
	
	<h2>구구단 2단</h2>
	<% for(int hang=1; hang<=9; hang++) { %>
		2 x <%=hang %> = <%=2*hang %><br>
	<% }
	%>
	
</body>
</html>