<%-- 
    Document   : error
    Created on : Oct 3, 2023, 2:00:21 AM
    Author     : Vikas Yadav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page errorPage="error_page.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Example for error page</title>
    </head>
    <body>
        <h1>Error Page</h1>
        <hr/>
        <c:out value="${34+56}"></c:out>
        <%! 
            int n1=23;
            int n2=10;
            String content = null;
        %>
        <%
            int division=n1/n2;
        %>
        <h1>Division = <%=division%></h1>
        <%--<%= content.length()%>--%>
    </body>
</html>
