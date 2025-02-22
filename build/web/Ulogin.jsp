<%-- 
    Document   : Ulogin
    Created on : Dec 8, 2023, 1:16:39 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>USER LOGIN</title>
        <style>
            *{
                margin: 0;
                padding: 0;
            }
            body{
                background-color:  white;
            }
            .icl nav{
                background-color: #312e2c;
            }

            .all{
                padding:3rem 8rem;
                display: flex;
                /*flex-direction: column;*/
                justify-content: center;
                align-items: center;
            }
            .box1{
                flex: 1;
            }
            .box1 img{
                width:  25rem;
                height: 20rem;

            }
            .box2{
                flex: 1;
                display: flex;
                background-color:  #312e2c;
                border: 5px solid #d49831;
                color: white;
                height:20rem;
                width: 40rem;
                padding: 3rem;
                font-size: x-large;
                border-radius: 2rem;
                box-shadow: 7px 7px 18px 1px grey;
            }
            table{
                height:90%;
                /*border: 2px solid black;*/
                width: 20em;
            }
            input[type="text"],[type="password"]{
                height: 30px;
                width: 300px;
                background: transparent;
                border: none;
                border-bottom: 3px solid black;
                outline: none;
                color: white;
                font-size: 1.5rem;
                font-weight: bold;
                font-style: italic;
                padding: 0 1rem 0 1rem;
            }
            .btn{
                height: 35px;
                width: 110px;
                background-color: #d49831;
                border-radius: 30px;
                margin: 10px 20px 0 0;
            }

            .fg{
                text-decoration: none;
                color: #d49831;
                font-size: large;
            }
            table tr td{
                text-align: center;
            }
            table tr{

            }

            @media screen and (max-width:768px){

                .box2{
                    flex-direction: column;
                    height:fit-content;
                    width: 20rem;

                }
                input[type="text"],[type="password"]{
                    height: 30px;
                    width: 15rem;
                }
                table{
                    height: 15rem;
                    width: 20rem;
                }
                .box1 img{
                    width:  20rem;
                    height: 15rem
                }
            }

        </style>

    </head>
    <body>
        <div class="icl">
            <%@include file="navbar.html" %></div>

            <h1>
                <%
                     String str = (String) session.getAttribute("uname");
//                 String str2 = (String) session.getAttribute("userid");
//                 out.print(str);
                if (str != null) {
                    
                    response.sendRedirect("userHomepage.jsp");
                    }
                                String registration = request.getParameter("register");
                                if (registration != null && registration.equals("success")) {
                                %>
                                <span style="color:green; font-size: medium ; text-align: center">Registration Successfull</span>
                                <%
                                    }
                                %>
            </h1>
        <div class='all'>
            <div class="box2">
                <div class="box1">
                    <img src="image/undraw_login_re_4vu2.svg" alt="not found"/>
                </div>
                <form action="userLogin" method="post">
                    <table>
                        <h1 style="text-align:center">LOGIN</h1>
                        <tr>
                            <td colspan="2"> <%
                                String invi = request.getParameter("pass");
                                if (invi != null && invi.equals("incorrect")) {
                                %>
                                <span style="color:red; font-size: medium ; text-align: center">**Username or Password incorrect..</span>
                                <%
                                    }
                                %></td>
                        </tr>
                        <tr>
                            <td>Username:</td>
                            <td><input type="text" name="uname" required/></td>
                        </tr>
                        <tr>
                            <td>Password:</td>
                            <td><input type="password" name="password" required/></td>
                        </tr>

                        <!--                        <tr>
                                                    <td colspan="2"><input type="checkbox">Remember me</td>
                                                </tr>-->
                        <tr style="text-align:center">
                            <td colspan="2"><input type="submit" value="Submit" class="btn"/><input type="reset" value="Reset" class="btn" /></td>
                        </tr>
                        <tr>
                            <td><p><a href="forgotPass.jsp" class="fg">Forgot Password?</a></p></td>
                            <td ><p>If new user? <a href="Registration.jsp" class="fg">SignUp</a></p></td>
                        </tr>

                    </table>

                </form>
            </div>
        </div>
    </body>
</html>
