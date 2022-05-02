<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="../header.jsp"%>
	<div class="container">
		<h3>회원 페이지</h3>
		<form id="sign">
				아이디 : <input type="text" id="mid" placeholder="user id"> <br>
				<span id="idcheck"></span> <br>
				비밀번호 : <input type="password" id="mpw" placeholder="user pw"> 
				비밀번호 확인 : <input type="password" id="mpwcheck" placeholder="rewrite user pw"> <br>
				<span id="passwordcheck"></span> <br>
				이름 : <input type="text" id="mname" placeholder="user name"> <br>
				<span id="namecheck"></span> <br>
				전화번호 : <input type="text" id="mphone" placeholder="user phone"> <br>
				<span id="phonecheck"></span> <br>
				이메일 : <input type="email" id="memail" placeholder="user email"> <br> 
				<span id="emailcheck"></span> <br>
				<input type="text" id="sample4_postcode" placeholder="우편번호">
				<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br> 
				<input type="text" id="sample4_roadAddress" placeholder="도로명주소"> 
				<input type="text" id="sample4_jibunAddress" placeholder="지번주소"> 
				<span id="guide" style="color: #999; display: none"></span> 
				<input type="text" id="sample4_detailAddress" placeholder="상세주소"> 
				<input type="text" id="sample4_extraAddress" placeholder="참고항목">
			<button onclick="signup()" type="button">가입하기</button>
		</form>
	</div>
	<%@include file="../footer.jsp"%>
	<script src="../js/signup.js" type="text/javascript"></script>
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

</body>
</html>