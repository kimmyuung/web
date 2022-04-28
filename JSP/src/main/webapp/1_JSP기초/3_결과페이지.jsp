<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <!-- 
    Prev page from request
    request : Servlet Class supply in object 
    request.getParameter : Only String type 
    -->
    
    <% 
    // java script = write and run with java --> Servlet class
    String rname = request.getParameter("name");
    String rcolor = request.getParameter("color");
    boolean admincheck = true;
    // if, for ...
    if(!(rname.equals("admin"))) {
    	admincheck = false; }
  	int repeat = Integer.parseInt(request.getParameter("number"));
  			
    %>
    
    <html>
    <body style="background-color: <%=rcolor%>">
    Request from name = <%=rname %> <br>
    Request from color = <%=rcolor %> <br> 
    <!-- if ex -->
    <%if(admincheck == true){ 
    	%>
    <div>Welcome!!</div>
    
    <%
    }
    %>
    <!-- for ex-->
    <% for(int x = 0; x < repeat; x++)  {%>
   
    <% for(int s = 1; s <=repeat-x; s++) { %>
 
    <span >&nbsp;</span>
    
    <% } %>
     <% for(int i = 0; i < (x*2)+1; i++) { %>
    <span style="color: white;"> ★</span>
    
     <% } %>
     <br>
    <% } %>
    </body>
    </html>