<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>제품 재고</h3>
제품목록
<select id="categorybox">
</select>
<select id="productbox">
</select>

 	
 	<form id="stockaddform" style="display: none">
 	색상 : <input type="text" id="scolor">
 	사이즈 : <input type="text" id="ssize">
 	수량 : <input type="text" id="saomount">
 	<button type="button" onclick="stockadd()">재고 추가</button>
 	</form>
	
	재고 목록
	<div id="stocklistbox"></div>
	
<script src="/JSPWEB/js/productstock.js" type="text/javascript"></script>
</body>
</html>