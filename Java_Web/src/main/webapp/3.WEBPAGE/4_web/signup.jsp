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
	

	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<h4>ȸ������ �� �������� ���� �̿��� ���� �Ʒ� ����� �о� ���ð�, ���� ���θ� �������ּ���</h4>
				<p>�ʼ� ����� �����ϼž� ȸ�������� �����մϴ�.</p>
				<div>
					<h3>
						ȸ������ ��� ����<span style="color: red">*</span>
					</h3>
					<textarea rows="8" cols="50" readonly style="resize: none;">
		
			�� 1�� ��Ģ
			�� 1�� (����)
			�� ����� ��ȭ����Ʈ�� ��ϴ� �� ����Ʈ(Spring Cinema)�� ���� ������ �̿����� �� ������ ���� ���� �� ��Ÿ �ʿ��� ������ 
			�������� �������� �Ѵ�.
			
			��2��(����� ����)
			�� �ణ���� ����ϴ� ���� ������ ���� �����Ѵ�.
			</textarea>
					<br> <span><input type="checkbox" name="chk_all"
						value="1"> ȸ������ ����� �����մϴ� </span>
				</div>
				<br>
				<div>
					<h3>
						�������� ó�� ��ħ<span style="color: red">*</span>
					</h3>
					<textarea rows="8" cols="50" readonly style="resize: none;"
						class="form-control">
			ȸ������ ��� ����*
			�� 1�� ��Ģ
			��1��(����) �� ��ħ�� �������� ��ȣ�� (���� "��"�̶� �Ѵ�) ��12��1�׿� ���� ���������� ó���� ���� ����, �������� ħ����
			���� �� ������ġ � ���� �������� ������ �������� �������� �Ѵ�.
			��2��(����� ����) �� ��ħ���� ����ϴ� ����� ���� ������ ����.
			1. "�������� ó��"�� ���������� ����, ����, ����, ����, ���, ����, ����, ����, ����, �˻�, ���, ����, ����, �̿�, ����, ����,
			�ı� � ���� ������ ó���ϴ� ���� �ǹ��Ѵ�.
			</textarea>
					<div class="fregister_agree2 checks2">
						<input type="checkbox" name="agree" value="1"> <span>��������ó����ħ
							�����մϴ�.</span>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<form>
					<input type="text" placeholder="���̵� �Է��ϼ���" maxlength="15" class="form-control my-3"> 
					<input type="password" placeholder="��й�ȣ�� �Է��ϼ���" maxlength="20" class="form-control my-3">
					<input type="password" placeholder="�ѹ��� ��й�ȣ�� �Է��ϼ���" maxlength="20" class="form-control my-3"> 
					<input type="text" placeholder="�̸��� �Է��ϼ���" maxlength="10" class="form-control my-3">
					<input type="radio" name="sex" class="form-check-input offset-4"> ���� 
					<input type="radio" name="sex" class="form-check-input"> ���� 
					<input type="tel" placeholder="����ó�� �Է��ϼ���" class="form-control my-3"> 
					<input type="email"placeholder="�̸����� �Է��ϼ���" maxlength="15" class="form-control my-3">
					<input type="text" placeholder="���̸� �Է��ϼ���" class="form-control my-3">
				</form>
			
				<div class="row my-3">
					<div class="col-md-4">
						<h3>
							�ּ�<span style="color: red">*</span>
						</h3>
					</div>
					<div class="col-md-4">
						<input class="form-control my-2" type="text" placeholder="�����ȣ">
					</div>
					<div class="col-md-4">
						<button class="form-control my-2">�����ȣ ã��</button>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 offset-4">
						<input class="form-control my-2" type="text" placeholder="���θ��ּ�">
					</div>
					<div class="col-md-4">
						<input class="form-control my-2" type="text" placeholder="�����ּ�">
					</div>
				</div>
				<div class="row">
					<div class="col-md-8 offset-4">
						<input class="form-control my-2" type="text" placeholder="���ּ�">
					</div>
				</div>
				<div class="row">
					<button class="form-control form-control-lg" type="submit">ȸ������</button>
				</div>
			</div>
		</div>
	</div>

	<br>
	<br>
	
	<%@include file="footer.jsp"%>
</body>
</html>