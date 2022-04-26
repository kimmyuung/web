<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link href="index.css" rel="stylesheet">
<!-- 폰트어썸[아이콘] -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.14.0/css/all.css">
</head>
<body>
	<div class="row">
		<div class="col-md-10 offset-2 fixed-top pb-1 pt-5 px-5">
			<div class="col-md-7 offset-5 d-flex justify-content-end">
				<!-- 헤더 메뉴 오른쪽 배치 -->
				<!-- 헤더 -->
				<ul class="nav">
					<li class="tophead"><a href="login.jsp">LOGIN</a></li>
					<li class="tophead"><a href="#">JOIN</a></li>
					<li class="tophead"><a href="#">CART</a></li>
					<li class="tophead"><a href="#">MY PAGE</a></li>
					<li class="tophead"><a href="#">SNS</a></li>
					<li class="tophead"><a href="#">BOOKMARK</a></li>
				</ul>
			</div>
		</div>
		<div class="nav flex-column col-md-2 sidemenu">
			<!-- 사이드바 메뉴 -->
			<h3><a href="Main.jsp">HUNS</a></h3>
			<ul>
				<li>BEST</li>
				<li>NEW</li>
				<li>당일 배송</li>
				<li>1+1 / 코디세트</li>
			</ul>
			<ul>
				<li>아우터</li>
				<li>상의</li>
				<li>셔츠</li>
				<li>니트/가디건</li>
				<li>팬츠</li>
				<li>트레이닝</li>
				<li>신발</li>
				<li>악세사리</li>
				<li>세일</li>
			</ul>
			<ul>
				<li>NOTICE</li>
				<li>Q & A</li>
				<li>REVIEW</li>
				<li>EVENT</li>
			</ul>
			<div>
				<input type="text"> <i class="fas fa-search"></i></a>
			</div>
			<div>
				고객센터 070-7710-4745 <br> 카카오채널 @이젠<br> MON - FRI AM9 - PM4
				<br> (LUNCH TIME PM12:30 - PM13:30) <br> SAT, SUN, HOLIDAY
				CLOSE <br> 업무시간외 문의는 Q＆A 게시판을 이용부탁드립니다. <br> 우리은행
				xxxx-xxx-xxxxxx <br> 예금주 : (주)xxx컴퍼니
			</div>
		</div>

		<div class="col-md-10 offset-2 content">
			<!-- 본문 -->
			<div class="carousel slide" data-bs-slide="carousel"
				data-bs-interval="3000" id="cs">
				<!-- 캐러셀 -->
				<div class="carousel-indicators">
					<button data-bs-target="#cs" data-bs-slide-to="0" class="active"></button>
					<button data-bs-target="#cs" data-bs-slide-to="1"></button>
					<button data-bs-target="#cs" data-bs-slide-to="2"></button>
					<button data-bs-target="#cs" data-bs-slide-to="3"></button>
				</div>
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img alt="" src="img/back-1.jpg">
					</div>
					<div class="carousel-item">
						<img alt="" src="img/back-2.png">
					</div>
					<div class="carousel-item">
						<img alt="" src="img/back-3.jpg">
					</div>
					<div class="carousel-item">
						<img alt="" src="img/back-4.jpg">
					</div>
					<div class="carousel-item">
						<img alt="" src="img/back-5.jpg">
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
					<%
					for (int i = 0; i < 8; i++) {
					%>
					<!-- 자바 태그 JSP = 프론트 + 백엔드 -->
					<div class="col-md-4 col-sm-6">
						<!-- col-md-3 : col-md 760px; 이상시 col-sm : 570px 아래일 시 -->
						<div class="card">
							<!-- 카드형식 -->
							<img class="card-img-top" alt="" src="img/1.jpg">
							<div class="card-body">
								<p class="item">
									<span class="title"> 1 + 1 + 1 아이스 쿨링 반팔티 </span> <br> 
									<span class="content">'놀라운 광경일 때'는 이 움짤을 사용해보세요</span> <br> 
										<span class="price2">22,900원 </span> <br> 
								</p>
							</div>
						</div>
					</div>
					<%
					}
					%>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 px-5 pt-5">
					<h3>S H O P I N F O .</h3> <br> ABOUT US <br> AGREEMENT <br>
					PRIVACY POLICY <br> SHOPPING GUIDE
				</div>
				<div class="col-md-4 px-5 pt-5">
					<h4>C U S T O M E R C E N T E R .</h4> <br> <h3> 070-7710-4745 </h3><br>
					카카오채널 : @훈스 <br> MON - FRI AM9 - PM4 <br> (LUNCH TIME
					PM12:30 - PM13:30) <br> SAT, SUN, HOLIDAY CLOSE <br>
					업무시간외 문의는 <br> Q＆A 게시판을 이용부탁드립니다. <br> B A N K A C C O U
					N T . <br> 우리은행 xxxx-xxx-xxxxxx <br> 예금주 : (주)제네릭 <br>
				</div>
				<div class="col-md-4 px-5 pt-5">
					<h4>C O M P A N Y I N F O .</h4> <br> COMPANY : (주)이젠컴퓨터 CEO : 이제갑 TEL
					: 070-7710-4745 <br> BUSINESS NUMBEER : 693-81-01950 /
					2021-경기하남-0552 [사업자정보확인] <br> ADDRESS : 13024 경기도 하남시 하남대로 506
					(하산곡동) 2층 <br> ADMIN : 김당당(kimddangddang@naver.com) HOSTING :
					(주)CAFE365 <br> 온라인 전자상거래 안전 서비스 [서비스가입사실확인] <br> <br>

					반품주소 / CJ대한통운(1588-1255) <br> CJ대한통운 반품주소 : 우편번호 05839) 서울시
					송파구 을지로32 CJ대한통운 로스엔젤레스대리점 <br> 타택배이용 반품주소 : 우푠번호 12729) 경기도
					광주시 초월읍 산수로 625-12 A동 3층 <br> ※ 타택배 이용시 자전거택배, 도보택배불가(반송될 수
					있음) <br> <br> <br> Copyright (주) 엠에이치컴퍼니, All rights
					reserved. by unniq
				</div>
			</div>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>