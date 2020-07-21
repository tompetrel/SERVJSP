<%-- 
    Document   : listProduct
    Created on : Jul 21, 2020, 7:18:10 PM
    Author     : TAI
--%>

<%@page import="com.softech.asgshop.entities.ProductEntity"%>
<%@page import="java.util.List"%>
<%@page import="javax.persistence.Persistence"%>
<%@page import="com.softech.asgshop.controllers.ProductEntityJpaController"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>List of Product</h1>
        <a href="addOrEditProduct.jsp">Add new product</a>
        <table border="1px">
            <tr>
                <td>Product Id</td>
                <td>Name</td>
                <td>Quantity</td>
                <td>Price</td>
                <td>Description</td>
                <td>&nbsp;</td>
            </tr>
            <%
                EntityManagerFactory emf = Persistence.createEntityManagerFactory("com.softech_asgshop_war_1.0-SNAPSHOTPU");
                ProductEntityJpaController controller = new ProductEntityJpaController(emf);
                List<ProductEntity> list = controller.findProductEntityEntities();
                for (ProductEntity productEntity : list) {
                    request.setAttribute("entity", productEntity);
            %>
            <tr>
                <td>${entity.productId}</td>
                <td>${entity.name}</td>
                <td>${entity.quantity}</td>
                <td>${entity.price}</td>
                <td>${entity.description}</td>
                <td>View <a href="addOrEditProduct_1.jsp">Edit</a> Delete</td>
            </tr>
            <%}%>

        </table>



    </body>
</html>
