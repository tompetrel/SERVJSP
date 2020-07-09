<%-- 
    Document   : newBook
    Created on : Jul 9, 2020, 6:34:26 PM
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
        <h1>Use JavaBean</h1>
        <jsp:useBean id="bk" class="com.softech.javabean.model.Book" scope="page"/>

        <jsp:setProperty name="bk" property="isbn" value="1234567890"/>

        <h3>Property ISBN: <jsp:getProperty name="bk" property="isbn"/></h3>

        <%
            bk.setTitle("Java Programing");
            out.print("<h3>" + bk.getTitle() + "</h3>");
        %>
        
    </body>
</html>
