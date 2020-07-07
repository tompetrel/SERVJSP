<%-- 
    Document   : login
    Created on : Jul 7, 2020, 7:14:10 PM
    Author     : TAI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="" method="post">
            Username:  <input type="text" name="username"><br><br>
            Password:  <input type="password" name="password"><br><br>
            <input type="submit" value="Login">
            <input type="reset" value="Reset">
        </form>
        <%
            //scriplet
            if (request.getMethod().equals("POST")) {
                String username = request.getParameter("username");
                String password = request.getParameter("password");
                if (username != null && username.equals("admin") && password != null && password.equals("admin")) {
                    session.setAttribute("username", username);
                    response.sendRedirect("dashboard.jsp");
                } else {
                    out.println("<h3>Invalib username or password</h3>");

                }
            }
        %>
    </body>
</html>
