<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<!-- 현재 위치에 다른 파일 포함하기 -->
	<%@include file="header.jsp"%>
	<!-- 캐러셀 : 이미지 슬라이드 -->
	<div id="cs" class="carousel slide" data-bs-ride="carousel"
		data-bs-interval="1000">
		<!-- 슬라이드 시간 : 밀리초 단위(1000 = 1초) -->
		<!-- 슬라이드 위치 표시 : 인디케이터 -->
		<div class="carousel-indicators">
			<button data-bs-target="#cs" data-bs-slide-to="0" class="active"></button>
			<button data-bs-target="#cs" data-bs-slide-to="1"></button>
			<button data-bs-target="#cs" data-bs-slide-to="2"></button>
			<button data-bs-target="#cs" data-bs-slide-to="3"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img alt="" src="img/정장1.jpg">
			</div>
			<div class="carousel-item">
				<img alt="" src="img/정장2.jpg">
			</div>
			<div class="carousel-item">
				<img alt="" src="img/정장3.jpg">
			</div>
			<div class="carousel-item">
				<img alt="" src="img/1.jpg">
			</div>
		</div>
		<button class="carousel-control-prev" data-bs-target="#cs"
			data-bs-slide="prev">
			<span class="carousel-control-prev-icon"></span>
		</button>
		<button class="carousel-control-next" data-bs-target="#cs"
			data-bs-slide="next">
			<span class="carousel-control-next-icon"></span>
		</button>
	</div>
	<div class="container">
		<hr>
		<!-- 실선 태그 -->
		<h3>New Arrival</h3>
		<p>신상품</p>
	</div>
	<div class="container">
		<div class="row">
		<% for(int i = 0; i < 8; i++){ %> <!-- 자바 태그 JSP = 프론트 + 백엔드 -->
			<div class="col-md-3 col-sm-6"> <!-- col-md-3 : col-md 760px; 이상시 col-sm : 570px 아래일 시 -->
				<div class="card">
					<!-- 카드형식 -->
					<img class="card-img-top" alt="" src="img/레전드.gif">
					<div class="card-body">
						<p class="item">
						<span class="title"> 우왕 놀라웡 </span>
						<br>
						<span class="content">'놀라운 광경일 때'는 이 움짤을 사용해보세요</span>
						<br>
						<span class="badge bg-warning text-dark price"> 79,900원 </span> 
						<span class="price2">74,900원 </span>
						<br>
						<span class="badge bg-warning text-dark my-3"> 주문 폭주 </span>
						<span class="badge bg-danger text-light my-3"> 품절 임박</span>
						</p>
					</div>
				</div>
			</div>
			<% }%>
		</div>
	</div>
	
	<%@include file="footer.jsp"%>
</body>
</html>