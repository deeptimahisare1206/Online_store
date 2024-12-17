<%-- 
    Document   : userHomepage
    Created on : Dec 8, 2023, 1:36:40 PM
    Author     : ASUS
--%>

<%@page import="java.sql.*"%>
<%@page import="javax.swing.JOptionPane"%>
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
                background-color:  #312e2c;

                height: 100vh;
            }
            /*            div{
                            text-align: center;
                            text-transform: capitalize;
                        }*/
            /*            .home_ul{
                            display: grid;
                            grid-template-columns:  repeat(2,20em);
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
                            box-shadow: 0  0 8px 5px rgba(255,255,166,0.5);
            
                        }
                        .home_li:hover{
                            transition: 2s;
                        }
                        .home_li a{
                            text-decoration: none;
                            font-size: 2em;
                            font-weight: bold;
                            color: white;
            
            
                        }*/
            .usern{
                height:90vh;
                display: flex;
                color: white;
            }
            .b2{
                font-size: 3rem;
                /*background-color: whitesmoke;*/
                flex: 1;
                /*margin: auto;*/
                text-align: center;
                display: flex;
                flex-direction: column;
                align-items: center;
                gap: 10%;
            }
            .b1{
                flex: 2;
                display: grid;
                place-items: center;
            }
            .pro img{
                width: 10rem;
                height: 10rem;
                background-color: blue;
                border-radius: 100%;
                margin-top:2rem;
            }

        </style>
    </head>
    <body>
        <!--<button class="btn" ><a href="../index.html"><i class="fa fa-home" style="font-size:40px"></i></a></button>-->

        <%--<%@include file="navbar.html" %>--%>
        <div>
            <%

                String str = (String) session.getAttribute("uname");
//                 String str2 = (String) session.getAttribute("userid");
//                 out.print(str2);
                if (str != null) {
                    try {

                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_store", "root", "root");
                        PreparedStatement pst = con.prepareStatement("select * from user_login where UserName = (?)");
                        pst.setString(1, str);
                        ResultSet rs = pst.executeQuery();
                        while (rs.next()) {
                            String fname = rs.getString("Name");
                            String i = rs.getString("User_id");
            %>           

            <%@include file="usernav.html" %>

            <div class="usern">
                <span class="b1">
                    <img src="image/undraw_reading_time_re_phf7.svg" alt="alt"/>
                </span>
                <span class="b2">
                    <div class="pro">
                        <img src="userpic/<%=rs.getString("image")%>" height="300"width="300" alt="not found" onerror="this.src='image/profile.png';"/>

                    </div>

                    <%
                        HttpSession session2 = request.getSession();
                session2.setAttribute("userid", i);
               
                         out.print("Welcome <br> " + fname);

                    %>
                </span>
            </div>
            <!--            <ul class="home_ul">
                            <li class="home_li"><a href="bookDetails.jsp">BOOK DETAILS</a></li>
                            <li class="home_li"><a href="addCart.jsp">ADD CART</a></li>
                            <li class="home_li"><a href="userProfile.jsp">USER PROFILE</a></li>
                            <li class="home_li"><a href="ulogout">LOGOUT</a></li>
                            <li class="home_li"><a href="B.jsp">book</a></li>
                            <li class="home_li"><a href="C.jsp">cart</a></li>
                        </ul>-->

            <%                        }
                    } catch (Exception e) {
                        out.print(e.getMessage());
                    }
                } else {
%>
<jsp:forward page="Ulogin.jsp"></jsp:forward>
            
            <%
                }


            %>
        </div>



        <script>
            function autoRefresh() {
                window.location = window.location.href;
            }
            setInterval('autoRefresh()', 5000);
        </script>
    </body>
</html>
