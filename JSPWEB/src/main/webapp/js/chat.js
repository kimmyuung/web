function chat() {
	var chatName = $("#chatName").val();
	var chatContent = $("#chatContent").val();
	
	$.ajax({
		url : "../chatting" ,
		data : {
			"chatName" : chatName,
			"chatContent" : chatContent
		} ,
		success : function(result) {
			if(result == 1) {
				alert("채팅 성공");
			}
			else {
				alert("채팅 실패");
			}
		}
	});
	$("#chatContent").val = "";
}

$(function() {
	timer = setInterval( function () {
	    $.ajax ({
	        url : "../chatreceive",
	        cache : false,
	        success : function ( result ) {
				
		        var co =  result.split(",");
		        
		        var contents = "";
		        
		        for( var i = 0 ; i<co.length-1 ; i++ ){
					
						contents += 
					 
						'<div class="col-md-2">'+co[i].split("_")[0]+'</div>'+
						'<div class="col-md-6">'+co[i].split("_")[1]+'</div>'+
						'<div class="col-md-4">'+co[i].split("_")[2]+'</div>'
					;
					
				}
				
				$("#contentlist").html( contents );
				$('#contentlist').scrollTop($('#contentlist')[0].scrollHeight);
	        }
	    });
	    }, 50);
});