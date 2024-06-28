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
                background-color: rgba(150,100,255,0.5);
            }
            .all{
                padding:3rem 8rem;
                display: flex;
                justify-content: center;
                align-items: center;
                /*border: 7px solid seagreen;*/

            }
            .box1{
                flex: 1;
            }
            .box1 img{
                width:  25rem;
                height: 20rem
            }
            .box2{
                flex: 1;
                display: flex;
                /*border: 7px solid seagreen;*/
                height:20rem;
                width: 40rem;
                padding: 3rem;
                font-size: x-large;
                /*position: relative;*/
                /*top:125px;*/
                /*left:450px;*/
                border-radius: 2rem;
                backdrop-filter: blur(2px);
                background:linear-gradient( rgba(50,150,255,0.2),rgba(10,1,10,0.5));

            }
            table{
                /*text-align: center;*/
                height: 200px;
                width: 20em;
            }
            input[type="text"],[type="password"]{
                height: 30px;
                width: 300px;
                background: transparent;
                border: none;
                border-bottom: 3px solid black;
            }
            .btn{
                height: 30px;
                width: 100px;
                background-color: darksalmon;
                border-radius: 30px;
                margin: 10px 20px 10px 0;
            }
            @media screen and (max-width:768px){

                .box2{
                    flex-direction: column;
                    height:40rem;
                    width: 20rem;

                }
                input[type="text"],[type="password"]{
                    height: 30px;
                    width: 15rem;
                }
                table{
                    /*text-align: center;*/
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
        <%@include file="navbar.html" %>
        <div class='all'>

            <div class="box2">
                <div class="box1">
                    <img src="image/12.jpg" alt="not found"/>
                </div>
                <form action="userLogin" method="post">
                    <table>
                        <h1 style="text-align:center">LOGIN FORM</h1>

                        <tr>
                            <td>Username:</td>
                            <td><input type="text" name="uname" required/></td>
                        </tr>
                        <tr>
                            <td>Password:</td>
                            <td><input type="password" name="password" required/></td>
                        </tr>
                        <tr>
                            <td colspan="2"><input type="checkbox">Remember me</td>
                        </tr>
                        <tr style="text-align:center">
                            <td colspan="2"><input type="submit" value="Submit" class="btn"/><input type="reset" value="Reset" class="btn" /></td>
                        </tr>

                    </table>
                    <p style="text-align: center"><a href="">Forgot Password?</a><br>
                        If new user? <a href="Registration.html">SignUp</a></p>
                </form>
            </div>
        </div>
    </body>
</html>
