<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@
    	include file="../Application/app_basic.jsp"
     %>
    
    <%
    	/*
    	1.로그인하지 않은 사용자가 주소창에 이 페이지의 URL을 직접 적고
    	들어왔을 경우 로그인창으로 돌려보내는 코드를 작성하세요.
    	(조건문을 사용해서 로그인 성공 시 생성되는 세션이 있는지 확인. user_id)
    	
    	2. 로그인한 회원 아이디가 별명을 세션에서 얻어온 후
    	"nick(id)님 환영합니다!"를 출력하세요.
    	
    	3. a태그로 로그인창으로 돌아가는 링크와 request폴더에 앨범 선택 페이지로 갈 수 있는
    	링크 2개를 제공하세요.
    	
    	4. 세션(user_id)이 존재하는 경우 로그인 폼 페이지에서 
    	"nick 님이 현재 로그인 중입니다."를 띄워주시고 웰컴페이지 링크 제공, 로그인하지 않은 사용자일 경우
    	폼 입력창을 띄워주세요.
    	*/
    	String id = (String)session.getAttribute("user_id");
    	String nick = (String)session.getAttribute("user_nick");
    
    	if(id==null){
    		response.sendRedirect("session_login.jsp");
    	}
    	
    	out.print(nick+"("+id+")님 환영합니다!<br>");
    	
    %>
    	
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="session_login.jsp">로그인 창으로 돌아가기</a> <br>
    <a href="../jspObjRequest/req_album.jsp">앨범 선택 창으로 가기</a> <br>
    <a href="logout.jsp">로그아웃하기</a>
    <hr>
    <h3>방문자 수 : <%=count %></h3>
</body>
</html>