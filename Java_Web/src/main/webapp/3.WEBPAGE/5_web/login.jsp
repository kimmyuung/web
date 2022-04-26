<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link href="index.css" rel="stylesheet">
<!-- 폰트어썸[아이콘] -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.14.0/css/all.css">
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
			<h3>
				<a href="Main.jsp">HUNS</a>
			</h3>
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

		<br> <br> <br> <br> <br> <br>
		<div class="col-md-10 offset-2 content">
			<h3 class="col-md-3 offset-5">LOGIN</h3>
			<br> <br> <br>
			<div class="row">
				<div class="col-md-3 offset-4">
					<div class="row">
						<div class="col-md-8">
							<div class="row">

								<input class="form-control textbox" type="text"
									placeholder="아이디">

							</div>
							<div class="row">

								<input class="form-control textbox" type="text"
									placeholder="비밀번호">

							</div>
						</div>
						<div class="col-md-4">
							<button class="form-control" style="height: 80px;">LOGIN</button>
						</div>
					</div>
					<br>

				</div>
				<div class="col-md-8 offset-3">
					<input type="checkbox"> 아이디 저장 보안접속 |<a href="#">아이디 찾기</a>
					|<a href="#">비밀번호 찾기</a>
				</div>
				<br>
				<div class="col-md-8 offset-3">
					<img alt="" src="img/naver.png" style="width: 200px;"> <img
						alt="" src="img/facebook.png" style="width: 200px;"> <br>
					<img alt="" src="img/kakao.png" style="width: 200px;"> <img
						alt="" src="img/apple.png" style="width: 200px;"> <br>
					<br> <br>
				</div>

				<div class="col-md-8 offset-4">
					<button type="button" style="width: 300px;">JOIN US</button>
				</div>
				<br> <br> <br> <br>
				<div class="row title my-1">
					<div class="col-md-6">주문자명</div>
					<div class="col-md-6">
						<input type="text">
					</div>
				</div>
				<div class="row title my-1">
					<div class="col-md-6 ">주문번호</div>
					<div class="col-md-6">
						<input type="text" placeholder="하이픈(-) 포함">
					</div>
				</div>
				<div class="row title my-1">
					<div class="col-md-6">
						비회원주문 비밀번호 <br>
						<br>
					</div>
					<div class="col-md-6">
						<input type="text">
					</div>
				</div>
				<div class="row title my-1">
					<br>
					<br>
					<button style="border: solid 1px gray;" type="button"
						class=" py-2">비회원 로그인</button>
				</div>

			</div>

			<div class="row">
				<div class="col-md-4 px-5 pt-5">
					<h3>S H O P I N F O .</h3>
					<br> ABOUT US <br> AGREEMENT <br> PRIVACY POLICY <br>
					SHOPPING GUIDE
				</div>
				<div class="col-md-4 px-5 pt-5">
					<h4>C U S T O M E R C E N T E R .</h4>
					<br>
					<h3>070-7710-4745</h3>
					<br> 카카오채널 : @훈스 <br> MON - FRI AM9 - PM4 <br>
					(LUNCH TIME PM12:30 - PM13:30) <br> SAT, SUN, HOLIDAY CLOSE <br>
					업무시간외 문의는 <br> Q＆A 게시판을 이용부탁드립니다. <br> B A N K A C C O U
					N T . <br> 우리은행 xxxx-xxx-xxxxxx <br> 예금주 : (주)제네릭 <br>
				</div>
				<div class="col-md-4 px-5 pt-5">
					<h4>C O M P A N Y I N F O .</h4>
					<br> COMPANY : (주)이젠컴퓨터 CEO : 이제갑 TEL : 070-7710-4745 <br>
					BUSINESS NUMBEER : 693-81-01950 / 2021-경기하남-0552 [사업자정보확인] <br>
					ADDRESS : 13024 경기도 하남시 하남대로 506 (하산곡동) 2층 <br> ADMIN :
					김당당(kimddangddang@naver.com) HOSTING : (주)CAFE365 <br> 온라인
					전자상거래 안전 서비스 [서비스가입사실확인] <br> <br> 반품주소 /
					CJ대한통운(1588-1255) <br> CJ대한통운 반품주소 : 우편번호 05839) 서울시 송파구 을지로32
					CJ대한통운 로스엔젤레스대리점 <br> 타택배이용 반품주소 : 우푠번호 12729) 경기도 광주시 초월읍 산수로
					625-12 A동 3층 <br> ※ 타택배 이용시 자전거택배, 도보택배불가(반송될 수 있음) <br>
					<br> <br> Copyright (주) 엠에이치컴퍼니, All rights reserved. by
					unniq
				</div>
			</div>

			<script
				src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>