<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 파일</title>
</head>
<body>

	<% for(int i=0; i<5; i++) { %>
	<h2>이클립스 내부에서 JSP문서 작성하기!</h2>
	<p> <!-- p태그는 문단을 구성해주는 태그 -->
		안녕하세요. 오늘은 2020년 1월 16일 JSP 시간입니다. <br>
		지금은 스크립틀릿 연습중입니다.
	</p>
	<% } %>
	
	<h2>구구단 2단</h2>
	<% for(int hang=1; hang<=9; hang++) { 
		//out.print메서드는 브라우저에 바로 출력을 실행하는 메서드입니다.
		out.print("2 x " + hang + " = " + (2*hang) + "<br>");
	}
	%>
	
	<hr>
	
	<!-- 반복문, 조건문을 이용하여 구구단을 짝수단 (2,4,6,8)만 출력해보세요. -->
	
	<% for(int i=1; i<=9; i++){
		if(i%2==0){
			out.print("<h2>구구단"+i+"단 </h2><hr>");
			for(int j=1; j<=9; j++){
				out.print(i+"x"+j+"="+i*j+"<br>");
			}
		}
	}%>
	
</body>
</html>