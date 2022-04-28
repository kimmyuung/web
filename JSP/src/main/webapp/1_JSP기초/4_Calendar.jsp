<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	// java write space
	// before form type not submit -> don't request
	// -> resolve

	Calendar calendar = Calendar.getInstance(); // Calendar have object => new write x
	int year = 2022;
	int month = 4;
	if (request.getParameter("year") != null && request.getParameter("month") != null) {
		year = Integer.parseInt(request.getParameter("year"));
		month = Integer.parseInt(request.getParameter("month"));
	} else { // no submit = (request == null)

	}
	if (month >= 13) {
		year++;
		month = 1;
	}
	if (month < 1) {
		year--;
		month = 12;
	}
	// 1900 year down ==> can not search
	boolean pass = false; // can search -> true; // can not search -> false;
	if (year < 1900 || year > 2300 ||month < 0 || month > 12) {
		pass = true;
	}
	calendar.set(year, month - 1, 1);
	int sweek = calendar.get(Calendar.DAY_OF_WEEK);
	int eday = calendar.getActualMaximum(Calendar.DAY_OF_MONTH);
	%>

	<!-- html 작성 공간 -->
	<% if(pass)  { %>
	<div>can not search</div>
<% }%>dj 
	<form action="4_Calendar.jsp" method="get">
		<!-- action : upload location (File name) -->
		<input type="text" name="year" placeholder="year"> <input
			type="text" name="month" placeholder="month"> <input
			type="submit" value="search"> <br>
	</form>

	<p>
		Input year :
		<%=year%></p>
	<p>
		Input month :
		<%=month%></p>
	<form action="4_Calendar.jsp" method="get">
		<input type="text" name="year" value="<%=year%>"
			style="display: none;"> <input type="text" name="month"
			value="<%=month - 1%>" style="display: none;"> <input
			type="submit" value="prev">
	</form>

	<form action="4_Calendar.jsp" method="get">
		<input type="text" name="year" value="<%=year%>"
			style="display: none;"> <input type="text" name="month"
			value="<%=month + 1%>" style="display: none;"> <input
			type="submit" value="next">
	</form>
	<table>
		<tr>
			<th>Sunday</th>
			<th>Monday</th>
			<th>Tuesday</th>
			<th>Wednesday</th>
			<th>Thursday</th>
			<th>Friday</th>
			<th>Saturday</th>
		</tr>
		<tr>
			<!-- start day  -->
			<%
			for (int i = 1; i < sweek; i++) {
			%>
			<td></td>
			<%
			}
			%>
			<%
			for (int i = 1; i <= eday; i++) {
			%>
			<td><%=i%></td>
			<%
			if (sweek % 7 == 0) {
			%>
		</tr>
		<tr>
			<%
			}
			%>

			<%
			sweek++;
			%>
			<%
			}
			%>
		</tr>
	</table>
</body>
</html>