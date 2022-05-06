<%@page import="dto.Board"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
</head>
<body>
	<%@include file="../header.jsp"%>
	<div class="container">
		<h3>자유게시판</h3>
		<a href="boardwrite.jsp">글쓰기</a>
		<table class="table">
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>조회수</th>
				<th>작성일</th>
				</tr>
				<!-- for -->
				<% 
				ArrayList<Board> blist = BoardDao.boardDao.load();
				if( blist != null){
					for(int i = 0; i < blist.size(); i++) {  
					 %>
				<tr>
				<td><%=blist.get(i).getBno() %> </td>
				<td><%=blist.get(i).getBtitle() %> </td>
				<td><%=blist.get(i).getBwriter() %> </td>
				<td><%=blist.get(i).getBwriter() %> </td>
				<td><%=blist.get(i).getBdate() %> </td>
				</tr>
				<% } 
					}%>							
		</table>
	</div>
	<%@include file="../footer.jsp"%>

</body>
</html>