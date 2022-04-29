<%@page import="Dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

   
   <%
   
   request.setCharacterEncoding("UTF-8"); // 한글 텍스트 요청
	
    String id = request.getParameter("id");
  	
	String password = request.getParameter("password");
	
	MemberDao memberDao = new MemberDao();
	boolean result =  memberDao.login(id, password);
	if(result) {
		response.sendRedirect("main.jsp"); 
		session.setAttribute("loginid", id); // 세션이름=변수명 , 세션값=값 
		//서블릿 내장객체 : session
			// 서버 내 메모리 생성 // 모든 페이지[파일]에서 접근 할 수 있는 메모리
			// 브라우저 마다 메모리 별도 생성
	}	   
	else {
		response.sendRedirect("main.jsp");
	}
   %> 