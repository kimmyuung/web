<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
li{list-style-type: none;}
a{text-decoration: none; color: maroon;}
#header{height: 150px;}
#box{width: 1100px; margin: 0 auto;}
#logo{float: left; margin: 50px 0px 0px 50px;}
#menus{float : right; text-align: right;}
#menus li{display: inline;}
@font-face { /*�� ��Ʈ*/
    font-family: 'CookieRun-Regular';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/CookieRun-Regular.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
#main_menu{
font-family: "CookieRun-Regular";
font-size: 25px; margin: 50px 0 0 100px;
}
#top_menu {margin: 30px 0px;}
#top_menu li {margin-left: 10px;}
#main_menu li {
font-family: "CookieRun-Regular";
font-size: 25px; margin: 50px 0 0 100px;
}
</style>
</head>
<body>
	<div id = "header">
		<!-- ��� ��ü -->
		<div id = "box">
			<!-- ��� �ڽ��� -->
			<div id = "logo"> <!-- �ΰ� -->
				<img alt="" src="logo.png">
			</div>
			<div id = "menus">
				<!-- �޴� -->
				<ul id = "top_menu"> <!-- ��� �޴� -->
				<li>������(jykim)�� | </li> 
				<li> <a href="#">�α׾ƿ�</a> | </li>
				<li> <a href="#">��������</a> | </li>
				</ul>
				<ul id = "main_menu"> <!-- �ϴ� �޴� -->
				<li><a href="index.jsp">Home</a></li>
				<li><a href="#">�⼮��</a></li>
				<li><a href="gallery.jsp">��ǰ������</a></li>
				<li><a href="#">�Խ���</a></li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>