<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%@include file="header.jsp"%>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="container">
	<h3 class="text-center">���� �۾���</h3>
	<div style="border-bottom: solid 5px orange; width: 200px; margin: 0 auto" ></div>
		<form action="#" method="get">
			<!-- �Է°��� ���� ���� -->
			<div class="row">
				<div class="col-md-3">
					�ۼ��� <input class="form-control" type="text" placeholder="�ۼ���"
						maxlength="10">
				</div>
				<div class="col-md-3">
					��й�ȣ <input class="form-control" type="password" placeholder="��й�ȣ"
						maxlength="5">
				</div>
			</div>

			<div class="row">
				<div class="col-md-8">
					���� <input class="form-control" type="text"
						placeholder="���� ������ �ۼ����ּ���" maxlength="50">
				</div>
			</div>
			����
			<textarea class="form-control" rows="" cols=""> </textarea>
			<div class="row">
				<div class="col-md-3">
					÷������ <input class="form-control" type="file">
				</div>
			</div>
				<div class="col-md-4 offset-4 row">
					<div class="col-md-4">
						<!-- ÷������ �Է»��� -->
						<input class="form-control" type="submit" value="���">
					</div>
					<div class="col-md-4">
						<!-- �� ����(action -> ) ��ư -->
						<input class="form-control" type="reset" value="�ٽ� ����">
					</div>
					<div class="col-md-4">
						<a href="boardlist.jsp"><button class="form-control">���</button></a>
					</div>
				</div>
		</form>

	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<%@include file="footer.jsp"%>
</body>
</html>