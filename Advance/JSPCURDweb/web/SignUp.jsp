<%-- 
    Document   : SignUp
    Created on : Nov 24, 2023, 6:32:08 PM
    Author     : ASUS
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Sign Up</title>
    </head>
    <body>

    </body>
    <%
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/curd", "root", "");

            String nme = request.getParameter("name");
            String user = request.getParameter("usern");
            String pwd = request.getParameter("pass");
            PreparedStatement pst = con.prepareStatement("insert into registration(Name,Username,Password) values(?,?,?)");
            pst.setString(1, nme);
            pst.setString(2, user);
            pst.setString(3, pwd);
            int x = pst.executeUpdate();
            if (x > 0) {
                JOptionPane.showConfirmDialog(null,"Registered Successfully");

    %>
    <jsp:forward page="index.html"></jsp:forward>

    <%  
} else {
    %>
    <jsp:include page="Signup.html"></jsp:include>
    <%
            }

        } catch (Exception ex) {
out.print(ex.getMessage());
        }
    %>
</html>
