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
	<br>
	<br>
	<br>
	<br>
	<div class="container">
		<h3 class="text-center titleline">���� ��</h3>
		<!-- ��ư -->
		<div>
			<a href="boardlist.jsp"><button class="btn btn-outline-info">���</button>
			</a> <a href="boardlist.jsp"><button class="btn btn-outline-info">����</button></a>
			<!-- �ۼ��� ���� [ ��ȿ�� �˻� ] -->
			<a href="boardlist.jsp"><button class="btn btn-outline-info">����</button></a>
			<!-- �ۼ��� ���� [ ��ȿ�� �˻� ] -->
			<a href="boardlist.jsp"><button class="btn btn-outline-info">�亯</button></a>
			<!-- ������ ���� [ ��ȿ�� �˻� ] -->
		</div>
		<!-- �ۼ��ڰ� �Է��� ���� -->
		<div>
			<!-- div �ڽ��� : display�� block���� ����, span : display�� inline���� ���� -->
			<span> �ۼ��� </span> <span> ���缮</span>
			<span> ���ǳ�¥ </span> <span> 2022-04-24 10:10 </span>
		</div>
		<div>
			<!-- div �ڽ��� : display�� block���� ����, span : display�� inline���� ���� -->
			<span> ���� </span> <span> ���缮</span>
		</div>
		<div>
			<!-- div �ڽ��� : display�� block���� ����, span : display�� inline���� ���� -->
			<textarea rows="20" cols="" class="form-control" readonly="readonly" style="resize: none;">�����ƿ�</textarea>
		</div>
		
		<div class="row">
			<div class="col-md-3"> <img alt="" src="img/���.gif" width="100%$"> </div>
			<div class="col-md-3"> <img alt="" src="img/���.gif" width="100%" > </div>
			<div class="col-md-3"> <img alt="" src="img/���.gif" width="100%"> </div>
			<div class="col-md-3"> <img alt="" src="img/���.gif" width="100%"> </div>
		</div>
		<!-- �����ڰ� �亯�� ���� -->
		<h4>�亯 </h4>
		<p> �亯�� : </p>
		<div>
			<textarea rows="" cols="" class="form-control" readonly="readonly" style="resize: none;">���������ƿ�</textarea>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<%@include file="footer.jsp"%>
</body>
</html>