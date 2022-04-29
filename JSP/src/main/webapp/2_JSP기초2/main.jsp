<%@page import="dto.Board"%>
<%@page import="Dao.MemberDao"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>회원제 방문록</h3>
	<h3> 회원제 게시판 </h3>
	<a href="signup.jsp"><button>회원가입</button></a>
	
	
	<%
		String loginid = (String)session.getAttribute("loginid");
		if( loginid != null  ){ // 세션이 있으면 로그인 성공
	%>
		<div> <%=loginid %>님 안녕하세요 ~ </div>
		<a href="write.jsp"><button>글쓰기</button></a>
		<a href="logout.jsp"><button>로그아웃</button> </a>
		<a href="delete.jsp"><button>회원탈퇴</button> </a>
	<%
		}else{ // 세션이 없으면 로그인 실패 
	%>
		<form  action="logincontroller.jsp" method="post">
			<input type="text" name="id">
			<input type="password" name="password">
			<input type="submit" value="로그인"> 
		</form>
	<%	
		}
	%>
	<table>
		<tr>
			<th> 번호 </th>  <th> 작성일 </th> 
			<th>작성자</th> 	<th> 제목 </th> <th> 내용 </th>
		</tr>
		<!-- 반복문 -->
		<%
		MemberDao memberDao = new MemberDao();
		ArrayList<Board> blist = memberDao.list();
		for(int i =0; i < blist.size(); i++) {
			%>
		<tr>
		<td><%=blist.get(i).getBnum() %></td>
		<td><%=blist.get(i).getTitle() %></td>
		<td><%=blist.get(i).getContent() %></td>
		<td><%=blist.get(i).getWriter() %></td>
		<td><%=blist.get(i).getDate() %></td>
		</tr>
		<%} %>
	</table>
</body>
</html>