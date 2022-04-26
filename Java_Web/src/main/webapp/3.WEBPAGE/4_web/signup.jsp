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
				<h4>회원가입 및 정상적인 서비스 이용을 위해 아래 약관을 읽어 보시고, 동의 여부를 결정해주세요</h4>
				<p>필수 약관을 동의하셔야 회원가입이 가능합니다.</p>
				<div>
					<h3>
						회원가입 약관 동의<span style="color: red">*</span>
					</h3>
					<textarea rows="8" cols="50" readonly style="resize: none;">
		
			제 1장 총칙
			제 1조 (목적)
			본 약관은 영화사이트가 운영하는 웹 사이트(Spring Cinema)의 제반 서비스의 이용조건 및 절차에 관한 사항 및 기타 필요한 사항을 
			규정함을 목적으로 한다.
			
			제2조(용어의 정의)
			본 약간에서 사용하는 용어는 다음과 같이 정의한다.
			</textarea>
					<br> <span><input type="checkbox" name="chk_all"
						value="1"> 회원가입 약관에 동의합니다 </span>
				</div>
				<br>
				<div>
					<h3>
						개인정보 처리 방침<span style="color: red">*</span>
					</h3>
					<textarea rows="8" cols="50" readonly style="resize: none;"
						class="form-control">
			회원가입 약관 동의*
			제 1장 총칙
			제1조(목적) 이 지침은 개인정보 보호법 (이하 "법"이라 한다) 제12조1항에 따른 개인정보의 처리에 관한 기준, 개인정보 침해의
			유형 및 예방조치 등에 관한 세부적인 사항을 규정함을 목적으로 한다.
			제2조(용어의 정의) 이 지침에서 사용하는 용어의 뜻은 다음과 같다.
			1. "개인정보 처리"란 개인정보를 수집, 생성, 연계, 연동, 기록, 저장, 보유, 가공, 편집, 검색, 출력, 정정, 복구, 이용, 제공, 공개,
			파기 등에 관한 정보를 처리하는 것을 의미한다.
			</textarea>
					<div class="fregister_agree2 checks2">
						<input type="checkbox" name="agree" value="1"> <span>개인정보처리방침
							동의합니다.</span>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<form>
					<input type="text" placeholder="아이디를 입력하세요" maxlength="15" class="form-control my-3"> 
					<input type="password" placeholder="비밀번호를 입력하세요" maxlength="20" class="form-control my-3">
					<input type="password" placeholder="한번더 비밀번호를 입력하세요" maxlength="20" class="form-control my-3"> 
					<input type="text" placeholder="이름을 입력하세요" maxlength="10" class="form-control my-3">
					<input type="radio" name="sex" class="form-check-input offset-4"> 남자 
					<input type="radio" name="sex" class="form-check-input"> 여자 
					<input type="tel" placeholder="연락처를 입력하세요" class="form-control my-3"> 
					<input type="email"placeholder="이메일을 입력하세요" maxlength="15" class="form-control my-3">
					<input type="text" placeholder="나이를 입력하세요" class="form-control my-3">
				</form>
			
				<div class="row my-3">
					<div class="col-md-4">
						<h3>
							주소<span style="color: red">*</span>
						</h3>
					</div>
					<div class="col-md-4">
						<input class="form-control my-2" type="text" placeholder="우편번호">
					</div>
					<div class="col-md-4">
						<button class="form-control my-2">우편번호 찾기</button>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 offset-4">
						<input class="form-control my-2" type="text" placeholder="도로명주소">
					</div>
					<div class="col-md-4">
						<input class="form-control my-2" type="text" placeholder="지번주소">
					</div>
				</div>
				<div class="row">
					<div class="col-md-8 offset-4">
						<input class="form-control my-2" type="text" placeholder="상세주소">
					</div>
				</div>
				<div class="row">
					<button class="form-control form-control-lg" type="submit">회원가입</button>
				</div>
			</div>
		</div>
	</div>

	<br>
	<br>
	
	<%@include file="footer.jsp"%>
</body>
</html>