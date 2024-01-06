<%-- 
    Document   : Alogin
    Created on : Dec 8, 2023, 3:20:18 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADMIN LOGIN</title>
        <style>
            .inp{
                width: 300px;
                height: 40px;
                border-radius: 50px;
                background-color: inherit;
                color: white;
                font-size: large;
                font-weight: bolder;
                padding-left: 40px;
                border:none;
                border-bottom: 4px solid blanchedalmond;
            }
            ::placeholder{
                color: wheat;
            }
            .btn {
                width: 100px;
                height: 40px;
                border-radius: 50px;
                background:radial-gradient(orangered,orange);
                box-shadow: 1px 1px 15px gold;
                border: none;
            }
            body {
                background:url(../image/3.jpeg);
                background-size:1350px 560px;
                background-repeat: no-repeat;
            }
            .main {
                height: 400px;
                width: 400px;
                backdrop-filter: blur(0px);
                background: rgba(10, 10, 10, 0.5);
                border-radius: 50px;
                margin-top: 5%;
                padding: 2% 3% 2% 5%;
            }
            .dbtn{
              
                display: flex;
                justify-content: space-evenly;
            }
            span{
                color: black;
                font-family: serif;
                font-size: 50px;
                font-weight: bolder;
                -webkit-text-stroke: 0.5px;
                -webkit-text-stroke-color: whitesmoke;
            }
p{
                color: white;
                font-size: large;
                font-weight: bolder;
                text-align: left;
            }

        </style>
    </head>
    <body>
    <center>
        <div class="main">
            <span>ADMIN LOGIN</span>
            <form action="../adminLogin" method="post">
                <p>
                    USERNAME:<br>
                    <input type="text" name="uname" class="inp" placeholder="Enter username" />
                    <br>
                    <br>
                    PASSWORD:<br>
                    <input type="password" name="password" class="inp" placeholder="Enter password" />
                    <br>
                    <br>
                <div class="dbtn">
                    <input type="submit" value="Submit" class="btn" />
                    <input type="reset" value="Reset" class="btn" />
                </div>
                <p/>

            </form>
        </div>
    </center>
</body>
</html>
