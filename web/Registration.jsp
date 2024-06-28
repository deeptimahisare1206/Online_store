<%-- 
    Document   : Registration
    Created on : Apr 7, 2024, 12:41:47 PM
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
            html{
                height: 100vh;
                background:linear-gradient(75deg,navy,#0099ff,blue)no-repeat;

            }
            textarea:focus,input:focus{
                /*color: white;*/
                background-color: gray;
            }
            .main{
                padding:2rem 8rem;
                display: flex;
                justify-content: center;
                align-items: center;
                /*border: 7px solid seagreen;*/

            }
            .box2{
                flex: 1;
                display: flex;
                /*border: 7px solid seagreen;*/
                height:25rem;
                width: 40rem;
                padding: 2rem;
                font-size: x-large;
                /*position: relative;*/
                /*top:125px;*/
                /*left:450px;*/
                border-radius: 2rem;
                backdrop-filter: blur(2px);

                background: rgba(255, 255, 255, 0.2);
                /*background:linear-gradient(75deg,navy,#0099ff,blue)*/

            }
            .box1 img{
                width:  25rem;
                height: 20rem
            }
            .box1{
                flex: 1;
            }
            input:where([type="text"],[type="password"],[type="email"]){
                padding-left: 1rem;
                    height: 30px;
                width: 300px;
                background: transparent;
                border: none;
                border-bottom: 3px solid black;
            }
            textarea{
                width: 300px;
                padding-left: 1rem;

                background: transparent;
                border: none;
                border-bottom: 3px solid black;
            }
            table{
                /*text-align: center;*/
                height: 200px;
                width: 20em;
            }
            tr td{
                text-align:  center;
                padding: 0.4rem;
            }
            .btn{
                font-size: large;
                box-shadow: 1px 1px 0px 0px, 2px 2px 0px 0px red, 3px 3px 0px 0px, 4px 4px 0px 0px yellow, 5px 5px 0px 0px;
                padding: 0.25em 0.75em;
                border-radius: 2rem;

                height: 30px;
                width: 100px;
                /*background-color: darksalmon;*/
                /*border-radius: 30px;*/
                margin: 10px 30px 10px 0;

            }
            .box1{
                flex: 1;
            }
            .box1 img{
                width:  25rem;
                height: 25rem
            }
            ::placeholder{
                color: white;
            }
            @media screen and (max-width:768px){

                .main{
                    width: 20em;
                    height: 25em;
                }
                .main h1{
                    font-size: x-large;

                }
            }
        </style>
    </head>
    <body>
        <%@include file="navbar.html" %>
        <div class="main">
            <div class="box2">
                <div class="box1">              
                    <img src="image/12.jpg" alt="not found"/>
                </div>
                <form action="Sign_Up" method="post">
                    <h2>REGISTRATION FORM</h2>

                    <table >
                        <tr>
                            <td>Name:</td>
                            <td><input type="text" name="name" placeholder="Enter name" /></td>
                        </tr>
                        <tr>
                            <td>Address:</td>
                            <td>
                                <textarea
                                    name="add"
                                    cols="20"
                                    rows="3"
                                    placeholder="Enter address"
                                    ></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td>Mobile no.:</td>
                            <td><input type="text" name="phone" placeholder="Enter number" required/></td>
                        </tr>
                        <tr>
                            <td>Email:</td>
                            <td><input type="email" name="email" placeholder="Enter Email" /></td>
                        </tr>
                        <tr>
                            <td>Username:</td>
                            <td><input type="text" name="uname" placeholder="Enter unique Username" /></td>
                        </tr>
                        <tr>
                            <td>Password:</td>
                            <td><input type="password" name="password" placeholder="Enter strong password"/></td>
                        </tr>
                        <tr style="text-align:center">
                            <td colspan="2"><input type="submit" value="Submit" class="btn"/><input type="reset" value="Reset" class="btn" /></td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </body>
</html>
