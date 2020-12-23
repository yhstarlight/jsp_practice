<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% 
    	//post방식 인코딩(한글 처리);
    	request.setCharacterEncoding("UTF-8");
    	
    	String id = request.getParameter("id");
    	String pw = request.getParameter("pw");
    	String check = request.getParameter("id_remember");
    	
    	if(id.equals("abc1234") && pw.equals("aaa1111")) {
    		Cookie idCookie = new Cookie("id_cookie", id);
    		idCookie.setMaxAge(5);
    		response.addCookie(idCookie);
    		
    		if(check != null){
    			Cookie idMemory = new Cookie("remeber_id",id);
    			idMemory.setMaxAge(30);
    			response.addCookie(idMemory);
    		}
    		
    		response.sendRedirect("cookie_login_welcom.jsp");
    	} else {
    		response.sendRedirect("cookie_login.jsp");
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