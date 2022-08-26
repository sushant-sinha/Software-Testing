<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ReStock</title>
<link rel="stylesheet" href="css/Buy.css">
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
				<a href="SellerHomepage.jsp">HOME</a>
				<a href="AddProduct.html">ADD</a>
				<a href="AddInventory.jsp">RESTOCK</a>
				<a href="SellerOrders.jsp">ORDERS</a>
			</div>
		</div>
	</div>
</div>
<div class="active">
	<%@ page import="java.sql.*" %>
	<%@ page import="java.util.*" %>
	<%
		HttpSession httpSession = request.getSession();
    	String guid=(String)httpSession.getAttribute("currentuser");
        List<Map<String,String>> sellerProduct=(List<Map<String,String>>)httpSession.getAttribute("sellerProduct");
    %>
    <div class="filler"></div>
	<div class="filler2"></div>
		<div class="block">
	<%
			for(Map obj: sellerProduct)
			{
				
			%>
			<div class="row">
 				<div class="column">
    				<div class="card">
    					<form action="UpdateInventory.jsp" method="post">
    						<img src="images/pills.png" width=180 height=200>
  							<h1><%=obj.get("prodName") %></h1>
  							<p><b>Manufacturer: </b><%=obj.get("seller") %></p>
							<p><b>Mfg Date: </b><%=obj.get("mdate") %></p>
							<p><b>Exp Date: </b><%=obj.get("edate") %></p>
							<p><b>Stock: </b><%=obj.get("quantity") %></p>
							<p><b>Price: </b><%=obj.get("price") %></p>
							<p><input type="text" name="restock" placeholder="quantity" onkeypress="return event.charCode>= 48 && event.charCode<= 57" required></p>
                                                        <p></p>
  							<button>ReStock</button>
  						</form>
  					</div>
  				</div>
  			<%
  			} 
  			%>
			</div>
		</div>
		
</body>
</html>
