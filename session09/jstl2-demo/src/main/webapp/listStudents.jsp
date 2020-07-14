<%-- 
    Document   : listStudents
    Created on : Jul 14, 2020, 6:17:38 PM
    Author     : TAI
--%>
<%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <core:forTokens var="i" items="java,php,c#,html,css,javascript" delims=",">
            <p>Token: ${i}</p>
        </core:forTokens>
        <%
            String[] provinces = {"HaNoi", "DaNang", "HCM"};
            request.setAttribute("provinces", provinces);
        %>

        <table border="1">
            <core:forEach var="it" items="${provinces}">
                <tr>
                    <td>${it}</td>
                </tr>
            </core:forEach>
            <core:forEach var="i" begin="1" end="10">
                <tr>
                    <td>${i}</td>
                </tr>
            </core:forEach>
        </table>
</body>
</html>
