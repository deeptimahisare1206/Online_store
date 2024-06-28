<%-- 
    Document   : userHomepage
    Created on : Dec 8, 2023, 1:36:40 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>USER HOME PAGE</title>
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <style>
            *{
                margin: 0;
                padding: 0;
            }
            body{
                
                height: 100vh;
                background:linear-gradient(75deg,navy,#0099ff,blue)no-repeat;
            }
            div{
                text-align: center;
                text-transform: capitalize;
            }
            .home_ul{
                display: grid;
                grid-template-columns:  repeat(2,20em);
                /*                align-items: center;*/
                justify-content: center;
                margin-top: 15px;
                padding: 1em;

            }
            .home_li{
                list-style: none;
                display: flex;
                align-items: center;
                justify-content: center;
                margin: 2.5em 2.5em 2.5em 6em;
                padding: 1em;
                border-radius: 1em;
                backdrop-filter: blur(10px);
                background:linear-gradient( rgba(0, 0,0, 0.2),rgba(25,25,66,0.8));
                box-shadow: 0  0 8px 5px rgba(255,255,166,0.5);

            }
            .home_li:hover{
                transition: 2s;
            }
            .home_li a{
                text-decoration: none;
                font-size: 2em;
                font-weight: bolder;
                color: white;
                -webkit-text-stroke: 1px;
                -webkit-text-stroke-color: black;
            }
            .btn{
                width: 70px;
                height: 70px;
                border-radius: 50%;
                position: fixed;
                right: 10%;
                
            }
        </style>
    </head>
    <body>
        <!--<button class="btn" ><a href="../index.html"><i class="fa fa-home" style="font-size:40px"></i></a></button>-->

        <div>
            <%@include file="navbar.html" %>
            <%

                String str = (String) session.getAttribute("uname");
                if (str != null) {
            %>           


            <h1>USER HOME PAGE
                <br>
                <%
                    out.print("Welcome " + str);
                %>
            </h1>
            <ul class="home_ul">
                <li class="home_li"><a href="bookDetails.jsp">BOOK DETAILS</a></li>
                <!--<li class="home_li"><a href="addCart.jsp">ADD CART</a></li>-->
                <li class="home_li"><a href="userProfile.jsp">USER PROFILE</a></li>
                <li class="home_li"><a href="ulogout">LOGOUT</a></li>
            </ul>
            <%
            } else {
            %>
            <jsp:include page="Ulogin.jsp"></jsp:include>
            <%
                    out.print("<h1>Login first!!!</h1>");
                }
            %>
        </div>
    </body>
</html>
