<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
h3{text-align: center;}
li{list-style-type: none;} /* �۸Ӹ� ����*/
#join{
	width: 500px;
	margin: 0 auto;   /*��� ����*/
	border-top: dotted 1px red;
	border-bottom: dotted 1px red;
	padding: 30px;
	
}
#btn{
width: 300px;
height: 50px;
margin: 0 auto;
}

.cols li {display: inline-block;}
.col1 {width: 150px;}
.email input, select {height: 20px;}
.hello {vertical-align: top;} /*�ؽ�Ʈ �������� */
.input {width: 200px;}
span{ align-items: center;}
*{font-size: 18px;  line-height: 180%; margin-top: 5px;}
</style>
</head>
<body>
<!-- ��� -->
	<%@include file="header.jsp"%>
	<!-- ����̹��� -->
	<%@include file="mainimage.jsp"%>
	<!-- ���� -->
	<h3>ȸ�� ���� ��</h3>
	<form> <!-- �� ��� -->
		<ul id="join"> <!-- ��ü -->
			<li> <!-- �� [tr] -->
				<ul class="cols">
					<li class="col1">���̵�</li> <!-- �� [td] -->
					<li class="col2"><input type="text"></li> <!-- �� [td] -->
				</ul>
			</li>

			<li>
				<ul class="cols">
					<li class="col1">��й�ȣ</li>
					<li class="col2"><input type="password"></li>
				</ul>
			</li>
			<li>
				<ul class="cols">
					<li class="col1">��й�ȣ Ȯ��</li>
					<li class="col2"><input type="password"></li>
				</ul>
			</li>
			<li>
				<ul class="cols">
					<li class="col1">�̸�</li>
					<li class="col2"><input type="text"></li>
				</ul>
			</li>
			<li>
				<ul class="cols">
					<li class="col1">�̸���</li>
					<li class="col2"><input type="text"></li>
					<li>@ <select>
							<option>���� �Է�</option>
							<option>naver.com</option>
							<option>daum.net</option>
					</select>
					</li>
				</ul>
			</li>
			<li>
				<ul class="cols">
					<li class="col1">�̸��� ���� ����</li>
					<li class="col2"><input type="radio" name = "send"> ����� <input type="radio" name = "send"> ����</li>
				</ul>
			</li>
			<li>
				<ul class="cols">
					<li class="col1">���� ���</li>
					<li class="col2"><input type="checkbox"> ģ����õ <input
						type="checkbox"> ���ͳ� �˻� <input type="checkbox"> ��Ÿ</li>
				</ul>
			</li>
			<li>
				<ul class="cols">
					<li class="col1 hello">�λ縻</li>
					<li class="col2"><textarea rows="6" cols="40"></textarea> </li>
				</ul>
			</li>
			
		</ul>
	</form>
	<div id = "btn">
	<input type ="button" value="�����ϱ�" width="300px;" height="20px;"> 
	<input type="button" value="����ϱ�"  width="300px;" height="20px;">
	</div> 
	<!-- Ǫ�� -->
	<%@include file="Footer.jsp"%>
</body>
</html>