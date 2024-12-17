<%-- 
    Document   : forgotPass
    Created on : Oct 4, 2024, 10:01:00 PM
    Author     : deept
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forgot password page</title>


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
                justify-content: center;
                align-items: center;
            }
           
            .box2{
                /*flex: 1;*/
                display: flex;
                background-color:  #312e2c;
                border: 5px solid #d49831;
                color: white;
                /*height:20rem;*/
                /*width: fit-content;*/
                padding: 3rem;
                font-size: x-large;
                border-radius: 2rem;
                box-shadow: 7px 7px 18px 1px grey;
            }
            table{
                height: 200px;
                width: 20em;
            }
            input[type="email"]{
                height: 30px;
                width: 300px;
                background: transparent;
                border: none;
                border-bottom: 3px solid black;
                outline: none; 
                color: white;
                font-weight: bold;
                font-style: italic;
                padding: 0 1rem 0 1rem;
            }
            .btn{
                height: 35px;
                width: 110px;
                background-color: #d49831;
                border-radius: 30px;
                margin: 10px 10px 0 0;
            }
            @media screen and (max-width:768px){

                .box2{
                    flex-direction: column;
                    height:fit-content;
                    width: 20rem;

                }
                input[type="email"]{
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

        <div class='all'>
            <div class="box2">
                
                <form action="forgotPassword" method="post">
                    <table>
                        <h1 style="text-align:center ; margin-bottom:2REM">FORGOT PASSWORD</h1>

                        <tr>
                            <td>Email:</td>
                            <td><input type="email" name="email" required/></td>
                        </tr>
                        
                        <tr>
                         <% String invi = request.getParameter("mail");
                                if (invi != null && invi.equals("wrong")) {
                                %>
                                <span style="color:red; font-size: medium ; text-align: center">**Mail not Registered..</span>
                                <%
                                    }
                                %>    
                        </tr>
                        
                       
                        <tr style="text-align:center">
                            <td colspan="2"><input type="submit" value="Send Mail" class="btn"/></td>
                        </tr>

                    </table>

                </form>
            </div>
        </div>
    </body>
</html>
