<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% String album = request.getParameter("title");
    	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<div align="center">
		<% if(album.equals("taeyeon")){ %>
			<h2>선택하신 앨범 정보</h2>
			<p>
				당신이 선택하신 앨범은 태연의 '내게 들려주고 싶은 말'입니다.
			</p>
			<hr>
			<h3>타이틀 곡 뮤직 비디오</h3>
			<iframe width="755" height="425" src="https://www.youtube.com/embed/bho0m505qVA?autoplay=1" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
		<% } else if(album.equals("chungha")) { %>
			<h2>선택하신 앨범 정보</h2>
			<p>
				당신이 선택하신 앨범은 청하의 'Snapping'입니다.
			</p>
			<hr>
			<h3>타이틀 곡 뮤직 비디오</h3>
			<iframe width="755" height="425" src="https://www.youtube.com/embed/deV_DmHKwjc?autoplay=1" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
		<% } %>
	</div>
</body>
</html>