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
        <%
            EntityManagerFactory emf = Persistence.createEntityManagerFactory("com.softech_asgshop_war_1.0-SNAPSHOTPU");
            ProductEntityJpaController controller = new ProductEntityJpaController(emf);
            String id = request.getParameter("productId");
            String name = "";
            String quantity = "";
            String price = "";
            String description = "";
            String action = "";
            if (id != null) {
                ProductEntity entity = controller.findProductEntity(Integer.parseInt(id));
                name = entity.getName();
                quantity = entity.getQuantity().toString();
                price = entity.getPrice().toString();
                description = entity.getDescription();
                action = "update";
            }
        %>
        <form method="POST">
            <input type="hidden" name="action" value="<%= action%>">
            Product ID : <input type="text" name="productId" value="<%= id%>"><br><br>
            Name : <input type="text" name="name" value="<%= name%>"><br><br>
            Quantity : <input type="number" name="quantity" value="<%= quantity%>"><br><br>
            Price : <input type="number" name="price"value="<%= price%>"><br><br>
            Description : <textarea name="description" value="<%= description%>" cols="30" rows="6" 
                                    ></textarea><br><br>

            <input type="submit" value="Add">
            <a href="listProduct.jsp">List Product</a>
        </form>
        <%
            if (request.getMethod().equals("POST")) {
                id = request.getParameter("productId");
                name = request.getParameter("name");
                quantity = request.getParameter("quantity");
                price = request.getParameter("price");
                description = request.getParameter("description");
                ProductEntity entity = new ProductEntity();
                entity.setName(name);
                entity.setQuantity(Integer.parseInt(quantity));
                entity.setPrice(BigDecimal.valueOf(Double.parseDouble(price)));
                entity.setDescription(description);

                if (action == null || action.equals("")) {
                    entity.setProductId(null);
                    controller.create(entity);
                    out.println("New product successfully");
                } else {
                    entity.setProductId(Integer.parseInt(id));
                    controller.edit(entity);
                    out.println("Edit product successfully");
                }
            }

        %>
    </body>
</html>>
