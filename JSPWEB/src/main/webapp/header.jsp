<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ezen 쇼핑몰</title>
	<!-- 부트스트랩 css cdn -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" >
	<!-- 사용자정의 css -->
	<link href="/jspweb/css/main.css" rel="stylesheet">
</head>
<body>
	<!--   헤더페이지[ 모든 페이지 사용되기 때문에 = 최상위에서 절대경로 ] -->
	
	<%
		String loginid 
			= (String)session.getAttribute("login"); // 세션 호출 ( 기본타입 = Odject )
	%>
	<div class="container">
		<!--  공통  -->
		<a href="/JSPWEB/main.jsp">home</a>
		<a href="#">BIG SIZE</a>
		<a href="#">MUSCLE-FIT</a>
		<a href="#">one plus one</a>
		<a href="#">Outer</a>
		<a href="#">Inner</a>
		<a href="#">Pants</a>
		<a href="#">Shoes</a>
		<a href="#">악세사리</a>
		<a href="#">BEST</a>
		<a href="#">트레이닝</a>
		<a href="#">모델처럼 입자!</a>
		<a href="#">50% sale</a>
		<input type="text"><button>검색</button>
		<a href="#"><img> 장바구니 이미지</a>
		<!--  로그인이 안된 상태  -->
		<% if( loginid == null ){ %>
			<a href="/JSPWEB/member/login.jsp">로그인</a>
			<a href="/JSPWEB/member/signup.jsp">회원가입</a>
		<%} %>
		<!--  만약에 로그인된 상태 -->
		<% if( loginid != null ){ %>
			<span> <%=loginid %>님 </span>
			<a href="/JSPWEB/logout">로그아웃</a>
			<a href="/JSPWEB/member/myshopping.jsp">나의 쇼핑</a>
			<a href="/JSPWEB/board/boardlist.jsp">고객센터</a>
		<%} %>
		
	</div>
	<!-- 부트스트랩 js cdn -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- 사용자정의 js -->
	<script src="/JSPWEB/js/main.js" type="text/javascript"></script>
	<!-- jquery 최신 cdn -->
	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
	

</body>
</html>