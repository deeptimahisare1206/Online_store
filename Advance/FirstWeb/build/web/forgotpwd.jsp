<%-- 
    Document   : forgotpwd
    Created on : Jan 9, 2024, 10:42:11 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
                text-align: center;
                font-size: larger;
            }
        </style>
    </head>
    <body>
        <h1>FORGOT YOUR PASSWORD???</h1>
        <p>Enter your email.<br>Enter OTP in the next page.</p><br><br>
        <form action="forgot" method="post">
            <label>Enter your email address:</label><br><br>
            <input type="email" placeholder="Enter your email"><br><br>
            <input type="submit" value="get the otp">

        </form>

    </body>
</html>
