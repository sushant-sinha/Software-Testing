<%@page import="java.util.regex.Pattern"%>
<%@page import="java.util.regex.Matcher"%>
<%@page import="java.text.*"%>
<%@page import="java.lang.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AddProduct JSP</title>
</head>
<body>
	
	<%@ page import="java.util.*" %>
	<%@ page import="java.lang.Object.*" %>
	<%
    //Date Validation Function
    HttpSession httpSession = request.getSession();
		String guid=(String)httpSession.getAttribute("currentuser");
    String prname=request.getParameter("prname");
		String mfname=request.getParameter("mfname");
		String mdate=request.getParameter("mdate");
		String edate=request.getParameter("edate");
		String price1=request.getParameter("price");
		String quantity1=request.getParameter("quantity");
                //int price=Integer.parseInt(price1);
     	//int quantity=Integer.parseInt(quantity1);
    boolean flag=true;
    
    String s[]=mdate.split("-");
    
    // validating for month
    
    
    
    if(!(Integer.parseInt(s[1])>=1 && Integer.parseInt(s[1])<=12))
    flag=false;
    
    // validating date
    
    else if(s[1].equals("01") || s[1].equals("03") || s[1].equals("05") || s[1].equals("07") || s[1].equals("08") || s[1].equals("10") || s[1].equals("12"))
    if(!(Integer.parseInt(s[0])>=1 && Integer.parseInt(s[0])<=31))
    flag=false;
    
    else if(s[1].equals("04") || s[1].equals("06") || s[1].equals("09") || s[1].equals("11"))
    if(!(Integer.parseInt(s[0])>=1 && Integer.parseInt(s[0])<=30))
    flag=false;
    
    else if(s[1].equals("02"))
    if(!(Integer.parseInt(s[1])>=1 && Integer.parseInt(s[1])<=28))
    flag=false;
    
    else
    flag=false;
    
    String e[]=edate.split("-");
    
    // validating for month
    
    if(!(Integer.parseInt(e[1])>=1 && Integer.parseInt(e[1])<=12))
    flag=false;
    
    // validating date
    
    else if(e[1].equals("01") || e[1].equals("03") || e[1].equals("05") || e[1].equals("07") || e[1].equals("08") || e[1].equals("10") || e[1].equals("12"))
    if(!(Integer.parseInt(e[0])>=1 && Integer.parseInt(e[0])<=31))
    flag=false;
    
    else if(e[1].equals("04") || e[1].equals("06") || e[1].equals("09") || e[1].equals("11"))
    if(!(Integer.parseInt(e[0])>=1 && Integer.parseInt(e[0])<=30))
    flag=false;
    
    else if(e[1].equals("02"))
    if(!(Integer.parseInt(e[1])>=1 && Integer.parseInt(e[1])<=28))
    flag=false;
    
    else
    flag=false;
    

     int x=(Integer.parseInt(s[2])*10000)+(Integer.parseInt(s[1])*100)+(Integer.parseInt(s[0]));
     int y=(Integer.parseInt(e[2])*10000)+(Integer.parseInt(e[1])*100)+(Integer.parseInt(e[0]));
     
     if(x>=y)
     flag=false;
      

    //Product Name Validation
    
    
    for(int i=0;i < prname.length();i++)
        {
            char chr=prname.charAt(i);
            if(!Character.isLetterOrDigit(chr))
            {
                flag=flag && false;
                break;
            }
        }
    

    //Manufacturer Name Validation
    
 
    for(int i=0;i < mfname.length();i++)
        {
            char chr=mfname.charAt(i);
            if(!Character.isLetter(chr))
            {
                flag=flag && false;
                break;
            }
        }
    
        
    

    // Price Validation
    
    if(Integer.parseInt(price1)<0)
    flag=false;
    
    // Quantity Validation
    
    if(Integer.parseInt(quantity1)<=0)
    flag=false;
		
    	
         
        //Validation of dates     


                List<Map<String,String>> sellerProduct = new ArrayList<Map<String,String>>();
                Map<String,String> obj = new HashMap<String,String>();
                obj.put("seller", guid);
                obj.put("prodName", prname);
                obj.put("mdate", mdate);
                obj.put("edate", edate);
                obj.put("price", price1);
                obj.put("quantity", quantity1);
                sellerProduct.add(obj);
                httpSession.setAttribute("sellerProduct",sellerProduct);
                if(flag)
                {
                    response.sendRedirect("AddInventory.jsp");
                }
                else
                {
                    response.sendRedirect("Homepage.jsp");
                }
                

		
%>
</body>
</html>