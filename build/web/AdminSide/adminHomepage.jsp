<%-- 
    Document   : adminHomepage
    Created on : Dec 8, 2023, 3:20:29 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADMIN HOME PAGE</title>
        <style>
            *{
                margin: 0;
                padding: 0;
            }
            html{
                text-align: center;
                background:radial-gradient(#3399ff,navy);
                justify-content: center;
            }
            .ahome_div{
                display: flex;
                justify-content: center;
                text-align: center;
                text-transform: capitalize;
            }
            .ahome_ul{
                margin-top: 20px;
            }
            .ahome_li{
                height: 100px;
                width: 500px;
                margin-bottom: 10px;
                list-style: none;
                display: flex;
                align-items: center;
                justify-content: center;
                border-radius: 1em;
                backdrop-filter: blur(10px);
                background:linear-gradient( #787A91,rgba(25,25,66,0.8));
            }
            .ahome_li:hover{
                transition: 2s;
                box-shadow: 0  0 10px 5px rgba(255,255,166,0.5);
                background:linear-gradient(rgba(25,25,66,0.8),#787A91);

            }
            .ahome_li a{
                text-decoration: none;
                font-size: 2.5em;
                font-weight: bolder;
                color: white;
                -webkit-text-stroke: 1px;
                -webkit-text-stroke-color: black;
            }
            .ahome_nav{
                padding: 0.5rem;
                background-color: grey;
                font-size: 3rem;
                display: flex;
                justify-content: space-evenly;
            }
        </style>
    </head>
    <body>

        <%
            String admn = (String) session.getAttribute("uname");
            if (admn != null) {
        %>
        <div class="ahome_nav">
            <%
                out.print("Welcome " + admn);
            %>
        </div>
        <div class="ahome_div">
            <!--<img src="../image/undraw_coding_re_iv62.svg" alt="alt"/>-->
            <ul class="ahome_ul">
                <li class="ahome_li"><a href="addBook.jsp">ADD BOOK</a></li>
                <li class="ahome_li"><a href="UserDetailsA.jsp">USER DETAILS</a></li>
                <li class="ahome_li"><a href="bookManage.jsp">BOOK MANAGEMENT</a></li>
                <li class="ahome_li"><a href="../aLogout">LOGOUT</a></li>
            </ul>

            <%
            } else {
            %>
            <jsp:forward page="../index.jsp"></jsp:forward>
            <%
//                    out.print("Login first!!!");
                }
            %>
        </div>
    </body>
</html>
