<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <title>Buy</title>
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
                        <a href="Homepage.jsp">HOME</a>
                        <a href="Buy.jsp">BUY</a>
                        <a href="Orders.jsp">ORDERS</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="active">
            <%@ page import="java.sql.*" %>
            <%@ page import="javax.sql.*" %>
            <%@ page import="java.util.*" %>
            <%
                HttpSession httpSession = request.getSession();
                String uid = (String) httpSession.getAttribute("currentuser");
            %>

            <div class="filler"></div>

            <%
                List<Map<String,String>> detail = new ArrayList<Map<String,String>>();
                Map<String, String> dObj1 = new HashMap<String, String>();
                Map<String, String> dObj2 = new HashMap<String, String>();
//                med1
                dObj1.put("name","Dolo");
                dObj1.put("manu", "abc");
                dObj1.put("price","30");
                dObj1.put("quantity","3");
                dObj1.put("mfg","23-10-2023");
//                med2
                dObj2.put("name","Aspirin");
                dObj2.put("manu", "abc");
                dObj2.put("price","30");
                dObj2.put("quantity","3");
                dObj2.put("mfg","23-10-2023");
                detail.add(dObj1);
                detail.add(dObj2);
                
                httpSession.setAttribute("product", detail);
            %><div class="filler2"></div>
            <div class="block">
                <%
                    for(Map obj :detail) {
                %>
            <div class="row">
                <div class="column">
                    <div class="card">
                        <img src="images/pills.png" width=180 height=200>
                        <h1><%=obj.get("name")%></h1>
<!--                        <p><b>ID: </b><%=obj.get("pid")%></p>-->
                        <p><b>Manufacturer: </b><%=obj.get("manu")%></p>
                        <p><b>Mfg Date: </b><%=obj.get("mfg")%></p>
                        <p><b>Stock: </b><%=obj.get("quantity")%></p>
                        <p><b>Price: </b><%=obj.get("price")%></p>
                        
                        <form action="PlaceOrder.jsp" method="post">
                            <input type="number" name="orderquantity" placeholder="Enter quantity" max="<%=obj.get("quantity")%>" >
                            <input type="hidden" name="name" value="<%=obj.get("name") %>">
                            <p></p>
                            <input type="submit" value="Buy"></form></div>
                            <%
                        }
                    %>
            </div>
            <%
                
            %>
        </div>
        
    </body>
</html>
