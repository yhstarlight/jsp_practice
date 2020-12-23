<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% String album = request.getParameter("title");
    
   		 if(album.equals("taeyeon")){
   			 response.sendRedirect("req_album_tae.jsp");
   		 } else if(album.equals("chungha")){
   			 response.sendRedirect("req_album_chung.jsp");
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