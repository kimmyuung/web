<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
int bno = Integer.parseInt(request.getParameter("bno"));
session.setAttribute("bno", bno);
System.out.print(bno);
%>
	<form action="updatecontroller.jsp" method="get">
		<input type="text" name="title" placeholder="제목"><br>
		<textarea rows="5" cols="10" name="content" placeholder="내용"></textarea><br>
		<input type="submit" value="수정하기">
	</form>
</body>
</html>