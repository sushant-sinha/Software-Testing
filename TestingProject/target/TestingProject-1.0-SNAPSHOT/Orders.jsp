<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Orders</title>
<link rel="stylesheet" href="css/Orders.css">
</head>
<body>
<div class="main">
	<div class="topbar1"></div>
	<div class="topbar2">
		<div class="container1">
			<div class="logout-btn">
				<a href="Logout.jsp">Logout</a>
			</div>
		</div>
	</div>
	<div class="header">
		<div class="container2">
			<div class="navbar">
				<a href="Homepage.jsp">HOME</a>
				<a href="Buy.jsp">BUY</a>
				<a href="Orders.jsp">ORDERS</a>
			</div>
		</div>
	</div>
	</div>
	<div class="active">
	<%@ page import="java.sql.*" %>
	<%@ page import="java.util.*" %>
	<%
	HttpSession httpSession = request.getSession();
    String gid=(String)httpSession.getAttribute("currentuser");
    List<Map<String,String>> orders =(List<Map<String,String>>)httpSession.getAttribute("orders");


    %>
    
    <div class="filler"></div>
   <div class="filler2"></div>
		<table class="tables">
			<tr>
    			<th>Username</th>
    			<th>Product name</th>
    			<th>Price</th>
    			<th>Quantity</th>
                        <th>Amount</th>
  			</tr>
		<% for(Map obj: orders){
        if(obj.get("receiver").equals((gid))){
            
       
			%>
	  		
  			<tr>
    			
    			<td><%=obj.get("receiver") %></td>
                        <td><%=obj.get("medName") %></td>
    			<td><%=obj.get("price") %></td>
                        <td><%=obj.get("quantity") %></td>
    			<td><%=obj.get("amount") %></td>
    			
  			</tr>
  			
		<%
	 }
    }
		%>
		</table>
		</div>
		
</body>
</html>
