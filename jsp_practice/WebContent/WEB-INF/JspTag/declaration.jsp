<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        
<%! 
	public int i;
	public String name = "홍길동";
	
	public int add(int n1,int n2){
		return n1+n2;
	}
%>
<!-- 멤버 변수처럼 접근자 설정 가능 -->

<%
	int j = 0;
	i++;
	j++;
	//int j; j++; 불가능
	
	/*public void hello(){
		System.out.println("안녕");
	}*/
	
	double d = Math.random();
%> 
<!-- 지역변수만 가능 
i는 멤버변수라 초기화 하지 않아도 가능하지만 j는 지역변수라 초기화 하지 않으면 안됨
메소드 내부에서는 메소드를 작성할 수 없기 때문에 메소드 선언이 안되는 것임.
다만 호출할 수는 있음-->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	i의 값: <%=i %><br>
	j의 값: <%=j %><br>
	d의 값: <%=d %><br>
	메서드의 호출 결과:<%=add(4,7) %>
	
	<!-- j는 매번 초기화 됨 i는 객체의 멤버변수라 객체가 소멸하지 않는 한 초기화 되지 않음 -->
</body>
</html>