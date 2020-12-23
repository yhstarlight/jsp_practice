<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div align="center">
		<%-- <form action="req_album_result.jsp"> --%>
			<table border="1" width="700">
				<thead>
					<tr align="center">
						<%-- <th></th> --%>
						<th>앨범 커버</th>
						<th>가수</th>
						<th>앨범 제목</th>
						<th>발매일</th>
					</tr>
				</thead>
				<tr align="center">
					<%--<td><input type="radio" name="title" value="taeyeon"/></td>--%>
					<td><img src="tae.jpg" height="100px" width="80px"/></td>
					<td>태연</td>
					<td><a href="req_album_con.jsp?title=taeyeon">내게 들려주고 싶은 말</a></td>
					<td>2019.12.02</td>
				</tr>
				<tr align="center">
					<%--<td><input type="radio" name="title" value="chungha"/></td>--%>
					<td><img src="chung.jpg" height="100px" width="80px"/></td>
					<td>청하</td>
					<td><a href="req_album_con.jsp?title=chungha">Snapping</a></td>
					<td>2019.10.16</td>
				<%--</tr>
				<tr align="center">
					<td colspan="5"><input type="submit" value="확인"></td>
				</tr>--%>
			</table>
		<%--</form>--%>
	</div>
</body>
</html>