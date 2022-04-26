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
	<h3 class="text-center">문의 글쓰기</h3>
	<div style="border-bottom: solid 5px orange; width: 200px; margin: 0 auto" ></div>
		<form action="#" method="get">
			<!-- 입력값을 전송 가능 -->
			<div class="row">
				<div class="col-md-3">
					작성자 <input class="form-control" type="text" placeholder="작성자"
						maxlength="10">
				</div>
				<div class="col-md-3">
					비밀번호 <input class="form-control" type="password" placeholder="비밀번호"
						maxlength="5">
				</div>
			</div>

			<div class="row">
				<div class="col-md-8">
					제목 <input class="form-control" type="text"
						placeholder="문의 제목을 작성해주세요" maxlength="50">
				</div>
			</div>
			내용
			<textarea class="form-control" rows="" cols=""> </textarea>
			<div class="row">
				<div class="col-md-3">
					첨부파일 <input class="form-control" type="file">
				</div>
			</div>
				<div class="col-md-4 offset-4 row">
					<div class="col-md-4">
						<!-- 첨부파일 입력상자 -->
						<input class="form-control" type="submit" value="등록">
					</div>
					<div class="col-md-4">
						<!-- 폼 전송(action -> ) 버튼 -->
						<input class="form-control" type="reset" value="다시 쓰기">
					</div>
					<div class="col-md-4">
						<a href="boardlist.jsp"><button class="form-control">목록</button></a>
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