<%@page import="java.util.Random"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%!
    	List<String> party = new ArrayList<>();
    	/*List<Integer> jobNumber = new ArrayList<>();*/
    %>
    
    <% 
    	/* 
    		-직업 갯수 만큼의 정수 난수를 발생시켜 주세요 0~4
    		-발생된 난수의 번호대로 파티라는 리스트에 작업을 추가해주세요. 누적 > 선언자
    		-party라는 리스트에 현재 선택된 작업이 몇 개 존재하는지 확인하는 작업을 해주셔야합니다.
    		-반복문으로 리스트를 순회해서, 현재 선택된 직업의 문자열과 party라는 리스트 내부에
    		들어있는 문자열 중에 같은 문자열이 발견될 때마다 숫자를 세서 
    		나와 같은 직업을 가진 파티원이 몇명인지 세주셔야합니다.
    	*/
    	
    	String[] jobs = {"전사", "도적", "사냥꾼", "마법사", "사제"};
    	
    	String nowJob;
    	int num;
    	int imgNum;
    	int over = 0;
    	
    	Random r = new Random();
    	imgNum = r.nextInt(4)+0;
    	/*int r = (int)(Math.random()*5) or *jobs.length; [0,1,2,3,4]난수 발생
    	Math.random은 기본 0.00이상~1.00미만*/
    	nowJob = jobs[imgNum];
    	
    	party.add(nowJob);
    	/*jobNumber.add(imgNum)*/
    	
    	for(int i=0; i<party.size();i++){
    		if(nowJob==party.get(i)){
    			over++;
    		}
    	}
    	
    	/*
    	for(String player:party){
    		if(nowJob.equals(player)){
    			over++;
    	}
    	}
    	*/
    	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>당신의 역할</h2>
	<p>
	<img src="../img/<%=imgNum%>.png" height="40px" width="40px"/>
	당신에게 부여된 역할은 <strong>[<%=nowJob %>]</strong> 입니다.<br>
	현재 파티에 당신과 같은 역할을 가진 플레이어는 <%=over %>명 입니다. <br>
	</p>
	
	현재 파티 구성 <br>
	<%for(int n=0; n<party.size();n++){
		if(party.get(n)=="전사"){%>
			<img src="../img/0.png" height="20px" width="20px"/>
		<%} else if(party.get(n)=="도적"){%>
			<img src="../img/1.png" height="20px" width="20px"/>
		<%}  else if(party.get(n)=="사냥꾼"){%>
		<img src="../img/2.png" height="20px" width="20px"/>
		<%}  else if(party.get(n)=="마법사"){%>
		<img src="../img/3.png" height="20px" width="20px"/>
		<%}  else if(party.get(n)=="사제"){%>
		<img src="../img/4.png" height="20px" width="20px"/>
		<%} 
	}%>
	
	<%--
	<%for(int idx : jobNumber) { %>
		<img src="../img/<%=idx %>.png" width="20px" height="20px"/>
		<% } %>
	 --%>
	
	(<%=party.size() %>명 참가 중)
	
	<%if(party.size()==10){
    		party.clear();
    		/*jobNumer.clear();*/
    		over = 0;
    }%>
	
	
	<%--
		당신에게 부여된 역할(가로 40px 세로 40px)
		
		현재 파티 구성 (사진으로 파티원을 나타냄)
		리스트를 반복문으로 순회하여 해당 직업의 번호를 따로 부여하신 후
		그 직업의 인덱스 번호에 맞추어서 사진을 img태그로 넣어주시면 됩니다.
		가로 20px 세로 20px
		
		파티원이 10명이 되었을 때 리스트를 비워 주시면 됩니다.
	 --%>

</body>
</html>