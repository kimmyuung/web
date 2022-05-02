<%@page import="Dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%
		int bno = Integer.parseInt(request.getParameter("bno"));
		MemberDao dao = new MemberDao();
		boolean result = dao.boarddelete(bno);
		if(result) {
			response.sendRedirect("main.jsp");
			System.out.print("게시물 삭제가 성공하였습니다.");
		}
		
	%>