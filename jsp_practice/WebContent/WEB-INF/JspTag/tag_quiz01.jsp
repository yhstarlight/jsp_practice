<%@page import="java.util.Collections"%>
<%@page import="java.util.Random"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	/*
    		ArrayList를 생성해서 1~45까지의 난수 6개를 리스트에 저장하세요.
    		중복이 발생하면 안됩니다. 중복 방지 로직을 세워서 리스트에 삽입 후
    		body태그에 리스트 내부의 값을 출력해주세요. (오름차 정렬)
    	*/
    %>
    
    <%
	List<Integer> list = new ArrayList<>(); 	
   
	Random r = new Random();
	
	while(list.size()<6){
		int lotNum = r.nextInt(45)+1;
		if(!list.contains(lotNum)){
			list.add(lotNum);
		}
	}
	Collections.sort(list);
	%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>로또 번호 생성 결과!!</h1>
	
	<p>
		이번주 로또 번호는 이 번호입니다! <br>
		<%=list %>
		
		<%
			for(int num:list){
				out.print(num+"&nbsp;");
			}
		%>
	</p>
</body>
</html>