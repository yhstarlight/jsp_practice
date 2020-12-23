<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	request.setCharacterEncoding("UTF-8");
    
    	int age = Integer.parseInt(request.getParameter("age"));
    	
    	if(age >= 20){
    		//response 객체가 제공하는 sendRedirect()메서드의 매개값으로
    		//이동시킬 URL주소를 적으면 해당 패키지로 강제 강종하데 됨
    		response.sendRedirect("http://localhost:8181/JspBasic/jspObjResponse/res_basic_ok.jsp");
    	}
    	else {
			response.sendRedirect("res_basic_no.jsp");    	
    	}
    	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>