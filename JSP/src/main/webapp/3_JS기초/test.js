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
				//.textContent = "해당 태그에 넣을 데이터";
				//.style.color =
		//3-3 : console.log() : 브라우저(f12)내 console창 출력(테스트 목적)
	// 4. 반복문 제어문 
		// for (초기값; 조건식; 증감식) {}
		// if (논리식) {}
	// 5. 함수 선언
		// 1. function name1() {}
		// 2. function name2() {}
		
		
		
//var msg1 = "java var";
	//alert(msg1); console.log(msg1);
//var msg1 = "java var2";
	//alert(msg1);
// var : 중복 가능, 메모리 초기화 가능

//const msg4 = "java const";
	//alert(msg2);
// const : 고정 값

//let msg5 = "js let";
//alert(msg5);

//let msg5 = "js let copy";
 //alert(msg5);
 
//let msg5 = "js let change";
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
	let colorlist = ['red', 'white', 'black'];
	// 배열명 = [값1, 값2, 값3 ~~~];
	
	let tag3 = document.getElementById("spantag3");
	tag3.textContent = colorlist[0];
	tag3.style.color = colorlist[0];
	document.body.style.backgroundColor = "#eeeeee";
	
}

function method2() {
	
	//while
	let i = 1;
	while(i <= 10) {
		let tag4 = document.getElementById("orderlist1");
		tag4.innerHTML += "<li> 반복횟수" +":"+ i + "</li>";
		// += : 대입연산자
		i++;	
	}
}

let j = 1;
let prodctlist = ["갤럭시", "아이폰", "엘지폰"];
for(j; j<prodctlist.length; j++) {
	let tag5 = document.getElementById("orderlist2");
	tag5.innerHTML += "<li> 제품명 : " + prodctlist[j] + "</li>";
	
}

function method3() {
	//let name = "coke";
	let name = document.getElementById("input1").value;
	document.getElementById("orderlist3").innerHTML
	+= "<li>" + name + "</li>";
}
function method4() {
	document.getElementById("orderlist3").innerHTML
	= "";
	
}

function method5(name, sex) {
	
	document.writeln("insert name : " + name );
	document.writeln("selected sex : " + sex);
	
}
			
			