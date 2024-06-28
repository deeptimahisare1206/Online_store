<%-- 
    Document   : index
    Created on : Apr 7, 2024, 1:20:24 PM
    Author     : deept
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <style>
            *{
                margin: 0;
                padding: 0;
            }
            body{
                background: url("image/12.2.jpg")no-repeat maroon;
                background-size: cover;
                /*background-position: center;*/
            }
            p{
                margin: 2em 0 1em 45%;
                -webkit-text-stroke-width: 1px;
                -webkit-text-stroke-color:lightcoral ;
                font-size: 50px;
                font-weight: bolder;
                font-family: fantasy;

            }
            input{
                margin: 0 0 0 60%;
                font-family: sans-serif;
                padding: 10px;
                background:linear-gradient(65deg,lightcoral,lightpink,lightsalmon,plum,palevioletred);
                border-radius: 10px;
                font-weight: bold;
            }
           


        </style>
    </head>
    <body>
        <%@include file="navbar.html"%>
        <h1>
            <div class="main">
                
                <marquee style="color: red"><--Shop the latest books now before its Stock Out--></marquee>
                <p>
                    WELCOME TO THE ONLINE STORE<br />
                    NEW ARRIVALS
                </p>
                <form action="home.html">
                    <input type="submit" value="Get started -->>">
                </form> 



            </div>
        </h1>
    </body>
</html>
