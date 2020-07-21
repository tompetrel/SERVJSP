<%-- 
    Document   : addOrEditProduct
    Created on : Jul 21, 2020, 6:33:37 PM
    Author     : TAI
--%>

<%@page import="javax.persistence.Persistence"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@page import="com.softech.asgshop.controllers.ProductEntityJpaController"%>
<%@page import="java.math.BigDecimal"%>
<%@page import="com.softech.asgshop.entities.ProductEntity"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ASGSHOP</title>
    </head>
    <body>
        <h1>Add or Edit Product</h1>
        <hr>
        <form method="post">
            Product ID : <input type="text" name="productId"><br><br>
            Name : <input type="text" name="name"><br><br>
            Quantity : <input type="number" name="quantity"><br><br>
            Price : <input type="number" name="price"><br><br>
            Description : <textarea name="description" cols="30" rows="6"></textarea><br><br>

            <input type="submit" value="Add">
            <a href="listProduct.jsp">List Product</a>
        </form>
        <%
            if (request.getMethod().equals("POST")) {
//                String id = request.getParameter("productId");
                String name = request.getParameter("name");
                String quantity = request.getParameter("quantity");
                String price = request.getParameter("price");
                String description = request.getParameter("description");
                ProductEntity entity = new ProductEntity();
//                entity.setProductId(Integer.parseInt(id));
                entity.setName("name");
                entity.setQuantity(Integer.parseInt(quantity));
                entity.setPrice(BigDecimal.valueOf(Double.parseDouble(price)));
                entity.setDescription(description);

                EntityManagerFactory emf = Persistence.createEntityManagerFactory("com.softech_asgshop_war_1.0-SNAPSHOTPU");
                ProductEntityJpaController controller = new ProductEntityJpaController(emf);
                controller.create(entity);
                out.println("new product successfully");
            }
        %>
    </body>
</html>
