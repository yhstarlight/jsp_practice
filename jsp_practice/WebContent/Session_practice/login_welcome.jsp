<%@page import="user.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    
	/*
	1. 로그인하지 않은 사용자가 주소창에 이 페이지의 URL을 적고
	들어왔을 경우 로그인 창으로 돌려보내는 코드를 작성하세요. (세션 확인)
	
	2. 로그인한 회원의 아이디와 별명을 통해 "nick(id)님 환영합니다!"를 출력하세요 (세션에 있음)

	3. 로그인 화면으로, 로그아웃하기 (logout.jsp), 회원 탈퇴하기 (delete.jsp)
	로 이동할 수 있는 링크 3개를 제공하세요.
	회원 탈퇴는 deleteUser(???)라는 이름으로 메서드를 선언하세요.
	리스트에서 해당 아이디에 부합하는 User 객체를 확인 후 리스트 문법으로 해당 객체의
	주소값을 지워주시면 됩니다.
	그리고 세션 데이터도 삭제해주세요.
	
	4. 로그인 폼 제공하는 페이지에도, 로그인 중인 사용자와 아직 로그인을 하지 않은
	사용자가 서로 다른 페이지를 볼 수 있도록 로직을 작성해주세요.
	(로그인 -> 이미 로그인 중이다 라는 페이지, 로그인x->폼)
	*/
	
	User user = (User)session.getAttribute("login");
    
	if(user==null){ %>
		 <script>
    	 	alert("로그인을 해주세요.");
    	 	location.href="login_form.jsp"; //뒤로가기
    	 </script>
	<%
	} else {
		out.print("<h3>"+user.getNickname()+"("+user.getAccount()+")님 환영합니다!</h3>");
	}
    %>
    <a href="login_form.jsp">로그인 화면으로</a><br>
    <a href="logout.jsp">로그아웃 하기</a><br>
    <a href="delete.jsp">회원  탈퇴하기</a>
  