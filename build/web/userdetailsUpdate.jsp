<%-- 
    Document   : userdetailsUpdate
    Created on : Nov 3, 2024, 9:03:18 PM
    Author     : deept
--%>

<%@page import="java.sql.*"%>
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
                box-sizing: border-box;
            }
            body{
                background-color: #312e2c;
                display: flex;
                padding: 2rem 3rem 0 0.5rem ;
                gap: 0.5rem;
            }
            .photo{
                background-color: white;
                padding: 2rem  1rem;
                height: 40vw;
                display: flex;
                gap: 3rem;
                flex-direction: column;
                align-items: center;
                justify-content: center;
                flex: 1;
                border-radius: 2rem 0 0 2rem;
            }
            .photo img{
                border: 2px solid #d49831;
                border-radius: 100%;
            }
            .photo form{
                display: flex;
                /*gap: 3rem;*/
                flex-direction: column;
                align-items: center;
                justify-content: center;
            }
            .detail{
                background-color: white;
                flex: 2;
                padding: 0 2.5rem;
                border-radius: 0 2rem 2rem 0;
            }
            table{
                border-collapse: collapse;
                height: 35vw;
                /*padding: 1rem 2rem;*/
                font-size: larger;
                width: 100%;
            }
            table tr{
                border-bottom: 1px solid #d49831;

            }
            table input{
                width: 80%;
                font-size: large;
                background: none;
                outline: none;
                /*border: none;*/
                padding: 0.5rem 1rem;
            }
            td:nth-child(odd) {
                padding:0rem 1rem ;
                /*background-color: #00cf45;*/
                width: 25%;
            }
            .btn{
                height: 35px;
                width: 100%;
                text-align: center;
                place-content:  center;
                background-color: #d49831;
                border-radius: 30px;
                border: none;
                margin: 10px 20px 0 0;
                /*color: white;*/
                font-weight: bolder;
                /*outline: none;*/
            }
            .btn a{
                text-decoration: none;
                font-size: larger;
                color: black;
            }
            .btn2 {
                height: 5rem;
                width:15rem;
                text-align: center;
                background-color: #d49831;
                border-radius: 30px;
                border: none;
                margin: 10px 20px 0 0;
                font-weight: bolder;
                font-size: larger;

            }
            .back{
                border: 0.5rem double black;
                border-radius: 100%;
                display: flex;
                justify-content: center;
                align-items: center;
                /*                position: absolute;
                                top: 0.5rem;
                                left: 1rem;*/
                width: 5rem;
                height: 5rem;
            }

            input[type="file"]::file-selector-button {
                background-color: #d49831;
                width: 10rem;
                padding: 1rem;
            }
        </style>
    </head>
    <body>
        <a href="userProfile.jsp">
            <div class="back">

                <svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" viewBox="0 0 24 24" fill="none" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-arrow-big-left"><path d="M18 15h-6v4l-7-7 7-7v4h6v6z"/></svg>
            </div></a>
            <%

                String str = (String) session.getAttribute("uname");
                String uid = request.getParameter("uid");

            %>           

        <%            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_store", "root", "root");
                PreparedStatement pst = con.prepareStatement("select * from user_login where User_id = (?)");
                pst.setString(1, uid);
                ResultSet rs = pst.executeQuery();
                while (rs.next()) {
//                    String uid = rs.getString("User_id");
                    String fname = rs.getString("Name");
                    String mob = rs.getString("Mobile");
                    String email = rs.getString("Email");
                    String uname = rs.getString("UserName");
                    String add = rs.getString("Address");
                    String pin = rs.getString("pincode");
                    String state = rs.getString("state");

        %>

        <div class="photo">
            <img src="userpic/<%=rs.getString("image")%>" height="300"width="300" alt="not found" onerror="this.src='image/profile.png';"/>

            <form action="updateUserPic" method="post" enctype="multipart/form-data">
                <input type="hidden"  value=<%out.print(uid);%> name="uid">

                <input type="file" name="img" required>

                <input type="submit" value="Edit Photo" class="btn2">
            </form>

        </div>
        <div class="detail">
            <form action="UserprofileEdit" method="post">
                <table>
                    <tr> <td style="display: none">User Id:  </td><td> <input type="hidden"  value=<%out.print(uid);%> name="uid"></td></tr>
                    <tr> <td>Full Name:  </td><td> <input type="text"  value="<%=fname%>" name="u2"></td></tr>
                    <tr> <td>Email:  </td><td> <input type="email"  value="<%=email%>" name="u3"></td></tr>
                    <tr> <td>Mobile No.: </td><td>  <input type="number"  value="<%=mob%>" name="u4"></td></tr>
                    <tr> <td>Username: </td><td>  <input type="text"  value="<%=uname%>" name="u5"></td></tr>
                    <tr> <td>Address:  </td><td> <input type="text"  value="<%=add%>" name="u6"></td></tr>
                    <tr> <td>State: </td><td>  <input type="text"  value="<%=state%>" name="u7"></td></tr>
                    <tr> <td>Pin Code:  </td><td> <input type="number"  value="<%=pin%>" name="u8"></td></tr>
                </table>
                <div class="btn">
                    <input type="submit" value="Update"  class="btn">

                </div>
            </form>

        </div>


        <%

                }

            } catch (Exception ex) {
                out.print(ex.getMessage());
            }
        %>


    </body>
</html>
