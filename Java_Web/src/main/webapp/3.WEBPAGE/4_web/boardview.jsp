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
		<h3 class="text-center titleline">문의 글</h3>
		<!-- 버튼 -->
		<div>
			<a href="boardlist.jsp"><button class="btn btn-outline-info">목록</button>
			</a> <a href="boardlist.jsp"><button class="btn btn-outline-info">수정</button></a>
			<!-- 작성자 가능 [ 유효성 검사 ] -->
			<a href="boardlist.jsp"><button class="btn btn-outline-info">삭제</button></a>
			<!-- 작성자 가능 [ 유효성 검사 ] -->
			<a href="boardlist.jsp"><button class="btn btn-outline-info">답변</button></a>
			<!-- 관리자 가능 [ 유효성 검사 ] -->
		</div>
		<!-- 작성자가 입력한 내용 -->
		<div>
			<!-- div 박스권 : display가 block으로 설정, span : display가 inline으로 설정 -->
			<span> 작성자 </span> <span> 유재석</span>
			<span> 문의날짜 </span> <span> 2022-04-24 10:10 </span>
		</div>
		<div>
			<!-- div 박스권 : display가 block으로 설정, span : display가 inline으로 설정 -->
			<span> 제목 </span> <span> 유재석</span>
		</div>
		<div>
			<!-- div 박스권 : display가 block으로 설정, span : display가 inline으로 설정 -->
			<textarea rows="20" cols="" class="form-control" readonly="readonly" style="resize: none;">음오아예</textarea>
		</div>
		
		<div class="row">
			<div class="col-md-3"> <img alt="" src="img/우왕.gif" width="100%$"> </div>
			<div class="col-md-3"> <img alt="" src="img/우왕.gif" width="100%" > </div>
			<div class="col-md-3"> <img alt="" src="img/우왕.gif" width="100%"> </div>
			<div class="col-md-3"> <img alt="" src="img/우왕.gif" width="100%"> </div>
		</div>
		<!-- 관리자가 답변한 내용 -->
		<h4>답변 </h4>
		<p> 답변일 : </p>
		<div>
			<textarea rows="" cols="" class="form-control" readonly="readonly" style="resize: none;">오예음오아예</textarea>
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