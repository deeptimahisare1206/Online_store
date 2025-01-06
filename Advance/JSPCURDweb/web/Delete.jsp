<%-- 
    Document   : Delete
    Created on : Nov 29, 2023, 10:43:49 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Pageee</title>
    </head>
    <body>
        <h1>Item Deleted..</h1>
        <%
            String client = request.getParameter("id");
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/curd", "root", "");
                PreparedStatement pst = con.prepareStatement("delete from registration where Name=?");
                pst.setString(1, client);
                int i = pst.executeUpdate();
                if (i > 0) {
        %>
        <jsp:forward page="Showdb.jsp"></jsp:forward>
        <%
        } else {
out.print("Nahi hua delete😁😁");
        %>
        <jsp:include page="Home.jsp"></jsp:include>
        <%
        }
    } catch (Exception ex) {
    }
        %>
    </body>
</html>
