<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%@include file="1_설치.jsp"%>
	<!-- 
container / grid / 
 -->
	<div class="container">
		<!-- 박스권 -->
		<div class="navbar navbar-expand-md">
		
		<a href="#" class="navbar-brand"> <img alt="" src="강아지.jpg" width="150px;"> </a> <!-- 로고 -->
		
		<button type="button"  
		data-bs-toggle="collapse" data-bs-target="#navmenu"
		>
								<!-- 아이디를 취급하기 때문에 맞춰야 하고, #을 붙여야 한다. --> 
		<span class="navbar-toggler-icon"></span>
		</button>
		
		
		
			<div class="collapse navbar-collapse" id = "navmenu"> <!-- 네비 메뉴 사이즈가 760(md)px 아래가 되면 사라짐 -->
			
			
			
			<!-- 네비게이션 바 -->
			<ul class="navbar-nav">
				<!-- 네비게이션 목록 -->
				<li class="nav-item"><a href="#" class="nav-link">메뉴1</a></li>
				<!-- 네비게이션 목록 값 -->
				<li class="nav-item"><a href="#" class="nav-link">메뉴2</a></li>
				<li class="nav-item"><a href="#" class="nav-link">메뉴3</a></li>
				<li class="nav-item dropdown">
					<!-- 드랍다운 메뉴 --> <a href="#" class="nav-link dropdown-toggle"
					data-bs-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false" id="navdrop"> <!-- 
				nav link : 링크 설정 값 : 밑줄 제거, 여백, 색상
				dropdown-toggle : 드랍다운의 아이템을 그룹화(아래 화살표)
				--> 드랍다운
				</a> <!-- 하단 텍스트를 클릭했을 때 메뉴 펼치기 -->
					<div class="dropdown-menu" aria-labelledby="navdrop">
						<a class="dropdown-item" href="#">드랍다운 메뉴1</a> <a
							class="dropdown-item" href="#">드랍다운 메뉴2</a> <a
							class="dropdown-item" href="#">드랍다운 메뉴3</a>
					</div>
				</li>
			</ul>
			<form action="">
				<div class="row">
					<div class="col-md-5">
					<input type="text" class="form-control" placeholder="검색어">
					</div>
					<div class="col-md-5">
					<button class="form-control" type="submit">검색</button>
					</div>
				</div>
			</form>
			</div>
		</div>
	</div>

</body>
</html>