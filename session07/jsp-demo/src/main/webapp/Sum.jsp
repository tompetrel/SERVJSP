<%-- 
    Document   : Sum
    Created on : Jul 7, 2020, 8:13:14 PM
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
            a : <input type="number" name="a"><br>
            b : <input type="number" name="b"><br>
            <input type="submit" value="ADD">

        </form>
        <%
            if (request.getMethod().equals("POST")) {
                int a = Integer.parseInt(request.getParameter("a"));
                int b = Integer.parseInt(request.getParameter("b"));
                if (request.getParameter("a") != null && request.getParameter("b") != null) {
                    out.print("<h3>Result: a + b = " + sum(a, b) + "</h3>");
                } else {
                    out.print("<h3>Empty</h3>");
                }
            }

        %>
        <%!
            int sum(int a, int b) {
                return a + b;
            }
        %>
    </body>
</html>
