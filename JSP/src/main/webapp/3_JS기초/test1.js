//js (사용목적 : 유효성 검사, 비동기 통신 등)
	// 1. 주석 : 자바 동일
	// 2. 변수선언
		//2-1 : var : 변수명 중복 가능, 메모리 초기화 O
		//2-2 : const : 변수명 중복 X,메모리 초기화 X
		//2-3 : let : 변수명 중복 X, 메모리 초기화 O
	// 3. 내장객체/메소드
		//3-1 : alert("알림 내용") : 알림창 메소드
		//3-2 : document : 문서 객체(현 html 객체)
			// 1. .write("html 내용") : html 쓰기
			// 2. .getElementById("html 해당id명"); : 해당 태그 가져오기
				//.innerHTML("해당 태그에 넣을 내용") : 해당 태그에 데이터 삽입
		//3-3 : console.log() : 브라우저(f12)내 console창 출력(테스트 목적)
	// 4. 반복문 제어문 
		// for (초기값; 조건식; 증감식) {}
		// if (논리식) {}
var msg1 = "java var";
	//alert(msg1); console.log(msg1);
var msg1 = "java var2";
	//alert(msg1);
// var : 중복 가능, 메모리 초기화 가능

const msg4 = "java const";
	//alert(msg2);
// const : 고정 값

let msg5 = "js let";
//alert(msg5);

let msg5 = "js let copy";
 //alert(msg5);
 
let msg5 = "js let change";
	//alert(msg5);
	
let tag1 = document.getElementById("spantag1");
tag1.innerHTML = "written by js";

let price = 500;
let save = 10;
let sum = price + save;
let tag2 = document.getElementById("spantag2");
tag2.innerHTML = sum;

// js : function 함수이름(인수) {실행문}
// = java : void methodname() {}
function method1() {
	
	
	
}
			