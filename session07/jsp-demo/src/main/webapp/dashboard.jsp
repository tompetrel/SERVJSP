<%-- 
    Document   : dashboard
    Created on : Jul 7, 2020, 8:44:43 PM
    Author     : TAI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<%
    if (session.getAttribute("username")== null) {
            response.sendRedirect("login.jsp");
        }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Welcom to Dashboard!</h1>
    </body>
</html>
