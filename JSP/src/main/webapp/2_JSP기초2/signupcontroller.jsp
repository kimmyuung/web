

<%@page import="Dao.MemberDao"%>
<%@page import="dto.Member"%>
<%@page import = "java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <% 
    // request : 요청 [ 서버 -----> 클라이언트 ]
    		// 요청시 사용되는 인코딩 필요
    		// 서블릿 -> 외국(영어는 가능) 한국(한글 인코딩 불가능)
    request.setCharacterEncoding("UTF-8");
    		
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    String name = request.getParameter("name");
   
    // dto -> 객체화(변수 3개를 변수 1개로 통합)
   	Member member = new Member(0, id, pw, name);

    // 객체화(dto) -> db에 옮김(dao)
    MemberDao memberDao = new MemberDao();
  
    
    boolean result = memberDao.signup(member);
    if(result) {
    	response.sendRedirect("main.jsp"); // response.sendRedirect("이동할 페이지")
    	System.out.print("성공");
    } else {
    	response.sendRedirect("main.jsp");
    }
    %>
    
    