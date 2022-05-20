<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/JSPWEB/css/productcart.css" rel="stylesheet">
</head>
<body>
	<!-- css에서 정의되지 않은 클래스명은 모두 부트스트랩  -->

	<%@include file="../header.jsp"%>


	<div class="container">
		<!-- container(b) : 컨테이너  -->
		<div class="processbox">
			<span> 01 옵션선택</span> <span id="process_active"> 02 장바구니</span> <span>
				03 주문결제</span> <span> 04 주문완료</span>
		</div>


		<table class="table my-5" id="carttable">
			<!-- table(b) : 테이블 // my(b) : 위아래 마진(바깥여백) -->

		</table>

		<div class="col-sm-2">
			<!-- 전체 삭제 버튼 -->
			<button onclick="cancel(-1)" class="form-control">상품 전체 삭제</button>
		</div>

		<div class="paybox">
			<span>총 상품금액 </span> <span id="sumprice"> 20,900원</span> <span>+</span>
			<span>배송비</span> <span id="deliverpay">3,000원</span> <span>=</span>
			<span>총 주문 금액</span> <span id="totalpay">23,000원</span>
			<div class="pointbox">
				<span>주문시 적립예정 포인트</span> <span id="point"> 2,000 </span>
			</div>
		</div>



		<div class="row">
			<div class="col-sm-3 offset-3">
				<a href="/JSPWEB/main.jsp"><button class="form-control py-4">계속 쇼핑하기</button></a>
			</div>
			<div class="col-sm-3">
				<a href="/JSPWEB/product/orderpay.jsp"><button style="background-color: blue; color: white;" class="form-control py-4">구매하기</button></a>
			</div>
		</div>
	</div>



	<script type="text/javascript" src="/JSPWEB/js/productcart.js"></script>
	<%@include file="../footer.jsp"%>





</body>
</html>