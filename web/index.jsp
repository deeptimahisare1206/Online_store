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
                box-sizing: border-box;
                /*background-color:black;*/

                ;

            }
            body{
                background-color:  #312e2c;

                height: 100vh;
                /*background: url("image/3.jpeg")no-repeat maroon;*/
                /*background-size:cove ;*/
                /*height: ;*/
            }
            marquee{
                font-size: 1.5rem;
                padding:  0.5rem 0 ;
                                background-color:black;
                                color: #d49831;

            }
            .main{
                /*padding: 13% 10%;*/
                background: url("image/openbook.jpg");
                border: 2px solid black;
                height: 90vh;
/*                display: grid;
                place-items: first;*/
                background-position:center;

            }
            p{
                text-align: center;
                color: white;
                font-family: serifs;
                /*float: right;*/
                font-size: 3rem;
                backdrop-filter: blur(2px);
                background:linear-gradient( rgba(50,150,255,0.2),rgba(10,1,10,0.5));
            }



        </style>
    </head>
    <body>
        <%@include file="navbar.html"%>

        <div class="main">
            <marquee ><--Shop the latest books now before its Stock Out--></marquee>
            <h1>
                 <%
                                    String invi = request.getParameter("comment");
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
