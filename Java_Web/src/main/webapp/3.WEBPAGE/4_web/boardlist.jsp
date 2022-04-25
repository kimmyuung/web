<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>고객 센터</title>
</head>
<body>
	<!-- 헤더[파일] 가져오기 jsp -->
	<%@include file="header.jsp"%>
	<br>
	<br>
	<br>
	<br>

	<div class="container">
		<h3>고객센터</h3>
		<div class="col-md-5 offset-7 row g-0 my-3">
			<!-- 그리드 :  -->
			<!-- 5칸 사용 왼쪽 7칸 여백 / row : 하위 태그를 가로 배치 / g-0 : 여백 제거 my: 위 아래 마진-->
			<div class="col-md-3">
				<select class="form-select">
					<option>키워드</option>
					<option>번호</option>
					<option>작성자</option>
				</select>
			</div>

			<div class="col-md-6">
				<input type="text" class="form-select">
			</div>
			<div class="col-md-3">
				<button class="form-control">검색</button>
			</div>
		</div>
		<table class="table table-hover">
			<!-- 테이블 태그 -->
			<tr>
				<!-- 행[row] 태그 -->
				<th class="text-center">번호</th>
				<th class="text-center">문의상태</th>
				<th class="text-center">제목</th>
				<th class="text-center">작성자</th>
				<th class="text-center">작성일</th>
			</tr>
			<!-- 행 end -->
			<tr>
				<td class="text-center">1</td>
				<td class="text-center">처리</td>
				<td><a href="boardview.jsp">환불해주세요</a></td>
				<td class="text-center">메시</td>
				<td class="text-center">2022-04-25</td>
			</tr>
			<tr>
				<td class="text-center">2</td>
				<td class="text-center">접수</td>
				<td><a href="boardview.jsp">사이즈 문의</a></td>
				<td class="text-center">호날두</td>
				<td class="text-center">2022-04-25</td>
			</tr>
			<tr>
				<td class="text-center">3</td>
				<td class="text-center">처리</td>
				<td><a href="boardview.jsp">탈퇴 문의</a></td>
				<td class="text-center">케인</td>
				<td class="text-center">2022-04-25</td>
			</tr>
			<tr>
				<td class="text-center">4</td>
				<td class="text-center">접수</td>
				<td><a href="boardview.jsp">환불해주세요</a></td>
				<td class="text-center">한지우</td>
				<td class="text-center">2022-04-25</td>
			</tr>
		</table>
		<div class="row">
			<div class="col-md-4 offset-4 my-3">
				<ul class="pagination">
					<!-- pagination 페이징 -->
					<li class="page-item"><a class="page-link" href="#">이전</a></li>
					<li class="page-item"><a class="page-link" href="#">1</a></li>
					<li class="page-item"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					<li class="page-item"><a class="page-link" href="#">4</a></li>
					<li class="page-item"><a class="page-link" href="#">5</a></li>
					<li class="page-item"><a class="page-link" href="#">다음</a></li>
				</ul>
			</div>
			<div class="col-md-2 offset-2 my-3">
				<button class="form-control">문의하기</button>
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