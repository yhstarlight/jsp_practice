<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <jsp:useBean id="score" class="kr.co.jsp.score.scoreBean" scope="request"/>
    
    <jsp:setProperty name="score" property="*"/>
    
    <%-- String인데 자동으로 Int로 파싱됨? --%>

    <%
    int kor = Integer.parseInt(request.getParameter("kor"));
    int eng = Integer.parseInt(request.getParameter("eng"));
    int math = Integer.parseInt(request.getParameter("math"));
    
    /*
    int kor = score.getKor();
    int eng = score.getEng();
    int math = score.getMath();
    */
    
    int total = kor+eng+math;
    double average = total/3;
    average = Math.round(average*100)/100.0;
    %>
    
    <jsp:setProperty name="score" property="total" value="<%=total %>"/>
    <jsp:setProperty name="score" property="average" value="<%=average %>"/>
    
    <jsp:forward page="score_bean_use.jsp"/>
    
	<%--
		액션  태그를 사용하여 ScoreBean 객체를 request범위로 생성하시고
		setProperty를 사용하여 객체 내부 데이터에 파라미터 데이터를 세팅한 뒤
		파라미터 데이터 3개와 총점, 평균을 구하여 5개를 모두 객체에 담아서
		Score_bean_user.jsp로 전송(forward) 하세요.
		
		- 총점과 평균은 변수를  선언하셔서 각각 총점과 평균을 구한뒤 setProperty를 사용해서 객체에 추가해주시면 됩니다.
	 --%>
