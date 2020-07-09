<%-- 
    Document   : core-tags
    Created on : Jul 9, 2020, 8:47:08 PM
    Author     : TAI
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:set var="num" value="2" scope="page"/>
        <c:if test="${num%2==0}">
            even
        </c:if>
        <c:if test="${num%2!=0}">
            odd
        </c:if>
            

    </body>
</html>
