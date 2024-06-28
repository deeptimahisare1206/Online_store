<%-- 
    Document   : addBook
    Created on : Dec 8, 2023, 3:21:28 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Book</title>
        <link rel="stylesheet" href="../includeFiles.css"/>

        <style>
            *{
                margin: 0;
                padding:0;
            }
            body{
                height: 100vh;
                display: flex;
                /*background:radial-gradient(#973033,purple);*/

            }
            .all{
                /*width: 100vw;*/
                display: flex;
                flex-direction: column;
                /*justify-content: center;*/
                align-items: center;
                gap: 2rem;
                flex: 3;

            }

            .amain{
                padding: 2rem 5rem;
                width: 35rem;
                border-radius: 3rem;
                font-weight: bolder;
                font-size: 30px;
                backdrop-filter: blur(6px);
                background:rgba(200,240,240,0.3);
                /*padding-right: 10%;*/
            }
            .head{
                /*height: 100%;*/
                display: flex;
                justify-content: center;
                align-items: center;
            }

            tr td{
                text-align:  center;
                padding: 0.4em;
            }
            input{
                width: 300px;
                height: 40px;
                /*border-radius: 50px;*/
                background-color: inherit;
                color: white;
                font-size: large;
                font-weight: bolder;
                /*padding-left: 40px;*/
                border:none;
                border-bottom: 4px dotted whitesmoke;
            }
            ::placeholder{
                color: wheat;
            }
            .btn {
                text-align: center;
                width: 150px;
                height: 40px;
                border-radius: 50px;
                background:radial-gradient(orangered,orange);
                box-shadow: 1px 1px 15px gold;
                border: none;
            }


        </style>
    </head>
    <body>
        <div class="include">
            <%@include file="adminHomepage.jsp"%>
        </div>

        <div class="all">

            <div class="head">
                <h1>
                    <%String str = (String) session.getAttribute("uname");
                        out.print("Welcome " + str);
                    %><br>ADD BOOK</h1>
            </div>
            <div class="amain">
                <form action="../addBook" method="post">
                    <table>
                        <tr>
                            <td>Book Name:</td>
                            <td><input type="text" name="bname" placeholder="Enter Book name" /></td>
                        </tr>
                        <tr>
                            <td>Author Name:</td>
                            <td><input type="text" name="aname" placeholder="Enter Author name" /></td>
                        </tr>

                        <tr>
                            <td>Price:</td>
                            <td><input type="number" name="price" /></td>
                        </tr>
                        <tr>
                            <td>Quantity:</td>
                            <td><input type="number" name="qty" /></td>
                        </tr>
                        <tr>
                            <td><input type="submit" value="Submit"  class="btn"/></td>
                            <td><input type="reset" value="Reset" class="btn"/></td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </body>
</html>
