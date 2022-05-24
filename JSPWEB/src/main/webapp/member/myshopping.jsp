<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="/JSPWEB/css/myshopping.css" rel="stylesheet">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="../header.jsp"%>
	<div class="container">
		<!-- 박스권 -->
		<div class="row">
			<!-- 가로배치 -->
			<div class="col-md-3">
				<!-- 사이드바 -->
				<%@include file="infosidebar.jsp"%>
			</div>
			<div class="col-md-9">
				<!-- 본문 -->
				<h3>주문현황</h3>
				<div id="orderbox" class="orderbox">
				
				</div>
				
					<div class="orderinfo">
						<!-- 주문번호 -->
						<span> 주문번호</span> <span> 3</span> <span> 주문날짜 </span> <span>2022-05-24</span>
						
					</div>
					<!-- 주문상세 -->
					<div class="orderdetailbox">
						<div class="row">
							<div class="col-sm-2">
								<img alt="" src="" width="100%">
							</div>
							<div class="col-sm-7">
								<!-- 정보 -->
								<div class="row product">
									<div class="pnmae">제품이름1</div>
									<div class="poption">색깔 , 사이즈, 수량</div>
									<!-- 버튼 -->
									<div class="orderbtnbox">
										<button onclick="">배송 조회</button>
										<button onclick="">취소 신청</button>
										<button onclick="">리뷰 작성</button>
									</div>

								</div>
							</div>
							<div class="col-sm-3">
							<span> 배송 상태</span> 
							</div>
						</div>
					</div>
				
			</div>
		</div>
	</div>

	<script src="/JSPWEB/js/myshopping.js" type="text/javascript"></script>
	<%@include file="../footer.jsp"%>

</body>
</html>