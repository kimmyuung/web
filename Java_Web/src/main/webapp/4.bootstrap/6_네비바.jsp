<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%@include file="1_��ġ.jsp"%>
	<!-- 
container / grid / 
 -->
	<div class="container">
		<!-- �ڽ��� -->
		<div class="navbar navbar-expand-md">
		
		<a href="#" class="navbar-brand"> <img alt="" src="������.jpg" width="150px;"> </a> <!-- �ΰ� -->
		
		<button type="button"  
		data-bs-toggle="collapse" data-bs-target="#navmenu"
		>
								<!-- ���̵� ����ϱ� ������ ����� �ϰ�, #�� �ٿ��� �Ѵ�. --> 
		<span class="navbar-toggler-icon"></span>
		</button>
		
		
		
			<div class="collapse navbar-collapse" id = "navmenu"> <!-- �׺� �޴� ����� 760(md)px �Ʒ��� �Ǹ� ����� -->
			
			
			
			<!-- �׺���̼� �� -->
			<ul class="navbar-nav">
				<!-- �׺���̼� ��� -->
				<li class="nav-item"><a href="#" class="nav-link">�޴�1</a></li>
				<!-- �׺���̼� ��� �� -->
				<li class="nav-item"><a href="#" class="nav-link">�޴�2</a></li>
				<li class="nav-item"><a href="#" class="nav-link">�޴�3</a></li>
				<li class="nav-item dropdown">
					<!-- ����ٿ� �޴� --> <a href="#" class="nav-link dropdown-toggle"
					data-bs-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false" id="navdrop"> <!-- 
				nav link : ��ũ ���� �� : ���� ����, ����, ����
				dropdown-toggle : ����ٿ��� �������� �׷�ȭ(�Ʒ� ȭ��ǥ)
				--> ����ٿ�
				</a> <!-- �ϴ� �ؽ�Ʈ�� Ŭ������ �� �޴� ��ġ�� -->
					<div class="dropdown-menu" aria-labelledby="navdrop">
						<a class="dropdown-item" href="#">����ٿ� �޴�1</a> <a
							class="dropdown-item" href="#">����ٿ� �޴�2</a> <a
							class="dropdown-item" href="#">����ٿ� �޴�3</a>
					</div>
				</li>
			</ul>
			<form action="">
				<div class="row">
					<div class="col-md-5">
					<input type="text" class="form-control" placeholder="�˻���">
					</div>
					<div class="col-md-5">
					<button class="form-control" type="submit">�˻�</button>
					</div>
				</div>
			</form>
			</div>
		</div>
	</div>

</body>
</html>