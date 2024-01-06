<%-- 
    Document   : bookManage
    Created on : Dec 9, 2023, 1:34:52 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book management</title>
        <style>
            *{
                margin: 0;
                padding: 0;
            }
            body{
                text-align: center;
                background: url("../image/13.2.jpeg");
                /*background-size: cover;*/
                /*background-position: center;*/
            }
            .Manage{
                display: flex;
                justify-content: right;
                margin: 10px;
                padding: 30px;
            }
            table{
                width: 60em;
            }
            table tr,th ,td{
                padding: 10px;
                border: 3px solid black;
            }
            table th{
                background-color: white;
            }
        </style>
    </head>
    <body>
        <h1>
            <%String str = (String) session.getAttribute("uname");
                out.print("Welcome " + str);
                if (str != null) {
            %>
            <br>BOOK LIST</h1>
        <div class="Manage">
            <table border="1">
                <tr>
                    <th>Book Id</th>
                    <th>Book Name</th>
                    <th>Author Name</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Action</th>
                    <th>Action</th>
                </tr>
                <%        
                    try {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinestore", "root", "");
                        PreparedStatement pst = con.prepareStatement("select * from books");
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
                    <td style="background: linear-gradient(75deg,#ff6666,#ff6666,#ff3333)"><a href=../deletebook?did=<%=Bid%> style="color:black;text-decoration: none;font-size:large;font-weight: bolder;">Delete</a></td>
                    <td style="background: linear-gradient(75deg,#33ccff,lightskyblue,#6666ff)"><a href=updatebook.jsp?id=<%=Bid%> style="color:black;text-decoration: none;font-size:large;font-weight: bolder;">Update</a></td>
                </tr>

                <%
                            }
                        } catch (Exception e) {
                        }
                    } else {
                        response.sendRedirect("Alogin.jsp");
                        out.print("Login First.");
                    }
                %>

            </table>
        </div>
    </body>
</html>
