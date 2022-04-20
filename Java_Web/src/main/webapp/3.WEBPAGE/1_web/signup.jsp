<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
h3{text-align: center;}
li{list-style-type: none;} /* 글머리 제거*/
#join{
	width: 500px;
	margin: 0 auto;   /*가운데 정렬*/
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
.hello {vertical-align: top;} /*텍스트 세로정렬 */
.input {width: 200px;}
span{ align-items: center;}
*{font-size: 18px;  line-height: 180%; margin-top: 5px;}
</style>
</head>
<body>
<!-- 헤더 -->
	<%@include file="header.jsp"%>
	<!-- 헤더이미지 -->
	<%@include file="mainimage.jsp"%>
	<!-- 본문 -->
	<h3>회원 가입 폼</h3>
	<form> <!-- 폼 양식 -->
		<ul id="join"> <!-- 전체 -->
			<li> <!-- 행 [tr] -->
				<ul class="cols">
					<li class="col1">아이디</li> <!-- 열 [td] -->
					<li class="col2"><input type="text"></li> <!-- 열 [td] -->
				</ul>
			</li>

			<li>
				<ul class="cols">
					<li class="col1">비밀번호</li>
					<li class="col2"><input type="password"></li>
				</ul>
			</li>
			<li>
				<ul class="cols">
					<li class="col1">비밀번호 확인</li>
					<li class="col2"><input type="password"></li>
				</ul>
			</li>
			<li>
				<ul class="cols">
					<li class="col1">이름</li>
					<li class="col2"><input type="text"></li>
				</ul>
			</li>
			<li>
				<ul class="cols">
					<li class="col1">이메일</li>
					<li class="col2"><input type="text"></li>
					<li>@ <select>
							<option>직접 입력</option>
							<option>naver.com</option>
							<option>daum.net</option>
					</select>
					</li>
				</ul>
			</li>
			<li>
				<ul class="cols">
					<li class="col1">이메일 수신 여부</li>
					<li class="col2"><input type="radio" name = "send"> 비수신 <input type="radio" name = "send"> 수신</li>
				</ul>
			</li>
			<li>
				<ul class="cols">
					<li class="col1">가입 경로</li>
					<li class="col2"><input type="checkbox"> 친구추천 <input
						type="checkbox"> 인터넷 검색 <input type="checkbox"> 기타</li>
				</ul>
			</li>
			<li>
				<ul class="cols">
					<li class="col1 hello">인사말</li>
					<li class="col2"><textarea rows="6" cols="40"></textarea> </li>
				</ul>
			</li>
			
		</ul>
	</form>
	<div id = "btn">
	<input type ="button" value="저장하기" width="300px;" height="20px;"> 
	<input type="button" value="취소하기"  width="300px;" height="20px;">
	</div> 
	<!-- 푸터 -->
	<%@include file="Footer.jsp"%>
</body>
</html>