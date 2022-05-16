<%@page import="dao.ProductDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dto.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>제품 리스트 페이지</h3>
	<%
	ArrayList<Product> plist = ProductDao.getproductDao().getproductlist();
	String active = ""; // 제품 상태 표시
	
	%>
	<table id="ptable" class="table table-hover">
		<tr>
			<th width="5%">제품번호</th>
			<th>대표이미지</th>
			<th>제품명</th>
			<th>가격</th>
			<th>할인율</th>
			<th>판매금액</th>
			<th width="100px;">제품상태</th>
			<th width="150px;">카테고리</th>
			<th width="100px;">사이즈</th>
			<th width="100px;">색상</th>
			<th width="100px;">재고수량</th>
			<th width="100px;">수정일</th>
			<th width="100px;">비고(버튼)</th>
		</tr>

		<%
		
		if (plist != null) {
			for (Product t : plist) {
				String cname = ProductDao.getproductDao().getcname(t.getCno());
		%>
		<tr>
			<th id="th<%=t.getPno() %>" width="5%"><%=t.getPno()%></th>
			<th width="150px;"><img width="100%" src="/JSPWEB/admin/productimg/<%=t.getPimg()%>"></th>
			<th width="150px;"><%=t.getPname()%></th>
			<th width="150px;"><%=t.getPprice()%>원</th>
			<th width="150px;"><%=t.getPdiscount()%>%</th>
			<th width="150px;"><%=(int)(t.getPprice() * t.getPdiscount())%>원</th>
			<%
			if (t.getPactive() == 0) {
				active = "준비 중";
			} else if (t.getPactive() == 1) {
				active = "판매 중";
			} else {
				active = "재고 입고 대기";
			} %>
			<th width="150px;"><%=active%></th>

			<th width="150px;"><%= %></th>
			<th width="150px;"><select id="sizebox(<%=t.getPno()%>)"></select> </th>
			<th width="150px;"><select id="color(<%=t.getPno()%>)"></select> </th>
			<th width="150px;"><select id="amount(<%=t.getPno()%>)"></select></th>
			<th width="150px;">수정일</th>
			<th width="150px;">
			<button  >제품 삭제</button>
			<button  >제품 수정</button>
			<button onclick="pnomove(<%=t.getPno() %>)" data-bs-toggle="modal" data-bs-target="#activemodal">상태 변경</button> 
			<button onclick="#" >재고 변경</button>
			</th>
		</tr>
		<%
		}
		}
		%>
	</table>
	
	<!-- 상태변경 부트스트랩 - 모달구역 -->
	<!-- Button trigger modal -->
<button type="button" class="btn" data-bs-toggle="modal" data-bs-target="#exampleModal">
  제품 상태 변경
</button>

<!-- 상태변경 부트스트랩 - 모달구역  -->
	<div class="modal" tabindex="-1" id="activemodal">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">  <!-- 모달 제목 -->
	        <h5 class="modal-title"> 제품의 상태변경 </h5>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">  <!-- 모달 내용  -->
	        <p> 변경할 상태를 선택해주세요. </p>
	        <input type="hidden" id="modelinput">
	      </div>
	      <div class="modal-footer"> <!-- 모달 버튼 -->
	      		<button type="button" class="btn btn-primary" onclick="activechange(0)">준비</button>
	      		<button type="button" class="btn btn-primary" onclick="activechange(1)">판매</button>
	      		<button type="button" class="btn btn-primary" onclick="activechange(2)">품절</button>
	      		<button type="button" class="btn btn-primary" onclick="activechange(3)">중단</button>
	        	<button id="modalclosebtn" type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
	      </div>
	    </div>
	  </div>
	</div>
	
	
	
	
<script src="/JSPWEB/js/productlist.js" type="text/javascript">
</script>
	
</body>
</html>