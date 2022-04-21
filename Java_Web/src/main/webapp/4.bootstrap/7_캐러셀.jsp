<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
.carousel-item{
width: 350%;
height: 100%;
}
</style>
</head>
<body>

	<%@include file="1_설치.jsp"%>

	<!-- 이미지 슬라이드 : 캐러셀 -->
	<div class="container">
	
		<div id = "cs" class="carousel slide" data-bs-ride="carousel" data-bs-interval="1000">
			
			<!-- 캐러셀 [ 내용위치 ] 하단 버튼 : 인디케이터 -->
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#cs" data-bs-slide-to="0" class="active"></button>
				<button type="button" data-bs-target="#cs" data-bs-slide-to="1"></button>
				<button type="button" data-bs-target="#cs" data-bs-slide-to="2"></button>
			</div>
															<!-- 단위 : 밀리초(1/1000초) -->
			<div class="carousel-inner">
				<div class="carousel-item active"> <img src="강아지.jpg" alt="..." > </div>
				<div class="carousel-caption"> 아직 한발 남았다...! </div>
				<div class="carousel-item"> <img src="강아지.jpg" alt="..."  > </div>
				<div class="carousel-item">	<img src="강아지.jpg" alt="..." > </div>
			</div>
			
			<!-- 캐러셀 이동 이전 버튼 -->
			<button class = "carousel-control-prev" data-bs-target="#cs" data-bs-slide="prev" >
			<span class="carousel-control-prev-icon" ></span>
			</button>
			
			<!-- 캐러셀 이동 이후 버튼 -->
			<button class = "carousel-control-next" data-bs-target="#cs" data-bs-slide="next" >
			<span class="carousel-control-next-icon"></span>
			</button>
		</div>
		
	</div>

</body>
</html>