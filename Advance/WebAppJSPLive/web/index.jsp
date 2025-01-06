<%-- 
    Document   : index
    Created on : Nov 22, 2023,6:13:22 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Date" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>WELCOME DEEPU😊</h1>
        <h1>
            Scriplet tag:-
            <%
                Date dt = new Date();
                out.print(dt);
            %>
            <br>Expression tag:-
            <%=new Date()%>
        </h1>
        <hr>
        <h1><a href="Calculator.html">Calculator</a></h1><hr>
        <%@include file="D1.jsp" %>
        <hr>
        <h1><a href="Login.html">LOGIN</a></h1><hr>
    </body>
</html>
