<%-- 
    Document   : showdatabeans
    Created on : Nov 30, 2023, 6:42:31 PM
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
        <jsp:useBean id="st" class="com.Beans.Student" scope="page" ></jsp:useBean>
        <jsp:setProperty property="*" name="st"></jsp:setProperty>
            <h1>
                <table border="1">
                    <tr>
                        <td>Name:</td><td><jsp:getProperty property="name" name="st"></jsp:getProperty><br></td>
                </tr><tr>
                        <td>Roll no.:</td><td><jsp:getProperty property="roll" name="st"></jsp:getProperty>   <br></td>
                </tr><tr>
                        <td>Address:</td><td><jsp:getProperty property="add" name="st"></jsp:getProperty><br></td>
                    </tr><tr>
                        <td>City:</td><td><jsp:getProperty property="city" name="st"></jsp:getProperty><br></td>
           </tr>
            </table>
        </h1>
    </body>
</html>
