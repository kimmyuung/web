<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�� ����</title>
</head>
<body>
	<!-- ���[����] �������� jsp -->
	<%@include file="header.jsp"%>
	<br>
	<br>
	<br>
	<br>

	<div class="container">
		<h3>������</h3>
		<div class="col-md-5 offset-7 row g-0 my-3">
			<!-- �׸��� :  -->
			<!-- 5ĭ ��� ���� 7ĭ ���� / row : ���� �±׸� ���� ��ġ / g-0 : ���� ���� my: �� �Ʒ� ����-->
			<div class="col-md-3">
				<select class="form-select">
					<option>Ű����</option>
					<option>��ȣ</option>
					<option>�ۼ���</option>
				</select>
			</div>

			<div class="col-md-6">
				<input type="text" class="form-select">
			</div>
			<div class="col-md-3">
				<button class="form-control">�˻�</button>
			</div>
		</div>
		<table class="table table-hover">
			<!-- ���̺� �±� -->
			<tr>
				<!-- ��[row] �±� -->
				<th class="text-center">��ȣ</th>
				<th class="text-center">���ǻ���</th>
				<th class="text-center">����</th>
				<th class="text-center">�ۼ���</th>
				<th class="text-center">�ۼ���</th>
			</tr>
			<!-- �� end -->
			<tr>
				<td class="text-center">1</td>
				<td class="text-center">ó��</td>
				<td><a href="boardview.jsp">ȯ�����ּ���</a></td>
				<td class="text-center">�޽�</td>
				<td class="text-center">2022-04-25</td>
			</tr>
			<tr>
				<td class="text-center">2</td>
				<td class="text-center">����</td>
				<td><a href="boardview.jsp">������ ����</a></td>
				<td class="text-center">ȣ����</td>
				<td class="text-center">2022-04-25</td>
			</tr>
			<tr>
				<td class="text-center">3</td>
				<td class="text-center">ó��</td>
				<td><a href="boardview.jsp">Ż�� ����</a></td>
				<td class="text-center">����</td>
				<td class="text-center">2022-04-25</td>
			</tr>
			<tr>
				<td class="text-center">4</td>
				<td class="text-center">����</td>
				<td><a href="boardview.jsp">ȯ�����ּ���</a></td>
				<td class="text-center">������</td>
				<td class="text-center">2022-04-25</td>
			</tr>
		</table>
		<div class="row">
			<div class="col-md-4 offset-4 my-3">
				<ul class="pagination">
					<!-- pagination ����¡ -->
					<li class="page-item"><a class="page-link" href="#">����</a></li>
					<li class="page-item"><a class="page-link" href="#">1</a></li>
					<li class="page-item"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					<li class="page-item"><a class="page-link" href="#">4</a></li>
					<li class="page-item"><a class="page-link" href="#">5</a></li>
					<li class="page-item"><a class="page-link" href="#">����</a></li>
				</ul>
			</div>
			<div class="col-md-2 offset-2 my-3">
				<button class="form-control">�����ϱ�</button>
			</div>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<%@include file="footer.jsp"%>
</body>
</html>