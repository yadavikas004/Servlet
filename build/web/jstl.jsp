<%-- 
    Document   : jstl
    Created on : Oct 3, 2023, 1:00:01 AM
    Author     : Vikas Yadav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Example of Taglib directive</title>
    </head>
    <body>
        <h1>Taglib Directive tutorial:</h1>
        <hr>
        <c:set var="name" value="Software Workshop"></c:set>
        <c:out value="${name}"></c:out>

        <c:if test="${3<2}">
            <h1>This is true block 3>2</h1>
        </c:if>
</body>
</html>
