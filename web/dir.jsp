<%-- 
    Document   : dir
    Created on : Oct 2, 2023, 8:00:06 PM
    Author     : Vikas Yadav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Random,java.util.ArrayList,java.io.*" %>
<%@page isELIgnored="false" %>
<%@page isErrorPage="true" %>
<%@page session="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
       
    </head>
    <style>
        *{
            margin: 0px;
            padding: 0px;
        }
    </style>
    <body>
         <%@include file="header.jsp" %>
        <h1>Random number :
            <% 
                Random r = new Random();
                int n = r.nextInt(10);
//                out.println(n);
                
            %>  
            <%=n%>
        </h1>
    </body>
</html>
