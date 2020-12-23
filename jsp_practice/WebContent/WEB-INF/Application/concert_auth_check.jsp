<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	/*
    	- 사용자가 입력한 인증코드와 랜덤으로 생성한 (UUID객체로 생성한)인증 코드를 서로 비교하여
    	코드가 일치한다면 세션을 하나 생성 후"concert_reserve.jsp"로 이동시켜주세요.
    	세션 이름은 "auth_pass", 값은 논리상수 true를 넣어주세요.
    	
    	- 코드가 일치하지 않는다면 "인증코드가 일치하지 않습니다. 다시 입력해주세요."라는
    	경고창 출력 후 뒤로가기를 실행해주세요.
    	*/
    	
    	String authCode = (String)session.getAttribute("auth_code");
    	String inputCode = request.getParameter("code");
    
    	if(authCode.equals(inputCode)){
    		session.setAttribute("auth_pass", true);
    		response.sendRedirect("concert_reserve.jsp");
    	} else { %>
    		<script>
    		alert("인증코드가 일치하지 않습니다. 다시 입력해주세요.");
    		location.href="concert_auth.jsp";
    		</script>
    	<% } 
    %>