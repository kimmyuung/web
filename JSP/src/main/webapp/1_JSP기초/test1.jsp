<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <% 
	String a = request.getParameter("id");
    
    System.out.print("html 에서 요청 : " + a);
    %>