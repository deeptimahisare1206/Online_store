<%-- 
    Document   : UserDetailsA
    Created on : Dec 9, 2023, 10:24:51 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>USER DETAILS</title>
        <style>
            *{
                margin: 0;
                padding: 0;
            }
            body{
                text-align: center;
                background: url("../image/14.jpg");
                background-size: cover;
                background-repeat: no-repeat;
            }
            .udtail{
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
        </style>
    </head>
    <body>
        <h1>
            <%String str = (String) session.getAttribute("uname");
                out.print("Welcome " + str);
            %>
            <br>USER DETAILS</h1>
            <div class="udtail">
        <table border="1">
            <tr>
                <th>Customer Name</th>
                <th>Customer Address</th>
                <th>Mobile Number</th>
                <th>Email</th>
                <th>Username</th>
                <th>Action</th>
            </tr>
            <%
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinestore", "root", "");
                    PreparedStatement pst = con.prepareStatement("select * from ulogin");
                    ResultSet rs = pst.executeQuery();
                    while (rs.next()) {
                        String Cname = rs.getString(1);
                        String Cadd = rs.getString(2);
                        String num = rs.getString(3);
                        String email = rs.getString(4);
                        String user = rs.getString(5);
            %>
            <tr>
                <td><%=Cname%></td>
                <td><%=Cadd%></td>
                <td><%=num%></td>
                <td><%=email%></td>
                <td><%=user%></td>
                <td><a href=../deleteUser?id=<%=Cname%>>Delete</a></td>
               
            </tr>

            <%
                    }
                } catch (Exception e) {
                }
            %>

        </table>
            </div>
    </body>
</html>
