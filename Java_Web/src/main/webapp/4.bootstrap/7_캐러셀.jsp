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

	<%@include file="1_��ġ.jsp"%>

	<!-- �̹��� �����̵� : ĳ���� -->
	<div class="container">
	
		<div id = "cs" class="carousel slide" data-bs-ride="carousel" data-bs-interval="1000">
			
			<!-- ĳ���� [ ������ġ ] �ϴ� ��ư : �ε������� -->
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#cs" data-bs-slide-to="0" class="active"></button>
				<button type="button" data-bs-target="#cs" data-bs-slide-to="1"></button>
				<button type="button" data-bs-target="#cs" data-bs-slide-to="2"></button>
			</div>
															<!-- ���� : �и���(1/1000��) -->
			<div class="carousel-inner">
				<div class="carousel-item active"> <img src="������.jpg" alt="..." > </div>
				<div class="carousel-caption"> ���� �ѹ� ���Ҵ�...! </div>
				<div class="carousel-item"> <img src="������.jpg" alt="..."  > </div>
				<div class="carousel-item">	<img src="������.jpg" alt="..." > </div>
			</div>
			
			<!-- ĳ���� �̵� ���� ��ư -->
			<button class = "carousel-control-prev" data-bs-target="#cs" data-bs-slide="prev" >
			<span class="carousel-control-prev-icon" ></span>
			</button>
			
			<!-- ĳ���� �̵� ���� ��ư -->
			<button class = "carousel-control-next" data-bs-target="#cs" data-bs-slide="next" >
			<span class="carousel-control-next-icon"></span>
			</button>
		</div>
		
	</div>

</body>
</html>