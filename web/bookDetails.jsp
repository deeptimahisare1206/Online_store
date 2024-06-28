<%-- 
    Document   : bookDetails
    Created on : Dec 8, 2023, 2:31:03 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Books Show</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            *{
                margin: 0;
                padding: 0;
            }
            body{
                text-align: center;
                background: linear-gradient(75deg,#ffcccc,#ff9999,#ff6666);
            }
            .bookdt{
                display: flex;
                justify-content: center;
                margin: 10px;
                padding: 20px;
            }
            table{
                width: 70em;
            }
            table tr,th ,td{
                padding: 10px;
                border: 3px solid black;

            }
            img{
                width: 300px;
                height: 150px;
            }
            .btn{
                width: 50px;
                height: 50px;
                border-radius: 50%;
                position: absolute;
                right: 10%;
                
            }
        </style>
    </head>
    <body>
        <button class="btn" ><a href="userHomepage.jsp"><i class="fa fa-home" style="font-size:30px"></i></a></button>
        <h1>
            
            <%

                String str = (String) session.getAttribute("uname");
                
                if (str != null) {
                out.print("Welcome " + str);
                
            %> 
            <br>BOOKS LIST</h1>
        <div class="bookdt">
            <h1>
                <a href="Order.jsp"><img src="image/order.png" alt="alt"/></a>
            CART =<%= (Integer)session.getAttribute("count") %>                   
            </h1>
            <table border="1">
                <tr>
                    <th>Book Id</th>
                    <th>Book Name</th>
                    <th>Author Name</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Action</th>
                </tr>
                <%
                    try {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_store", "root", "root");
                        PreparedStatement pst = con.prepareStatement("select * from Books");
                        ResultSet rs = pst.executeQuery();
                        while (rs.next()) {
                            String Bid = rs.getString(1);
                            String Bname = rs.getString(2);
                            String Aname = rs.getString(3);
                            String mrp = rs.getString(4);
                            String qty = rs.getString(5);
                %>
                <tr>
                    <td><%=Bid%></td>
                    <td><%=Bname%></td>
                    <td><%=Aname%></td>
                    <td><%=mrp%></td>
                    <td><%=qty%></td>
                    <td><a href=addCart.jsp?id=<%=Bid%>>Add to Cart</a></td>
                </tr>

                <%
                        }
                    } catch (Exception e) {
                        out.print(e.getMessage());
                    }
}
                %>

            </table>
        </div>
    </body>
</html>
