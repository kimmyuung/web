<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
li{ list-style-type: none;} /*�۸Ӹ� ����*/
#contents {
	width: 1150px;
	margin: 0 auto;
	height: 600px;
}
#sub_menu {
width: 250px;
float: left;
}
#main_contents {
width: 900px;
float: right;
}
#sub_menu h3 {
font-size: 20px;
color: #55cfad;
background-color: #516e7f;
padding: 10px;
}
#sub_menu li {
padding: 10px;
border-bottom: dotted 1px #eeeeee;
}
#main_contents h3 {
font-size: 20px;
border-bottom: solid 1px #eeeeee;
padding-bottom: 10px;
}
#main_contents p {
line-height: 180%; /*�� ����*/
margin-top: 20px;
}
#figure{
text-align: center;
margin: 20px 0px;
}
#main_contents li {padding: 5px;}
</style>
</head>
<body>
	<div id="contents">
		<div id="sub_menu">
			<!-- ���� �޴� -->
			<h3>���� �̷�</h3>
			<ul>
				<li>ī�޶� ���� ����</li>
				<li>������ ����!</li>
				<li>�ǻ�ü�� ���</li>
				<li>�������� �ɵ�</li>
				<li>ī�޶� �Կ� ���</li>
			</ul>
		</div>
		<div id = main_contents>
			<h3>ī�޶� ���� ����</h3>
			<p>DSLR ī�޶󿡼� DSLR�� ��Digital Single Lens Reflex���� ���ν� �츮���δ� ������
				�Ͼ� �ݻ�� ī�޶��� �ǹ��մϴ�. DSLR�� ������ ī�޶�ν� ī�޶� ���ο� ���� ���� ����� ��Ÿ�������� ���Ͽ�
				�����δ��� ������ �Ǿ� ���͸� ������ ���� �� ���δ��� ���Ͽ� �ǻ�ü�� Ȯ���� �� �ְ� �˴ϴ�.</p>
			<div id="figure">
				<img alt="" src="../../img/ī�޶�.png">
			</div>
			<p>[�׸� 1]�� DSLR ī�޶󿡼� ���͸� ������ ���� ���¸� �����ִµ� ��� ���� ������ ���� ī�޶�
				���ο��� ������ ���� ������ ��ġ�� �˴ϴ�.</p>
			<ul>
				<li>�� ���� ī�޶� ��� ����մϴ�.</li>
				<li>�� ���� �ݻ� �ſ￡ �ݻ�Ǿ� �������� ���մϴ�.</li>
				<li>�� ���� ��Ÿ������ �ſ￡ �ݻ�Ǿ� �����δ��� ���մϴ�.</li>
				<li>�� ���� ���� ���� �������͵� ���Ͽ� �ǻ�ü�� �� �� �ֽ��ϴ�.</li>
			</ul>
		</div>
	</div>
</body>
</html>