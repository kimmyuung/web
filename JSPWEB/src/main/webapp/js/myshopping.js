// $ : jquery 문법

// 현재 page 로드 되는 메소드 
// $( function(){}); 

let parentlist; 

$( function(){
	
	$.ajax({
		url : "../product/getorder" , 
		success : function( result ){
			parentlist = result;  
			console.log( parentlist );
			view();
		}
	});
}); 
let viewcount = 2; // 처음에 주문갯수 출력하는 변수
// 브라우저내 스크롤 사용 이벤트
$(window).scroll( function(){ 
	// 만약에 스크롤이 바닥에 닿았을때 계산 
		// $(window).scroll : 브라우저(인터넷창) 스크롤
		// $(window).scrollTop() : 스크롤막대의 상단 위치
		// $(document).height() : 현재 보고 있는 문서내 높이 
		// $(window).height() : 현재 보고 있는 화면 높이 
	if( $(window).scrollTop() >= $(document).height() - $(window).height()  ){
		// 현재 스크롤의 상단 위치  ==  현재 보고 있는 문서내 높이   -  현재 보고 있는 화면 높이
		
		viewcount++; // 스크롤 바닥에 닿을때 마다 출력하는 주문개수를 증가
		view(); // 새로고침
	}
});


function view(){
	
	let html= "";
	
		for( let i = 0 ; i<parentlist.length ; i++ ){	// count 개수만큼 제품 수 출력
		if( i == viewcount ) break; // 만약에 i가 화면에 표시할 주문수와 동일하면 출력 금지 
		html += 
			'<div class="row"> '+
				'<div class="col-sm-3">'+  /* 주문 정보 출력 구역 */
					'<span> '+parentlist[i][0]["orderno"]+' </span>'+
					'<span> '+parentlist[i][0]["orderdate"]+' </span>'+
				'</div>'+
				'<div class="col-sm-9"> '; 
				
		for( let j = 0 ; j<parentlist[i].length ; j++ ){ /* 주문상세 출력 구역 */ 
			let childlist = parentlist[i];	// 상위리스트에 하나씩 하위리스트 꺼내기
			html += 
				'<div class="row"> '+
						'<div class="col-sm-8">'+
							'<span> <img width="100%" alt="" src="/JSPWEB/admin/productimg/'+childlist[i]["pimg"]+'"></span>'+
							'<span> '+childlist[j]["pname"]+' </span>'+
							'<span> '+childlist[j]["scolor"]+'/'+childlist[j]["ssize"]+'</span>'+
						'</div>'+
						'<div class="col-sm-4">'+
							'<button> 배송조회 </button>'+
							'<button> 교환 , 반품 신청 , 취소 신청 </button>'+
							'<button> 리뷰 작성하기 </button>'+
						'</div>'+
					'</div>';
		}			
			html += 
				'</div>'+ // row와 col-sm-9 div 닫기 위해 사용
			'</div>';
	}
	$("#orderbox").html(html);

}