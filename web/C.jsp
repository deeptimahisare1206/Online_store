<%-- 
    Document   : C
    Created on : Oct 7, 2024, 2:41:16 PM
    Author     : deept
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Your Cart</title>
        <%@include file="usernav.html" %>

        <style>
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }
            body {
                background-color: #312e2c;
            }

            h2 {
                color: #d49831;
                text-align: center;
                font-size: 3rem;
            }

            table {
                width: 100%;
                border-collapse: collapse;
                margin: 2rem 0;
                background-color: #fff;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            }

            th, td {
                padding: 12px;
                text-align: left;
                border-bottom: 1px solid #ddd;
            }

            th {
                background-color: #d49831;
            }

            tr:hover {
                background-color: #f1f1f1;
            }

            .container {
                max-width: 90%;
                margin: auto;
            }
        </style>
    </head>
    <body>
        <div class="container">

            <h2>Your Cart <br>
                <% String str2 = (String) session.getAttribute("userid");
                %>
            </h2>
            <table>
                <tr>
                    <th>Order Id</th>
                    <th>Book Title</th>
                    <th>Author</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Order Date</th>
                    <th>Total</th>
                    <th>Delete</th>
                </tr>
                <%
                    Connection conn = null;
                    PreparedStatement stmt = null;
                    ResultSet rs = null;
                    double total = 0;

                    try {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_store", "root", "root");
                        String sql = "SELECT c.cart_id, c.BookId, c.Order_date, c.quantity, b.BookName, b.AuthorName, b.Price "
                                + "FROM testcart c JOIN books b ON c.BookId = b.BookId WHERE c.User_id = ?";
                        stmt = conn.prepareStatement(sql);
                        stmt.setString(1, str2);
                        rs = stmt.executeQuery();
                        if (!rs.isBeforeFirst()) {
                            out.println("<tr><td colspan='7'>No items in the cart.</td></tr>");
                        }

                        while (rs.next()) {
                            int cid = rs.getInt("cart_id");
                            String title = rs.getString("BookName");
                            String author = rs.getString("AuthorName");
                            double price = rs.getDouble("Price");
                            int quantity = rs.getInt("quantity");
                            String orderDate = rs.getString("Order_date");
                            double itemTotal = price * quantity;
                            total += itemTotal;
                %>
                <tr>
                    <td><%= cid%></td>
                    <td><%= title%></td>
                    <td><%= author%></td>
                    <td>$<%= price%></td>
                    <td><%= quantity%></td>
                    <td><%= orderDate%></td>
                    <td>$<%= itemTotal%></td>
                    <td><a href=./deleteProduct?cid=<%=cid%>>Delete</a></td>
                </tr>
                <%
                    }
                %>
                <tr>

                    <td><h1>Total-</h1></td>
                    <td><h1>$<%= total%></h1></td>
                </tr>
                <%
                    } catch (Exception e) {
                        out.println("Error: " + e.getMessage());
                    }
                    rs.close();
                    stmt.close();
                    conn.close();
                %>
            </table>
        </div>
    </body>
</html>