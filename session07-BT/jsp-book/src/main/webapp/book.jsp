<%-- 
    Document   : book
    Created on : Jul 9, 2020, 5:53:56 PM
    Author     : TAI
--%>

<%@page import="com.softech.model.Books"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book</title>
    </head>
    <body>
        <h1>BOOK</h1>
        <form action="" method="post">
            BookID: <input type="number" name="bookID"><br><br>
            Title:  <input type="text" name="title"><br><br>
            Price:  <input type="number" name="price"><br><br>
            Quantity:  <input type="number" name="quantity"><br><br>

            <input type="submit" name="action" value="Insert">
            <input type="submit" name="action" value="Update">

        </form>

        <%
            if (request.getMethod().equals("POST")) {
                int bookID = Integer.parseInt(request.getParameter("bookID"));
                String title = request.getParameter("title");
                double price = Double.parseDouble(request.getParameter("price"));
                int quantity = Integer.parseInt(request.getParameter("quantity"));
                if (request.getParameter("title") != null && request.getParameter("price") != null && request.getParameter("quantity") != null) {
                    String action = request.getParameter("action");
                    if (action.equals("Insert")) {
                        newBook(title, price, quantity);
                        out.print("<h2> Insert successfully </h2>");
                        return;
                    }
                    if (action.equals("Update")) {
                        Books books = new Books(bookID, title, price, quantity);
                        updateBook(books);
                        out.print("<h2> Update successfully </h2>");
                        return;
                    }

                }
            }
        %>
        <%!
            public static Connection openConnection() throws Exception {
                String connectionUrl = "jdbc:sqlserver://localhost:1433;databaseName=DemoDB;user=sa;password=123456";
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                Connection con = DriverManager.getConnection(connectionUrl);
                return con;
            }

            public static boolean newBook(String title, double price, int quantity) throws Exception {
                String sql = "insert into Books(Title,Price,Quantity) values (?,?,?)";
                Connection con = openConnection();
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setString(1, title);
                ps.setDouble(2, price);
                ps.setInt(3, quantity);

                return ps.executeUpdate() > 0;
            }

            public static boolean updateBook(Books books) throws Exception {
                String sql = "update Books set Title = ?,Price = ?,Quantity = ? where BookID = ?";
                Connection con = openConnection();
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setString(1, books.getTitle());
                ps.setDouble(2, books.getPrice());
                ps.setInt(3, books.getQuantity());
                ps.setInt(4, books.getBookID());

                return ps.executeUpdate() > 0;
            }

        %>

    </body>
</html>
