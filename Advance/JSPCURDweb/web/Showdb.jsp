<%-- 
    Document   : Showdb
    Created on : Nov 28, 2023, 6:42:57 PM
    Author     : ASUS
--%>


<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show DB</title>
        <style>
            body{
                background:center;
            }
            table{
                width: 700px;
                height: 200px;
                font-size: large;
            }

        </style>
    </head>
    <body>
        <%
            String user = (String) session.getAttribute("View");
        %><h1 align="center">
            <%
                out.print("Welcome " + user);
            %></h1>
    <center>
        <table border="1">
            <th>Name</th>
            <th>Username</th>
            <th>Password</th>
            <th>Action</th>
                <%
                    try {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/curd", "root", "");
                        Statement st = con.createStatement();
                        ResultSet rs = st.executeQuery("Select*from registration");
                        while (rs.next()) {
                %><tr>
                <td><%=rs.getString(1)%></td>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(3)%></td>
                <td><a href="Delete.jsp?id=<%=rs.getString(1)%>">Delete</a></td>
            </tr>
            <%
                    }
                } catch (Exception ex) {
                }
            %>

        </table>
    </center>
</body>
</html>
