<%-- 
    Document   : Index
    Created on : Dec 1, 2023, 6:15:03 PM
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
        <form action="Upload" method="post" enctype="multipart/form-data">
            <table border="1">
                <tr>
                    <td><label>Files:</label></td>
                    <td><input type="file" name="files"></td></tr>
                <tr>
                    <td><label>Description:</label></td>
                    <td><input type="text" name="des"></td>
                </tr>
                <tr colspan="2">
                    <td><button>Upload</button></td>
                </tr>
        
            </table>
        </form>
    </body>
</html>
