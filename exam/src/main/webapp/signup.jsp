<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="signup.css">
</head>
<body>
<div class="wrapper">
        <div class="title"><h1 style="font-size: 21px;">회원가입</h1></div>
        <div class="email">
            <input id="email" type="text" placeholder="이메일을 입력해 주세요.">
            <div id="emailError" class="error"></div>
        </div>
        <div class="name">
            <input id="name"  type="text" placeholder="이름을 입력해 주세요.">
            <div id="nameError" class="error"></div>
        </div>
        <div class="password">
            <input id="password" type="password" placeholder="비밀번호를 입력해 주세요.">
            <div id="passwordError" class="error"></div>
        </div>
        <div class="passwordCheck">
            <input id="passwordCheck" type="password" placeholder="비밀번호를 다시 입력해 주세요.">
            <div id="passwordCheckError" class="error"></div>
        </div>
        <div class="phone">
            <input id="phone1" type="text" size="1" maxlength="3" oninput="changePhone1()"> -
            <input id="phone2" type="text" size="3" maxlength="4" oninput="changePhone2()"> -
            <input id="phone3" type="text" size="3" maxlength="4" oninput="changePhone3()">

        </div>
        <div class="auth">
            <div id="certificationNumber">000000</div>
            <button disabled id="sendMessage" onclick="getToken()">인증번호 전송</button>
        </div>

        <div class="timer">
            <div id="timeLimit">03:00</div>
            <button disabled id="completion" onclick="checkCompletion()">인증확인</button>
        </div>
        <div class="area">
            <select id="area">
                <option selected disabled>지역을 선택하세요.</option>
                <option>서울</option>
                <option>인천</option>
                <option>경기</option>
            </select>
            <div id="areaError" class="error"></div>
        </div>
        <div class="gender">
            <input id="gender_man" type="radio" name="gender">남성  
            <input id="gender_woman" type="radio" name="gender">여성
            <div id="genderError" class="error"></div>
        </div>
        <div class="line">
            <hr>
        </div>
        <div class="signUp">
            <button id="signUpButton" disabled onclick="signUpCheck()">가입하기</button>
        </div>
    </div>
    <script src="signup.js" type="text/javascript"></script>
</body>
</html>