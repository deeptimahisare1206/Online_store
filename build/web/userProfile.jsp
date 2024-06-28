<%-- 
    Document   : userProfile
    Created on : Dec 8, 2023, 2:31:24 PM
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

                String str = (String) session.getAttribute("uname");
            %>           

        <h1>Hello  <%
                    out.print("Welcome " + str);
                %>
        </h1>
    </body>
</html>
