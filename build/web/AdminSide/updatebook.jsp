<%-- 
    Document   : updatebook
    Created on : Dec 9, 2023, 1:36:25 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update</title>
    </head>
    <body>
        <h1>UPDATE BOOK</h1>
        <%
            String id = request.getParameter("id");

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinestore", "root", "");
                PreparedStatement pst = con.prepareStatement("select * from books where BookId=?");
                pst.setString(1, id);
                ResultSet rs = pst.executeQuery();
                while (rs.next()) {
        %>
        <form action="../bookUpdate" method="post">
            <input type="hidden" name="id" value=<%out.print(id);%>>
            <table border="1">
                <tr>
                    <td>Book Name:</td>
                    <td><input type="text" name="txt1" value=<%= rs.getString(2)%> /></td>
                </tr>
                <tr>
                    <td>Author Name:</td>
                    <td><input type="text" name="txt2" value=<%=rs.getString(3)%> /></td>
                </tr>

                <tr>
                    <td>Price:</td>
                    <td><input type="number" name="txt3" value=<%=rs.getInt(4)%> /></td>
                </tr>
                <tr>
                    <td>Quantity:</td>
                    <td><input type="number" name="txt4" value=<%=rs.getInt(5)%>/></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Update" /></td>
                    <td><input type="reset" value="Reset" /></td>
                </tr>
            </table>
        </form>
        <%
                }
            } catch (Exception e) {
                out.print(e.getMessage());
            }
        %>
    </body>
</html>
