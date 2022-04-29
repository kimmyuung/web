<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="signupcontroller.jsp" method="get">
	<!-- action = "이동 경로 (파일) " method(http) : get or post -->
	<!-- HTTP : 전송방식 1. GET : URL 전송방식 표시(O) [보안 취약]2. POST : URL 전송방식 표시(X) [보안] -->
		<input type="text" name="id"> 
		<input type="text" name="pw">
		<input type="text" name="name"> 
		<input type="submit" value="전송">
	</form>
</body>
</html>