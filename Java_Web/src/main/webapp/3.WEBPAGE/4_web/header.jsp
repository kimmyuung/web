<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<!-- 부트스트랩 css 포함 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- 사용자 정의한 css 포함 -->
<link href="css/main.css" rel="stylesheet">
<!-- 폰트어썸[아이콘] -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.14.0/css/all.css">
</head>
<body>
	<div class="fixed-top bg-white">
	<div class="container">
		<!-- 박스권 형성 -->
		<div class="py-3">
			<!-- 상단 메뉴 -->
			<!-- p : 패딩(안쪽여백) m : 마진(바깥쪽여백) 
		py(위 아래 안쪽 여백) my(위 아래 바깥 여백)
		 
		-->
			<div class="row">
				<!-- 가로 배치 -->
				<div class="col-md-4 offset-4 text-center">
					<!-- text-center : 박스권 내 내용물을 가운데 정렬 -->
					<!-- offset-4 : 여백 그리드  -->
					<a href="#main.jsp" class="header_logo">Kim's Shop</a>
					<!-- 링크 -->
				</div>
				<div class="col-md-4 d-flex justify-content-end">
					<!-- justify-content-end :  -->
					<ul class="nav">
						<!-- 가로 배치 -->
						<li><a href="#">로그인 </a>|</li>
						<li><a href="#">회원가입 </a>|</li>
						<li><a href="#">장바구니 </a>|</li>
					</ul>
				</div>
			</div>
			
			<div class="navbar navbar-expand-md navbar-light bg-white">
				<!-- 본 메뉴 -->
				<button class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navcl">
				<span class="navbar-toggler-icon"></span>
				</button>
				<!-- 사이즈가 부족할 경우 아래 ul 숨기기 -->
				<div class="collapse navbar-collapse" id="navcl">
				<ul class="navbar-nav col-md-12 justify-content-between">
					<!--  justify-content-between : 자동 간격 배치 -->
					<li class="nav-item"><a href="#" class="nav-link">Best Item</a></li>
					<li class="nav-item"><a href="#" class="nav-link">Suit</a></li>
					<li class="nav-item"><a href="#" class="nav-link">Outer</a></li>
					<li class="nav-item"><a href="#" class="nav-link">Inner</a></li>
					<li class="nav-item"><a href="#" class="nav-link">Neat</a></li>
					<li class="nav-item"><a href="#" class="nav-link">Shirt</a></li>
					<li class="nav-item"><a href="#" class="nav-link">Pants</a></li>
					<li class="nav-item"><a href="#" class="nav-link">Shoes</a></li>
					<li class="nav-item"><a href="#" class="nav-link">Accessory</a></li>
					<li class="nav-item"><a href="#" class="nav-link">Style</a></li>
					<li class="nav-item"><a href="#" class="nav-link">Review</a></li>
					<li class="nav-item"><a href="#" class="nav-link">고객 센터</a></li>
					<li class="nav-item"><a href="#" class="nav-link"> <i class="fas fa-search"></i>
					</a></li>
				</ul>
				</div>
			</div>
		</div>
	</div>
</div>
	<!-- 부트스트랩 js 포함 -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>