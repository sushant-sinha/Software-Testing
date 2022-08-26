<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<link rel="stylesheet" href="css/Homepage.css">
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
	
</div>
<div class="active">
	<%
	HttpSession httpSession = request.getSession();
    String guid=(String)httpSession.getAttribute("currentuser");
    %>
    
    <div class="filler"></div>
    <h2>Welcome <%=guid%></h2>
    
    <div>
        <div>
            <h1>BUY</h1>
            <p>Buy medicines</p>
            <button><a href="Buy.jsp">Browse more</a></button>
        </div>
        <div>
            <h1>ORDER</h1>
            <p>View previous order</p>
            <button><a href="Orders.jsp">View</a></button>
        </div>
    </div>
	
</div>
</body>
</html>
