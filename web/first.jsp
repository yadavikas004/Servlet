<%-- 
    Document   : first
    Created on : Oct 2, 2023, 6:55:14 PM
    Author     : Vikas Yadav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>First JSP Page</h1>
        <%!
            int a = 50;
            int b = 10;
            String name = "software workshop";
            
            public int doSum(){
                return a+b;
            }
            
            public String reverse(){
                StringBuffer br = new StringBuffer(name);
                return br.reverse().toString();
            }
        %>
        
        <%
            out.println(a);
            out.println("<br/>");
            out.println(b);
            out.println("<br/>");
            out.println("Sum is "+doSum());
            out.println("<br/>");
            out.println(reverse());
        %>
        
        <h1 style="color: red;">Sum is : <%= doSum() %></h1>
    </body>
</html>
