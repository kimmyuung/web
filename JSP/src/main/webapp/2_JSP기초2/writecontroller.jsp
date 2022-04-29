<%@page import="Dao.MemberDao"%>
<%@page import="dto.Board"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%
    
    request.setCharacterEncoding("UTF-8"); // 요청시 데이터 인코딩 타입 설정
    String title = request.getParameter("title"); // 제목
    String context = request.getParameter("content"); // 내용
    String writer = (String)session.getAttribute("loginid"); // 작성자
   	// 작성자는 로그인성공시 세션에서 가져오기
   	// 세션 호출시 기본자료형이 object -> 형 변환 필수!
   	Date now = new Date(); // now clock
   	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); 
   	// now date form change write by simpledateformat
    String date = sdf.format(now);
    
   	Board board = new Board(0, title, context, writer, date); 
    // 변수를 객체화
    MemberDao memberDao = new MemberDao();
    
    boolean result = memberDao.write(board);
    if(result) {
    	response.sendRedirect("main.jsp");
    }
     
    %>