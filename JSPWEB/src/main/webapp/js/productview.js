/**
 js 배열 : let 배열명 = [ ] 
 추가 : push() -> 배열내 마지막인덱스 뒤에 추가
 제거 : pop () : -> 배열내 마지막 인덱스에 삭제
 특정인덱스 삭제 : splice(인덱스, 개수) -> 특정 인덱스 삭제
 // js 객체 선언 -> object
 	let 객체명 = {필드명1 : 값, 필드명2 : 값, 필드명3 : 값}
 	// 호출 [. 연산자] // 객체명.필드명
 */
 
 $("#color_select").change(function() {
	
	let color = $("#color_select").val();
	// 제품번호와 칼라가 동일한 경우에 사이즈
	let pno = $("#pno").val();
	$.ajax({
		url : 'getstocksize' , 
		data : {'pno' : pno , 'color' : color},
		success : function(re){
			// JS map 객체 선언
		/*	let map = new Map(); // JS MAP 객체 선언
			map = re; // map 객체에 결과물 넣기*/
			
			let list = re.replace("{", "");
			let itemlist = list.split(",");
			let html ="";
				html +="<option value=''>-[필수]옵션 선택-</option>";
			for(let item of itemlist) {
				let color = item.split("=")[0];
				let amount = item.split("=")[1];
				html += 
					"<option value='"+color+"'>"+color+ " - "+ amount + "</option>";
			}
			
			$("#size_select").html(html);	// id.html( )  : 새로운 데이터 
			// $("#size_select").append('<option>asdasd</option>'); // id.append( ) : 데이터 추가
			
		}
	});
});

let select = [ ]; // js 배열
// 사이즈 목록이 변경되었을 때
$("#size_select").change(function() {
	
	let pname = $("#pname").html();
	let color = $("#color_select").val();
	if(color == "") {alert("색상을 선택해주세요"); return;}
	let size = $("#size_select").val();
	if(size == "") {alert("사이즈를 선택해주세요"); return;}
	let amount = $("#amount").val();
	if($("#amount").val() == null) amount = 1;
	let pprice = $("#price").val();
	let check = color + size; // 옵션 : 식별용
	let 객체 = {
		pname : pname,
		color : color,
		size : size,
		amount : amount,
		pprice : pprice,
		check : check
	}
	for(let i = 0; i < select.length; i++) {
		if(select[i].check == check) {
		// 배열내 i번재 객체의 필드[중복 체크] 호출
			// js 문자열 비교 == 가능 
			alert("이미 선택한 옵션입니다."); return;
		}
	}
	select.push(객체);
	
	selectoption();
	
});

function selectoption () {
	html2 = '<tr><td width="60%">상품명</td><td width="15%">상품수</td><td width="25%">가격</td></tr>';
	for(let i = 0; i < select.length; i++) {
		html2 += 
		'<tr>' +
			'<td>'+select[i].pname+'('+select[i].color+')/'+select[i].size+'</td>'+
			'<td>' +
			'<div class="row g-0">' +
			'<div class="col-md-7">' +	
			'<input id="amount" type="text" value="1" class="form-control amount_input">' +
			'<button class="amount_btn" onclick="aplus()">▲</button>' +		
			'<button class="amount_btn" onclick="aminus()">▼</button>'	+	
			'</div><br>' +	
			'<div class="col-md-1">' +		
			'<button class="cancel_btn" type="button" onclick="pdelete('+i+')" >x</button>' +		
			'</div></div> </td>' +		
			'<td style="font-size: 10px;" onkeyup="commaCheck(this)">' + 
			(select[i].amount*select[i].pprice) + 
			'<br>'+ 
			(select[i].amount*select[i].pprice) * 0.01 +
			'(적)</td></tr>'
		};
	$("#select_table").html( html2 );
}

function pdelete(i) {
	select.splice(i, 1); // i번째 인덱스부터 1개의 인덱스 삭제
	selectoption();
}
