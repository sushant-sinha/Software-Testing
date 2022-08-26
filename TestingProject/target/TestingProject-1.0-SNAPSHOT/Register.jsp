<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <title>Insert title here</title>
    </head>
    <body>
        <%@ page import="java.sql.*" %>
        <%@ page import="javax.sql.*" %>
        <%
            String fname1 = request.getParameter("fname");
            String lname1 = request.getParameter("lname");
//		String email1=request.getParameter("email");
//		String phno1=request.getParameter("phno");
            String uid1 = request.getParameter("uid");
//		long phno2=Long.parseLong(phno1);
//		String address1=request.getParameter("address");
            String pass1 = request.getParameter("pass1");
            String pass2 = request.getParameter("pass2");
            if(pass1!=null && pass1 == pass2 && uid1!= null && fname1!=null && lname1!=null)
            response.sendRedirect("Login.html");
            else
            response.sendRedirect("RegisterError2.html");

        %>
    </body>
</html>