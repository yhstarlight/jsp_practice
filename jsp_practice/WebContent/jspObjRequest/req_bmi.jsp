<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%--
    bmi 지수 계산 공식 = [체중(kg) / 신장(m) * 신장(m)]
    - bmi 지수가 23을 초과한다면 "당신은 과체중입니다."를 출력
    - 18.5미만이라면 "당신은 저체중입니다."를 출력
    - 나머지는 "당신은 정상체중입니다."를 브라우저에 출력하세요.
    
    * 문자열 내부에 들어있는 데이터를 기본 데이터 타입으로 변환하는 방법.
     	포장(wrapper)클래스에 들어있는 parse + 기본타입이름() 메서드를 활용
     	
     	request.getParameter() 리턴 타입이 String이기 때문에
     	bmi 지수를 계산하려면 실수나 정수로 변환을 해주셔야 합니다.
     	Integer.parseInt(변환하고 싶은 문자열), Double.parseDouble(문자열)
     --%>
     
     <% 
     double kg = Double.parseDouble(request.getParameter("kg"));
     double cm = Double.parseDouble(request.getParameter("cm"));
     
     double bmi;
     double m = cm*0.01;
     
     bmi = kg / (m*m);
     bmi = Math.round(bmi*100)/100.0;
     //소수 둘째 자리까지. round 함수는 반올림해서 정수로 만들기 때문에
     //둘째자리까지 얻고싶으면 미리 100을 곱해서 값을 얻은후 그것을 다시 100으로 나눈다.
     %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>체질량 지수(BMI) 계산</h2>
	<hr>
	<p>
	- 신장: <%=cm %>cm<br>
	- 체중: <%=kg %>kg
	</p>
	<p>
	BMI지수 : <strong><%=bmi %></strong><br>
	<% if(bmi>23){
		out.print("당신은 과체중입니다.");
		} else if(bmi<18.5){
		out.print("당신은 저체중입니다.");
		} else {
		out.print("당신은 정상체중입니다.");
		}%>
	</p>

</body>
</html>