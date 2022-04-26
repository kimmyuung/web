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
<!-- ��Ʈ���[������] -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.14.0/css/all.css">
</head>
<body>
	<div class="row">
		<div class="col-md-10 offset-2 fixed-top pb-1 pt-5 px-5">
			<div class="col-md-7 offset-5 d-flex justify-content-end">
				<!-- ��� �޴� ������ ��ġ -->
				<!-- ��� -->
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
			<!-- ���̵�� �޴� -->
			<h3><a href="Main.jsp">HUNS</a></h3>
			<ul>
				<li>BEST</li>
				<li>NEW</li>
				<li>���� ���</li>
				<li>1+1 / �ڵ�Ʈ</li>
			</ul>
			<ul>
				<li>�ƿ���</li>
				<li>����</li>
				<li>����</li>
				<li>��Ʈ/�����</li>
				<li>����</li>
				<li>Ʈ���̴�</li>
				<li>�Ź�</li>
				<li>�Ǽ��縮</li>
				<li>����</li>
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
				������ 070-7710-4745 <br> īī��ä�� @����<br> MON - FRI AM9 - PM4
				<br> (LUNCH TIME PM12:30 - PM13:30) <br> SAT, SUN, HOLIDAY
				CLOSE <br> �����ð��� ���Ǵ� Q��A �Խ����� �̿��Ź�帳�ϴ�. <br> �츮����
				xxxx-xxx-xxxxxx <br> ������ : (��)xxx���۴�
			</div>
		</div>

		<div class="col-md-10 offset-2 content">
			<!-- ���� -->
			<div class="carousel slide" data-bs-slide="carousel"
				data-bs-interval="3000" id="cs">
				<!-- ĳ���� -->
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
				<!-- �Ǽ� �±� -->
				<h3>New Arrival</h3>
				<p>�Ż�ǰ</p>
			</div>
			<div class="container">
				<div class="row">
					<%
					for (int i = 0; i < 8; i++) {
					%>
					<!-- �ڹ� �±� JSP = ����Ʈ + �鿣�� -->
					<div class="col-md-4 col-sm-6">
						<!-- col-md-3 : col-md 760px; �̻�� col-sm : 570px �Ʒ��� �� -->
						<div class="card">
							<!-- ī������ -->
							<img class="card-img-top" alt="" src="img/1.jpg">
							<div class="card-body">
								<p class="item">
									<span class="title"> 1 + 1 + 1 ���̽� �� ����Ƽ </span> <br> 
									<span class="content">'���� ������ ��'�� �� ��©�� ����غ�����</span> <br> 
										<span class="price2">22,900�� </span> <br> 
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
					īī��ä�� : @�ƽ� <br> MON - FRI AM9 - PM4 <br> (LUNCH TIME
					PM12:30 - PM13:30) <br> SAT, SUN, HOLIDAY CLOSE <br>
					�����ð��� ���Ǵ� <br> Q��A �Խ����� �̿��Ź�帳�ϴ�. <br> B A N K A C C O U
					N T . <br> �츮���� xxxx-xxx-xxxxxx <br> ������ : (��)���׸� <br>
				</div>
				<div class="col-md-4 px-5 pt-5">
					<h4>C O M P A N Y I N F O .</h4> <br> COMPANY : (��)������ǻ�� CEO : ������ TEL
					: 070-7710-4745 <br> BUSINESS NUMBEER : 693-81-01950 /
					2021-����ϳ�-0552 [���������Ȯ��] <br> ADDRESS : 13024 ��⵵ �ϳ��� �ϳ���� 506
					(�ϻ�) 2�� <br> ADMIN : ����(kimddangddang@naver.com) HOSTING :
					(��)CAFE365 <br> �¶��� ���ڻ�ŷ� ���� ���� [���񽺰��Ի��Ȯ��] <br> <br>

					��ǰ�ּ� / CJ�������(1588-1255) <br> CJ������� ��ǰ�ּ� : �����ȣ 05839) �����
					���ı� ������32 CJ������� �ν����������븮�� <br> Ÿ�ù��̿� ��ǰ�ּ� : ��Ǧ��ȣ 12729) ��⵵
					���ֽ� �ʿ��� ����� 625-12 A�� 3�� <br> �� Ÿ�ù� �̿�� �������ù�, �����ù�Ұ�(�ݼ۵� ��
					����) <br> <br> <br> Copyright (��) ������ġ���۴�, All rights
					reserved. by unniq
				</div>
			</div>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>