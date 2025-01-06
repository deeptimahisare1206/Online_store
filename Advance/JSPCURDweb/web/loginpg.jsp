<%-- 
    Document   : loginpg
    Created on : Nov 28, 2023, 11:38:59 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login JSP</title>
    </head>
    <body> </body>

    <%
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/curd", "root", "");
            PreparedStatement pst = con.prepareStatement("select * from registration where Username=? and Password=?");
            String user1 = request.getParameter("username");
            String pass1 = request.getParameter("passwd");
            pst.setString(1, user1);
            pst.setString(2, pass1);
            ResultSet rs = pst.executeQuery();
            if (rs.isBeforeFirst()) {
                session.setAttribute("View", user1);

    %>
    <jsp:forward page="Home.jsp"></jsp:forward>
    <%    } else {
//                RequestDispatcher rd1 = request.getRequestDispatcher("index.html");
//                rd1.include(request, response);
        out.print("Username or Password Wrong.. ");
    %>
    <jsp:include page="index.html"></jsp:include>
    <%
            }
        } catch (Exception ex) {
            out.print(ex.getMessage());
        }
    %>
</html>
