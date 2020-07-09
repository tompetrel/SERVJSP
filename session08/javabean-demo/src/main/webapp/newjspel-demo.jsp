<%-- 
    Document   : newjspel-demo
    Created on : Jul 9, 2020, 8:08:08 PM
    Author     : TAI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h4>4+5 = ${4+5}</h4>
        <h4>4-5 = ${4-5}</h4>
        <h4>4*5 = ${4*5}</h4>
        <h4>4/5 = ${4/5}</h4>
        <h4>4%5 = ${4 mod 5}</h4>
        <h4>${empty param.name}</h4>
        <h4> Name: ${param.name}</h4>
        

        <jsp:useBean id="book" class="com.softech.javabean.model.Book" scope="request"/>
        <jsp:setProperty name="book" property="title" value="Expresstion Language"/>
        <h4>Title: ${book.title}</h4>

    </body>
</html>
