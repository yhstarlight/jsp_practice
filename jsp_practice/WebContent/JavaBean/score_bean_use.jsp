<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <jsp:useBean id="score" class="kr.co.jsp.score.scoreBean" scope="request"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--
		score_bean_make에서 전송된 ScoreBean 객체를 활용하여
		5가지 데이터를 브라우저에 출력하세요.
	 --%>
	 
	 # 국어: <jsp:getProperty name="score" property="kor"/> <br>
	 # 영어: <jsp:getProperty name="score" property="eng"/> <br>
	 # 수학: <jsp:getProperty name="score" property="math"/> <br>
	 <hr>
	 # 총점: <jsp:getProperty name="score" property="total"/> <br>
	 # 평균: <jsp:getProperty name="score" property="average"/>
</body>
</html>