<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%--
	국어(kor) 영어(eng) 수학 (math) 점수를 입력받아
	전송하는 폼을 작성하세요.
	(score_bean_make.jsp)
	 --%>
	 
	 <form action="score_bean_make.jsp" method="post">
		<div align="center">
			<table border="1">
				<tr>
					<td>국어</td>
					<td><input type="text" name="kor" size="5"></td>
				</tr>
				<tr>
					<td>영어</td>
					<td><input type="text" name="eng" size="5"></td>
				</tr>
				<tr>
					<td>수학</td>
					<td><input type="text" name="math" size="5"></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit" value="확인"></td>
				</tr>
			</table>
		</div>
	</form>
</body>
</html>