

$( function(){  
	$.ajax({
		url : 'getcart' ,
		type : 'post',
		success : function( json ){
			jsonarray = json;
			tableview();
			// js : json 객체내 key값 이용한 value 추출 
				// 객체명[key] -> value 호출 
				// jsonarray[i][key] -> json배열내 i번째 객체의 key 값 호출 
			}
	});
});
let jsonarray;
let sumprice = 0;
let deliverpay = 0;
let totalpay = 0;
let point = 0;

function tableview() {
	
	let tr = '<tr> <!-- 헤더 -->'+
'					<th width="60%">상품정보</th> 	<!-- width속성 : 가로길이  -->'+
'					<th width="20%">수량</th> 		'+
'					<th width="20%">가격</th> '+
'				</tr>';

			for( let i = 0 ; i<jsonarray.length; i++ ){
				
				sumprice += jsonarray[i]["totalprice"];
				
				
				tr += 
				'<tr>'+
'					<td> <!--  상품정보 열 -->'+
'						<div class="row"> <!-- row(b) : 하위 태그를 가로배치   -->'+
'							<div class="col-sm-2"> <!-- col-sm-2(b) : 12그리드 중 2그리드 사용 -->'+
'								<img alt="" src="/JSPWEB/admin/productimg/'+jsonarray[i]["pimg"]+'" width="70%"> '+
'							</div>'+
'							<div class="col-sm-10">'+
'								<div class="pnamebox"> '+jsonarray[i]["pname"]+' </div>'+
'								<div class="optionbox">'+jsonarray[i]["scolor"]+' / '+jsonarray[i]["ssize"]+'</div>'+
'							</div>'+
'						</div>   '+
'						<br>'+
'					</td> '+
'					<td class="align-middle"> <!-- 수량 --> <!-- align-middle(b) : 수직 중앙배치 -->'+
'						<div class="row g-0"> <!-- g-0(b) : 그리드 간 여백 제거 -->'+
'							'+
'							<div class="col-sm-5 offset-3">'+
'								<!-- form-control(b) : 입력상자 형식 꾸미기 -->'+
'								<input readonly id="" value="'+jsonarray[i]["totalamount"]+'" type="text" class="form-control" style="background-color: white;">'+
'							</div>'+
'							'+
'							<div class="col-sm-2">'+
'								<button onclick="amountincre('+i+')" class="amount_btn"> ▲ </button>'+
'								<button onclick="amountdecre('+i+')" class="amount_btn"> ▼ </button>'+
'							</div>'+
'						</div>'+
'					</td>'+
'					<td class="align-middle"> <!--  가격 -->'+
'						<div class="row g-0">'+
'							<div class="col-md-8 pricebox">'+jsonarray[i]["totalprice"].toLocaleString()+'원</div>'+
'							<div class="col-md-4 deletebox" onclick="cancel('+i+')"><button>X</button></div>'+
'						</div>'+
'					</td>'+
'				</tr>';

			}
			
			if(sumprice >= 70000) {deliverpay = 0;}
			else {deliverpay = 2500;}
			
			// 만약에 장바구니 상품이 없으면
			if(jsonarray.length == 0) {
				tr += 
				'<td style="text-align: center" olspan = "3"> 상품이 없습니다. </td>'
				deliverpay = 0;
				totalpay = 0;
				sumprice = 0;
				point = 0;
			}
			
			// 만약에 총가격이 7만원 이상이면 배송미무료
			
			
			// 총주문금액 = 총가격 + 배송비
			totalpay = sumprice + deliverpay;
			
			// 포인트
			point = parseInt(sumprice * 0.01);
			// 출력
			
			$("#sumprice").html( sumprice.toLocaleString()+'원' );
			$("#deliverpay").html( deliverpay.toLocaleString()+'원' );
			$("#totalpay").html( totalpay.toLocaleString()+'원' );
			$("#point").html( point.toLocaleString() );
			$("#carttable").html( tr );
		
}

function cancel(i) {
	if(i == -1) {
		if(confirm('전체 삭제하시겠습니까?') ) {
			// confirm("내용") : 확인/취소 버튼 알림
			// 확인 -> true , 취소 -> false
			jsonarray.splice(0, jsonarray.length);
			// 0번 인덱스부터 마지막인덱스까지 삭제
			tableview();
			
		}
		return;
	}
	
	jsonarray.splice(i, 1);
	tableview();
}

// 수량 증가
function amountincre(i) {
	alert(i);
	$.ajax({
		url : 'getamount',
		data : {"pno" : jsonarray[i]['pno'], 
		"color" : jsonarray[i]['scolor'], 
		"size" : jsonarray[i]['ssize'] },
		success : function(max){
			if(jsonarray[i]['totalamount'] >= max) {
				alert("재고가 부족합니다"); return;
			}
			let price = parseInt( (jsonarray[i]["totalprice"] / jsonarray[i]["totalamount"]) );
			jsonarray[i]["totalamount"]++;
			jsonarray[i]["totalprice"] = (price * jsonarray[i]["totalamount"]);
			tableview();
		}
		 
	});
	
	
}
// 수량 감소

function amountdecre(i) {
	if(jsonarray[i]["totalamount"] == 1) {
		alert("최소 수량입니다."); return;
	}
			let price = parseInt( (jsonarray[i]["totalprice"] / jsonarray[i]["totalamount"]) );
			jsonarray[i]["totalamount"]--;
			jsonarray[i]["totalprice"] = (price * jsonarray[i]["totalamount"]);
	tableview();
}


function cartupdate() {
	
}

