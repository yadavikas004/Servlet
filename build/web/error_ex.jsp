<%-- 
    Document   : error_ex
    Created on : Oct 3, 2023, 3:23:34 AM
    Author     : Vikas Yadav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sorry ! something went wrong...</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <style>
            *{
                padding: 0px;
                overflow-y: hidden;
                margin: 0px;
            }
        </style>
    </head>
    <body>
        <div class="container p-3 text-center">
            <img src="img/error-laptop.png" class="img-fluid">
            <h1 class="display-3">Sorry ! something went wrong</h1>
            <p><%=exception%></p>
            <a class="btn btn-outline-primary" href="index.html">Home Page</a>
        </div>
    </body>
</html>
