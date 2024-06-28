<%-- 
    Document   : UserDetailsA
    Created on : Dec 9, 2023, 10:24:51 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>USER DETAILS</title>
        <link rel="stylesheet" href="../includeFiles.css"/>
        <style>
            *{
                margin: 0;
                padding: 0;
            }
            body{
                height: 100vh;
                /*display: flex;*/
                /*background:radial-gradient(#973033,purple);*/

            }
            .all{
                /*width: 100vw;*/
                /*display: flex;*/
                /*flex-direction: column;*/
                /*justify-content: center;*/
                align-items: center;
                gap: 2rem;
                flex: 3;

            }

            .udtail{
                display: flex;
                justify-content: center;
                margin: 10px;
                padding: 20px;
            }
            table{
                width: 70em;
            }
            table tr,th ,td{
                background-color:#ccffaa ;
                padding: 10px;
                border: 3px solid black;

            }
            th{
                background-color: white;
                
            }


            .include .ahome_ul{

                height: 15vh;
                /*background: red;*/
                display: flex;
                gap: 3rem;
                margin: 0.2rem;
                /*flex-direction: column;*/
            }
            .include .ahome_li{
                height: 5rem;
                font-size: 0.6rem;}

            </style>
        </head>
        <body>
            <div class="include">
                <%@include file="adminHomepage.jsp"%>
            </div>
            <div class="all">
                <h1>
                    <%String str = (String) session.getAttribute("uname");
                        out.print("Welcome " + str);
                    %>
                    <br>USER DETAILS</h1>
                <div class="udtail">
                    <table border="1">
                        <tr>
                            <th>Customer Name</th>
                            <th>Customer Address</th>
                            <th>Mobile Number</th>
                            <th>Email</th>
                            <th>Username</th>
                            <th>Action</th>
                        </tr>
                        <%
                            try {
                                Class.forName("com.mysql.cj.jdbc.Driver");
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_store", "root", "root");
                                PreparedStatement pst = con.prepareStatement("select * from user_login");
                                ResultSet rs = pst.executeQuery();
                                while (rs.next()) {
                                    String Cname = rs.getString(1);
                                    String Cadd = rs.getString(2);
                                    String num = rs.getString(3);
                                    String email = rs.getString(4);
                                    String user = rs.getString(5);
                        %>
                        <tr>
                            <td><%=Cname%></td>
                            <td><%=Cadd%></td>
                            <td><%=num%></td>
                            <td><%=email%></td>
                            <td><%=user%></td>
                            <td><a href=../deleteUser?id=<%=Cname%>>Delete</a></td>

                        </tr>

                        <%
                                }
                            } catch (Exception e) {
                            }
                        %>

                    </table>
                </div>
            </div>
        </body>
    </html>
