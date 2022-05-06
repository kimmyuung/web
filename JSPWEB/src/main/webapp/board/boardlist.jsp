<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="dao.BoardDao"%>
<%@page import="dto.Board"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	
	<%@include file ="../header.jsp" %>

	<div class="container">
		<h3> 자유게시판 </h3>
		
		<%
			String mid = (String)session.getAttribute("login");
			if( mid != null ){
		%>
			<a href="boardwrite.jsp"> 글쓰기 </a>
		<%} %>
		
		<table class="table"> <!-- 테이블 -->
			<tr>
				<th> 번호 </th> <th> 제목 </th> <th> 작성자 </th> 
				<th> 조회수  </th> <th> 작성일 </th> 
			</tr>
			<!-- for 문 -->
			<%
				// 1. 모든 게시물  호출 
				ArrayList<Board> boardlist = 
					BoardDao.getBoardDao().getboardlist();
					System.out.println( boardlist);
				for( Board board : boardlist ){
					System.out.println( board.toString() );
			%>
				<tr>
					<td> <%=board.getBno() %> </td>
					<td> <%=board.getBtitle() %> </td>
					<td> <%=board.getMid() %> </td>
					<td> <%=board.getBview() %> </td>
					<tr>
					<td> <%=board.getBno() %> </td>
					<td> <a href="#" style="text-decoration: none;"><%=board.getBtitle() %></a></td>
					<%if(board.getMid() == null){%>
					<td> 비회원 </td>
					<% }else{ %>
					<td> <%=board.getMid() %> </td>
					<%} %>
					<td> <%=board.getBview() %> </td>
					<%
					String formatDate = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
					String olddate = board.getBdate();
					String lsfo = olddate.split(" ")[0];
					String timd =  olddate.split(" ")[1];
					if(lsfo.equals(formatDate)){%>
					<td> <%= timd%> </td>
					<% }else{ %>
					<td> <%=board.getBdate() %> </td>
					<%} %>			
				</tr>
			<%
				}
			%>
			
			
		</table>
	</div>
	<%@include file ="../footer.jsp" %>

</body>
</html>