<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- jsp : html과 java를 동시에 작성하는 파
		html : <마크업> / java 태그 -->
		<h3> 선언문 태그 : 메모리 할당[변수 생성, 객체 생성, 메소드 정의 안됨 x, 메소드 실행 X, 함수 선언 O]</h3>
		<h3> 스크립트 태그 : 자바 실행문</h3>
		<h3> 표현식 태그 : 메모리 호출 [기존에 있는 모든 메모리 호출이 가능 (자바의 =system.out.print)]</h3>
		<p> html에서 작성된 코드</p>
		<!-- html 작성 공간 -->
		<%!
		// 자바 언어가 작성할 수 있는 공간 [ 선언부 태그 <%! ]
		int 변수1 = 10; // 변수 가능
		Date date1 = new Date(); // 객체 선언
		// System.out.print("\njsp 파일에서 작성된 코드" + 변수2 + "\n"); // 메소드 실행 불가
		int function1() {return 2;} // 함수 : 인수와 반환이 있는 미리 작성된 코드
		class cla1{ String field1 = "R.I.P";}
		cla1 a1 = new cla1(); // 사용자 정의 클래스 객체 생성 가능
		
		%>
		<% // 자바 언어가 작성할 수 있는 공간 [ 스크립트 태그 ]
		int 변수2 = 20;
		Date date2 = new Date(); // 객체 선언
		System.out.print("\njsp 파일에서 작성된 코드" + 변수2 + "\n");
		System.out.print("jsp 파일에서 작성된 코드" + date2);
		// int function1() {return 2;} 함수 선언은 불가능 
		class cla2{ String field1 = "Rest";}
		cla2 a2 = new cla2();
		%>
		
		<!-- html 구역 -->
		선언의 변수 : <%=변수1 %> <br>
		선언문의 객체 : <%=date1 %> <br>
		선언의 함수 : <%=function1() %> <br> 
		선언문의 사용자정의 객체 : <%=a1.field1 %> <br>
		<br>
		스크립트문의 변수  : <%= 변수2 %> <br>
		스크립트문의 객체 :  <%=date2 %> <br>
		스크립트문의 함수[x] : <br>
		스크립트문의 사용자 정의 객체 : <%=a2.field1 %> <br>
		차이점 : 선언문에서는 함수 사용이 가능하고, 스크립트문에서는 함수 사용이 불가능!
</body>
</html>