<%-- 
    Document   : Home
    Created on : Nov 28, 2023, 6:26:32 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           String user=(String)session.getAttribute("View");
            out.print("<h1> Welcome " +user+"</h1>");
        %>
        <a href="Showdb.jsp"> SHOW ALL USERS</a>
    </body>
</html>
