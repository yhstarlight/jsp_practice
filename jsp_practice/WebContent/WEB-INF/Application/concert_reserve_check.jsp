<%@page import="java.util.Arrays"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    
    
    
    //예매가 확정된 좌석 정보를 저장할 리스트
    List<String> list = new ArrayList<>();
    if(application.getAttribute("complete_list") != null) {
    	list = (List<String>) application.getAttribute("complete_list");
    }
    //사용자가 예매를 희망하는 좌석 정보가 들어있는 배열.
    String[] seat = request.getParameterValues("seat");
      
    /*
    - 예약 확정 전에 임시로 좌석 정보를 저장할 수 있는 리스트 (temp)를 하나 선언하세요.
    - 사용자가 예매를 희망하는 좌석과 이미 예약이 완료된 리스트를 비교하여 (반복문을 이용하여 비교)
	중복이 한번이라도 발생한다면 반복문 그대로 종료
	중복이 발생하지 않았다면 임시리스트에 좌석 정보를 추가한 후 숫자를 세세요.
	
	- 숫자와 사용자가 예매하려는 좌석 수가 일치한다면 중복이 발생하지 않았다는 소리이기 때문에
	임시 리스트에 넣어둔 좌석 정보를 확정리스트로 옮겨주시면 됩니다
	addAll() 메서드는 리스트 내부에 리스트 객체들을 전부 추가하는 메서드입니다.
    */
    
    List<String> temp = new ArrayList<>();
    int count = 0;
    boolean flag = false;
    
    for(String aSeat:seat){
    	if(list.contains(aSeat)){
    		break;
    	} else {
    		temp.add(aSeat);
    		count++;
    	}
    }
    
    if (count == seat.length){
    	list.addAll(temp);
    	flag = true;
    }
    
    application.setAttribute("complete_list", list);
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div align="center">
		<h3>좌석 예매 결과</h3>
		<p>
		선택한 좌석<br>
		<% 
			for (String s: seat) {
				out.print("<b>["+s+"]</b>");
			}
		%>
		(이)가 예매 신청되었습니다.
		</p>
		<p>
		예매 신청 결과 : 
		<% if(!flag) { %>
			실패<br>
			예매하고자 하는 좌석이 이미 선점되었습니다.
		<% } else { %>
			성공<br>
			성공적으로 예매되었습니다.
		<% } %>
		<%-- 삼항 연산자로도 가능 --%>
		<br> <a href="concert_reserve.jsp">추가 예매하기</a>
		</p>
	</div>

</body>
</html>