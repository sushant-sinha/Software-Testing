<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PlaceOrder</title>
</head>
<body>
<%@ page import="java.util.*" %>
<%
String pid=request.getParameter("name");
String qr=request.getParameter("orderquantity");
HttpSession httpSession = request.getSession();
String guid=(String)httpSession.getAttribute("currentuser");
List<Map<String,String>> product=(List<Map<String,String>>)httpSession.getAttribute("product");
    List<Map<String,String>> orderList = new ArrayList<Map<String,String>>();
    Map<String, String> obj1 = new HashMap<String, String>();
    obj1.put("receiver", guid);
    obj1.put("medName",pid);
    obj1.put("quantity",qr);
    String p;
    for(Map obj: product){
        if(obj.get("name").equals(pid)){
            p = (String)obj.get("price");
            obj1.put("price",p);
            int a = Integer.parseInt(p)*Integer.parseInt(qr);
            
            obj1.put("amount",Integer.toString(a));
    }
    }
    orderList.add(obj1);
    httpSession.setAttribute("orders", orderList);

    response.sendRedirect("Orders.jsp");
	
%>
</body>
</html>
