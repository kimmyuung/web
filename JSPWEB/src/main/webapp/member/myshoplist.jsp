<%@page import="dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%String mid = (String)request.getSession().getAttribute("login");
int mno = MemberDao.getmemberDao().getmno(mid);
%>
<div>
</div>


</body>
</html>