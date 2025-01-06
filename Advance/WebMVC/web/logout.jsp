<%-- 
    Document   : logout
    Created on : Dec 5, 2023, 6:11:58 PM
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
        <h1><%
            if (session.getAttribute("user1") == null) {
                out.print("Login first..");
            %>
            <jsp:include page="index.html"></jsp:include>
            <%
            } else {
                session.setAttribute("user1", null);
                session.invalidate();
            %>
            <jsp:include page="index.html"></jsp:include>
            <%
                    out.print("Logout Successfully");
                }
            %>
        </h1>
    </body>
</html>
