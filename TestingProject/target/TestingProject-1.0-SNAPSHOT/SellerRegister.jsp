<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <title>Register</title>
    </head>
    <body>
        <%@ page import="java.sql.*" %>
        <%@ page import="javax.sql.*" %>
        <%@ page import="java.lang.*" %>
        <%
            String name = request.getParameter("name");
//		String phno1=request.getParameter("phno");
            String uid = request.getParameter("uid");
//		long phno2=Long.parseLong(phno1);
//		String address1=request.getParameter("address");
            String pass1 = request.getParameter("pass1");
            String pass2 = request.getParameter("pass2");
            if (pass1 != null && pass1 == pass2 && uid != null && name != null) {
                response.sendRedirect("Login.html");
            } else {
                response.sendRedirect("SellerRegisterError2.html");
            }


        %>
    </body>
</html>