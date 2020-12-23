<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    
   		Date date = new Date();
    	//Ctrl+space누르면 쉽게 import가능
    	
    	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일 E요일 hh시 mm분 ss초");
    	//https://docs.oracle.com/javase/8/docs/api/ 참조
    	String dayInfo = sdf.format(date);
    	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%=date %> <br>
	오늘은 <%= dayInfo %>입니다.
	
</body>
</html>