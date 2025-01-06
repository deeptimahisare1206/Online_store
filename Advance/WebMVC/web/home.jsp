<%-- 
    Document   : home
    Created on : Dec 4, 2023, 6:27:26 PM
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
        <h1>
            <%
                String str = null;
                str = (String) session.getAttribute("user1");
                if (str == null) {
                    out.print("Login first..");
            %>
            <jsp:include page="index.html"></jsp:include>
            <%
                }
                out.print("Welcome " + str);
            %>
            <br>
            <a href="logout.jsp">LOG-OUT</a>
        </h1>
    </body>
</html>
