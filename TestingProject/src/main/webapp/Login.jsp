<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <title>Login</title>
    </head>
    <body>
        <%@ page import="java.sql.*" %>
        <%@ page import="javax.sql.*" %>
        <%@ page import="java.util.*" %>
        <%
                String uid1 = request.getParameter("userid");
                String pass1 = request.getParameter("password");
                String u2 = request.getParameter("utype");
                int u = Integer.parseInt(u2);
                HttpSession httpSession = request.getSession();
		httpSession.setAttribute("currentuser", uid1);
                
                Map<String, String> cred = new HashMap<String, String>() {
                    {
                        put("customer", "password");
                        put("seller", "password");
                        
                    }
                };
                if(u ==1){
                    if(cred.containsKey(uid1) && cred.get("customer").equals(pass1)){
                        response.sendRedirect("Homepage.jsp");
                    }else{
                        response.sendRedirect("LoginError1.html");
                    }
                }
                else{
                    if(cred.containsKey(uid1) && cred.get(uid1).equals(pass1)){
                                response.sendRedirect("SellerHomepage.jsp");
                            }else{
                                response.sendRedirect("LoginError2.html");
                            }
            }
                

     
        %>
    </body>
</html>