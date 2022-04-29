<%@page import="dto.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <% 
    // request : 요청 [ 서버 -----> 클라이언트 ]
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    String name = request.getParameter("name");
    
    // dto -> 객체화(변수 3개를 변수 1개로 통합)
   	Member member = new Member(0, id, pw, name);
    
    // 객체화(dto) -> db에 옮김(dao)
    
    %>
    