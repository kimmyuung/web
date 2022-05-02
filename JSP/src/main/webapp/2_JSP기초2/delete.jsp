<%@page import="Dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%
		String id = (String)session.getAttribute("loginid");
		MemberDao memberDao = new MemberDao();
		boolean result = memberDao.delete(id);
		if(result) {
			response.sendRedirect("main.jsp");
			System.out.print("회원 탈퇴가 성공하였습니다.");
		}
		
	%>