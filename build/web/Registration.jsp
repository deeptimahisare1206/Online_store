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
        <!--<title>JSP Page</title>-->
        <style>

            *{
                margin: 0;
                padding: 0;
            }
            html{
                height: 100vh;
                /*background:linear-gradient(75deg,navy,#0099ff,blue)no-repeat;*/
                /*background-color:  #312e2c;*/
                /*background-color:black;*/

            }
            .icl nav{
                background-color: #312e2c;
            }
            textarea:focus,input:focus{
                /*color: white;*/
                background-color: gray;
            }
            .main{
                padding:1.5rem 8rem;
                display: flex;
                justify-content: center;
                align-items: center;
                /*border: 7px solid seagreen;*/


            }
            .box2{
                box-shadow: 7px 7px 18px 1px grey;

                /*display: flex;*/

                /*display: grid;*/
                /*align-items: center;*/
                color: white;
                height:fit-content;
                width: 90vw;
                padding: 1rem 2rem;
                font-size: x-large;
                /*position: relative;*/
                /*top:125px;*/
                /*left:450px;*/
                border-radius: 2rem;
                /*                backdrop-filter: blur(2px);
                                background-color: rgba(255,255,255,0.5);*/
                background-color: #312e2c;
                border: 0.5rem solid #d49831;
            }

            .box1{
                flex:1;
            }
            .box2 form{
                flex: 1;
                /*border: 2px solid seagreen;*/
                padding: 0 3rem ;

            }
            input:where([type="text"],[type="password"],[type="email"] ,[type="number"]){
                padding-left: 1rem;
                height: 2rem;
                width: 20vw;
                background: transparent;
                color: white;
                border: none;
                border-bottom: 3px solid black;
                outline: none;
            }
            textarea{
                width: 20vw;
                padding-left: 1rem;

                background: transparent;
                border: none;
                border-bottom: 3px solid black;
            }
            table{
                /*text-align: center;*/
                /*border: 2px solid yellow;*/
                height: 60vh;
                width: 20vw;
            }
            tr td{
                text-align:  center;
                padding: 0.4rem;
            }
            .btn{
/*                font-size: large;
                box-shadow: 1px 1px 0px 0px, 2px 2px 0px 0px red, 3px 3px 0px 0px, 4px 4px 0px 0px yellow, 5px 5px 0px 0px;
                padding: 0.25em 0.75em;
                border-radius: 2rem;

                height: 30px;
                width: 100px;
                margin: 10px 30px 10px 0;*/

                
                    height: 35px;
                width: 110px;
                background-color: #d49831;
                border-radius: 30px;
                margin: 10px 20px 0 0;
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
            input[type="file"]{
                /*display: flex;*/
                /*gap: 3rem;*/
            }
            input[type="file"]::file-selector-button {
                background:url("user.png");
                background-position: center;
                background-size: contain;
                color: transparent;
                height: 15rem;
                width: 15rem;
                padding: 10px 20px;
                border: none;
                border-radius: 100%;
                cursor: pointer;
                display: flex;
                justify-content: center;
                align-items: center;
            }
            .fg{
                text-decoration: none;
                color: #d49831;
                font-size: large;
            }
            @media screen and (max-width:768px){

                .main{

                }
                .box2{
                    width: 70vw;
                    height: fit-content;
                    display: flex;
                    flex-direction: column;
                    font-size: medium;
                }
                .box1{
                    display: grid;
                    place-items: center;
                }
                .box2 form{
                    padding: 0.2rem;
                    /*border: 2px solid black;*/
                }
                .box1 img{
                    width:  15rem;
                    height: 15rem;
                }
                .main h2{
                    font-size: x-large;

                }
                input:where([type="text"],[type="password"],[type="email"],[type="number"]){
                    width: 50vw;
                }
                textarea{
                    width: 50vw;
                }
            }
        </style>
    </head>
    <body>
        <div class="icl">
            <%@include file="navbar.html" %>
        </div>
        <div class="main">
            <div class="box2">
                <!--                <div class="box1">              
                                    <img src="image/registration.png" alt="not found"/>
                                </div>-->
                <form action="Sign_Up" method="post" enctype="multipart/form-data">
                    <h2 style="text-align: center">REGISTRATION</h2>

                    <table >
                        <tr>
                            <td><input type="text" name="name" placeholder="Name" /> </td>
                             <td><input type="text" name="uname" placeholder="Username" /></td>
                            <td rowspan="4"style="padding: 0 0 0 5rem"><input type="file" name="pic"  ></td>

                        </tr>
                        <tr>
                            <td><input type="text" name="phone" placeholder="Mobile no." required/></td>
                            <td><input type="email" name="email" placeholder="Email" /></td>
                        </tr>
                        <tr>
                           
                            <td><input type="password" name="password" placeholder="Enter strong Password"/></td>
                            <td><textarea
                                    name="add"
                                    cols="20"
                                    rows="3"
                                    placeholder="Enter Address"
                                    ></textarea></td>

                        </tr>
                        <tr >
                            <td colspan="2">
                                <%
                                    String invi = request.getParameter("invalid");
                                    if (invi != null && invi.equals("user")) {
                                %>
                                <p style="color:yellow; font-size: medium">**Username already exist..</p>
                                <%
                                    }
                                %>
                            </td>   
                        </tr>
                        <tr>
                            <td><input type="text" name="state" placeholder="State"></td>     
                            <td><input type="number" name="pin" placeholder="Pin Code"></td>

                            <td colspan="2"><input type="submit" value="Submit" class="btn"/><input type="reset" value="Reset" class="btn" /></td>
                        </tr>
<!--                        <tr style="text-align:center">
                        </tr>-->
                    </table>
                </form>
                            <p style="text-align: center;margin-top: 1rem">Already have an account? <a href="Ulogin.jsp" class="fg"> Login</a></p>
            </div>
        </div>
    </body>
</html>
