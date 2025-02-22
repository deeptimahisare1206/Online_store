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
                background:radial-gradient(#3399ff,navy);


            }
            .all{
                /*width: 100vw;*/
                display: flex;
                flex-direction: column;
                /*justify-content: center;*/
                align-items: center;
                /*gap: 2rem;*/
                flex: 3;

            }

            .udtail{
                display: flex;
                justify-content: center;
                /*margin: 10px;*/
                /*padding: 20px;*/
            }
            table{
                width: 70em;
            }
            table tr,th ,td{
                backdrop-filter: blur(2px);
                /*background:linear-gradient( rgba(50,150,255,0.2),rgba(10,1,100,0.5));*/
                background-color:rgba(255,250,200,0.5) ;


                padding: 10px;
                border: 3px solid black;

            }
            th{
                background-color: white;

            }
           .back{
                border: 0.5rem double black;
                border-radius: 100%;
                display: flex;
                justify-content: center;
                align-items: center;
                position: absolute;
                top: 0.5rem;
                left: 1rem;
                width: 3rem;
                height: 3rem;
            }
            img{
                width: 5rem;
                height: 5rem;
                border-radius: 100%;
            }
            h1{
                text-align: center;
                padding: 0.5rem;
                /*background-color: grey;*/
                font-size: 3rem;

            }
        </style>
    </head>
    <body>
         <%@include file="adminnav.html" %>
        
            <h1>
                <%String admn = (String) session.getAttribute("aname");
                if (admn != null) {
//                    out.print("Welcome " + str);
%>
USER DETAILS</h1>
        <div class="all">
            <div class="udtail">
                <table border="1">
                    <tr>
                        <th>Customer Id</th>
                        <th>Profile</th>
                        <th>Customer Name</th>
                        <th>Customer Address</th>
                        <th>Mobile Number</th>
                        <th>Email</th>
                        <th>Username</th>
                        <th>Pin Code</th>
                        <th>State</th>
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
                                String img = rs.getString(7);
                                String pin = rs.getString(8);
                                String state = rs.getString(9);
                                int cid = rs.getInt("User_id");
                    %>
                    <tr>
                        <td style="font-size: 1.5rem ;text-align: center"><%=cid%></td>
                        <td>            <img src="../userpic/<%=img%>" height="300"width="300" alt="not found" onerror="this.src='../image/profile.png';"/>
                        </td>
                        <td><%=Cname%></td>
                        <td><%=Cadd%></td>
                        <td><%=num%></td>
                        <td><%=email%></td>
                        <td><%=user%></td>
                        <td><%=pin%></td>
                        <td><%=state%></td>
                        <td><a href=../deleteUser?cid=<%=cid%>>Delete</a></td>

                    </tr>

                    <%
                            }
                        } catch (Exception e) {
                        }


} else {
            %>
            <jsp:forward page="Alogin.jsp"></jsp:forward>
            <%
//                    out.print("Login first!!!");
                }
            %>
                    %>

                </table>
            </div>
        </div>
    </body>
</html>
