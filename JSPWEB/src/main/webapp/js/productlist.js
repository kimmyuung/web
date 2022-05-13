function pnomove() {
	$("#modelinput").val(pno);	
}

function activechange(active) {
	let pno = $("#modelinput").val();
	$.ajax({
		url : "activechange",
		data : {"active" : active, "pno" : pno},
		success : function(re) {
			if(re == 1) {
			 	alert("상태 변경 성공");
			 	// 특정태그 새로 고침
			 	$("#ptable").load(location.href+ ' ptable');
			}
			else {
				alert("상태 변경 실패");
			}
		}
	});
}


var myModal = document.getElementById('myModal')
var myInput = document.getElementById('myInput')

myModal.addEventListener('shown.bs.modal', function () {
  myInput.focus()
})