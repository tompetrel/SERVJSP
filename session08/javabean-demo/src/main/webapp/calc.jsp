<%-- 
    Document   : calc
    Created on : Jul 9, 2020, 7:01:54 PM
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
        <h1>Calculator</h1>
        <form action="" method="post">
            a: <input type="rext" name="num1"> <br><br>
            b: <input type="rext" name="num2"> <br><br>
            <input type="submit" value="Add">
        </form>
        <%
            if (request.getMethod().equals("POST")) {
        %>
        <jsp:useBean id="number" class="com.softech.javabean.model.Number" scope="page"/>
        <jsp:setProperty name="number" property="*"/>
        <h3>Result: <%= number.add()%></h3>

        <%}%>
    </body>
</html>
