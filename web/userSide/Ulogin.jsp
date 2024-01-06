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
                background: url("../image/4.jpeg");
                background-repeat: no-repeat;
                background-size: cover;
                background-position: center;
            }
            .box2{
                /*border: 7px solid seagreen;*/
                height:370px;
                width: 540px;
                padding: 30px;
                font-size: x-large;
                position: relative;
                /*top:125px;*/
                left:450px;
                border-radius: 5px;
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
            }
            .btn{
                height: 30px;
                width: 100px;
                background-color: darksalmon;
                border-radius: 30px;
                margin: 10px 20px 10px 0;
            }
            @media screen and (max-width:430px){
               
                .box2{
                    color: white;
                    background-color: purple;
                }
                
            }

        </style>
    </head>
    <body>
        <div class='all'>
            <!--<div class="box1"></div>-->
            <div class="box2">
                <form action="../userLogin" method="post">
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
