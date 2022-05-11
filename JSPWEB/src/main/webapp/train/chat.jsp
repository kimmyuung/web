<%@page import="dto.Chat"%>
<%@page import="dao.ChatDao"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 반응형 웹 -->
<title>Insert title here</title>
</head>
<body>
	<%@include file="../header.jsp"%>
	<div class="container">
		<h3>비회원제 실시간 채팅 페이지 [ 소켓 X, 게시판형식 O ]</h3>
		<div class="col-md-12"
			style="overflow-y: auto; width: 500px; height: 500px; border: 1px solid black; margin: 0 auto;">
			<div class="row">
				<div class="col-md-3">채팅 닉네임</div>
				<div class="col-md-6">채팅 내용</div>
				<div class="col-md-3">보낸 시간</div>
			</div>
			<!------------------------------ 채팅 목록 출력 ------------------------------------>
			<div class="col-md-12">
			<div class="row" id="contentlist">
				
			</div>
			</div>
		</div>
		<!-- ------------------------------채팅입력창 ----------------------------------------->
		<div style="width: 500px; margin: 0 auto;">
			<form>
			<input  id="chatName" class="form-control" type="text" placeholder="닉네임"> 
			<input  id="chatContent" class="form-control" type="text" placeholder="내용">
			<button class="form-control" type="submit" onclick="chat()">입력</button>
			</form>
		</div>
	</div>
	<%@include file="../footer.jsp"%>
	<script src="../js/chat.js" type="text/javascript"></script>
</body>
</html>