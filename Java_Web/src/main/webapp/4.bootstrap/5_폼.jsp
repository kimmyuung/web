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

	<form>
		<label> </label> <input type="text" placeholder="�̸�"> <label>
		</label> <input type="email" placeholder="�̸���">
		<button type="submit">Ȯ��</button>
	</form>

	<form>
		<div class="form-group">
			<label> �̸� </label> <input type="text" placeholder="�̸�">
		</div>
		<div class="form-group">
			<label> �̸��� </label> <input type="email" placeholder="�̸���">
		</div>
		<div class="form-group">
			<button type="submit">Ȯ��</button>
		</div>
	</form>

	<input type="text" class="form-control">
	<input type="password" class="form-control">
	<input type="datetime-local" class="form-control">
	<textarea rows="5" cols="5" class="form-control"></textarea>
	<div class="form-check">
		<input type="checkbox" class="form-check-input">
	</div>
	<div class="form-check">
		<input type="radio" class="form-check-input">
	</div>

	<div class="container row"> <!-- Ŭ������1 Ŭ������2 Ŭ������3 Ŭ������ ������ ���� -->
		<div class="col-md-2"> <input type="text" class="form-control"> </div>
		<div class="col-md-2 offset-3"> <input type="text" class="form-control"> </div>
		<div class="col-md-2 offset-3"> <input type="text" class="form-control"> </div>
	</div>
	
	<button type="button" > ��ư </button>
	<button type="button" class="btn btn-primary"> ��ư </button>
	<button type="button" class="btn btn-secondary"> ��ư </button>
	<button type="button" class="btn btn-info"> ��ư </button>
	<button type="button" class="btn btn-success"> ��ư </button>
	
	<div class="container">
	<div class="row">
	<div class="col-md-3"> <img alt="" src="������.jpg" width="100%">  </div>
	<div class="col-md-3"> <img alt="" src="������.jpg" width="100%">  </div>
	<div class="col-md-3"> <img alt="" src="������.jpg" width="100%">  </div>
	<div class="col-md-3"> <img alt="" src="������.jpg" width="100%">  </div>
	</div>
	</div>
	
</body>
</html>