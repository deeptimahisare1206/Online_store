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
        <title>Online Store</title>
        <style>
            *{
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }
            body{
                background-color:  #312e2c;
                height: 100vh;
            }
            marquee{
                font-size: 1.5rem;
                padding:  0.5rem 0 ;
                background-color:black;
                color: #d49831;

            }
            .main{
                background: url("image/openbook.jpg");
                border: 2px solid black;
                height: 90vh;
                background-position:center;
            }
            p{
                text-align: center;
                color: white;
                font-family: serifs;
                font-size: 3rem;
                backdrop-filter: blur(2px);
                background:linear-gradient( rgba(50,150,255,0.2),rgba(10,1,10,0.5));
            }



        </style>
    </head>
    <body>
        <%
            String str = (String) session.getAttribute("uname");
            if (str != null) {
        %>
        <%@include file="usernav.html"%>
        <%
        } else {
        %>
        <%@include file="navbar.html"%>
        <%
            }

        %>

        <div class="main">
            <marquee ><--Shop the latest books now before its Stock Out--></marquee>
            <h1>
                <%                     String invi = request.getParameter("comment");
                    if (invi != null && invi.equals("success")) {
                %>
                <p style="color:yellow; font-size: medium">Thank you for your feedback!😊</p>
                <%
                    }
                %>
            </h1>
            <p>
                WELCOME TO THE ONLINE STORE<br />
                NEW ARRIVALS
            </p>




        </div>

    </body>
</html>
