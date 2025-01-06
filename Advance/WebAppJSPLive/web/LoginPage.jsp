<%-- 
    Document   : LoginPage
    Created on : Nov 22, 2023, 6:51:12 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP of Login </title>
    </head>
    <body>
        
    </body>
    <h1>
    <%
        String user = request.getParameter("usern");
        String pass = request.getParameter("pass");
        if (user.equals("Deep") && pass.equals("123")) {
            out.print("Login Success<br> Welcome " + user +"👻👻");
        } else {
            out.print("Username or password Wrong ");
%>
<jsp:include page="Login.html"></jsp:include>
    <%
        }
    %>

    </h1>
</html>
