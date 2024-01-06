<%-- 
    Document   : addCart
    Created on : Dec 8, 2023, 2:31:13 PM
    Author     : ASUS
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!--<h1>Add to Cart Page</h1>-->
        <%
            String id = request.getParameter("id");
            
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinestore", "root", "");
                PreparedStatement pst = con.prepareStatement("select * from books where BookId=?");
                pst.setString(1, id);
                ResultSet rs1=pst.executeQuery();
                if (rs1.next()) {
                    Integer kk = (Integer) session.getAttribute("count");
                    int k = 1;
                    if (kk == null) {
                        session.setAttribute("count", new Integer(1));
                    } else {
                        k = kk;
                        k = k + 1;
                        session.setAttribute("count", new Integer(k));
                    }
                    ArrayList al = new ArrayList();
                    al.add(rs1.getString(1));
                    al.add(rs1.getString(2));
                    al.add(rs1.getString(3));
                    al.add(rs1.getString(4));
                    al.add(rs1.getString(5));
                    session.setAttribute("" + k, al);
                    response.sendRedirect("bookDetails.jsp");
                }
            } catch (Exception ex) {
            out.print(ex.getMessage());
            }
        %>
    </body>
</html>
