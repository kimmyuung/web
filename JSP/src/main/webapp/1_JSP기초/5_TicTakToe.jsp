<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%! 
String[] board = {"[ ]", "[ ]" ,"[ ]", "[ ]", "[ ]", "[ ]", "[ ]", "[ ]" ,"[ ]"};
Random random = new Random();

%>
<%
		
		
		if(request.getParameter("name") != null){
			// 사용자 입력 받기
			String a = request.getParameter("name");
			if(board[Integer.parseInt(a)].equals("[ ]")){
				board[Integer.parseInt(a)] = "[O]";
			}
			if(!board[Integer.parseInt(a)].equals("[ ]")){
				while(true) {
					int 위치 = random.nextInt(9);
					if(board[위치].equals("[ ]")) {
						board[위치] = "[x]";
						break;
					}
				}
			}
		}
			
			//승리 판독;
			String 승리알 = "";
			for(int i = 0; i < 6; i+= 3) {
				if(board[i].equals(board[i+1]) && board[i + 1].equals(board[i + 2])) {
					승리알 = board[i];
				}
			}
			
			for(int i = 0; i < 3; i++) {
				if(board[i].equals(board[i+3]) && board[i + 3].equals(board[i + 6])) {
					승리알 = board[i];
				}
			}
			
			if(board[0].equals(board[4]) && board[4].equals(board[8])) {
				승리알 = board[0];
			}
			if(board[2].equals(board[4]) && board[4].equals(board[6])) {
				승리알 = board[2];
			}
			if(승리알.equals("[O]")) {%>
				<h3>플레이어 승리</h3>
				<%
				for(int i = 0; i < board.length ; i++){
				board[i] = "[ ]";
				}%>	
			<%}else if(승리알.equals("[x]")) {%>
				<h3>컴퓨터 승리</h3>
			<%for(int i = 0; i < board.length ; i++){
					board[i] = "[ ]";
				}
			}
		
			
	%>

<form action="5_TicTakToe.jsp" method="get">
<%for(int i = 0; i < 9; i++) { %>
<input type="submit" name="name" value="<%=i%>">
</form>
<%if(i % 3 ==2) { %>
<br>
<% } %>
<% }%>
<br>




</body>
</html>