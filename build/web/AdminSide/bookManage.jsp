<%-- 
    Document   : bookManage
    Created on : Dec 9, 2023, 1:34:52 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book management</title>
        <link rel="stylesheet" href="../includeFiles.css"/>
        <style>
            *{
                margin: 0;
                padding: 0;
            }
            body{
                height: 100vh;
                text-align: center;
                background:radial-gradient(#3399ff,navy);

                /*background: url("../image/13.2.jpeg");*/
                /*background-size: cover;*/
                /*background-position: center;*/
            }
            .Manage{
                display: flex;
                justify-content: center;
                flex-wrap: wrap;
                margin: 10px;
                padding: 30px;
                gap: 3rem;
            }


            .card {
                border-radius: 1rem;
                box-shadow: 0px 0px 9px 1px grey;
                color: #312e2c;
                border: 0.3rem solid #d49831;
                display: flex;
                flex-direction: column;
                gap: 1rem;
                align-items: center;
                padding: 2rem;
                margin: auto;
                height: fit-content;
                backdrop-filter: blur(2px);
                background-color: rgba(255, 255, 255, 0.8);
            }
            
            .card img {
                height: 300px;
                width: 200px;
                margin: 0 0 0.5rem 0;
                border: 0.3rem double #312e2c;
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
            .btn{
                width: 100%;
                display: flex;
                gap: 2rem;
                justify-content: center;
            }
            .btn a {
                border: 0.1rem solid black;
                padding: 0.5rem;
                color:black;
                text-decoration: none;
                font-size:large;
                font-weight: bolder;
                background-color: #5555ff;
            }
            .btn a:nth-child(1):hover{
                background-color: maroon;
                color: white;
            }
            .btn a:nth-child(2):hover{
                background-color: green;
                color: white;
            }
             h1{
                padding: 0.5rem;
                background-color: grey;
                font-size: 3rem;

            }
        </style>
    </head>
    <body>
        <a href="adminHomepage.jsp">
            <div class="back">

                <svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" viewBox="0 0 24 24" fill="none" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-arrow-big-left"><path d="M18 15h-6v4l-7-7 7-7v4h6v6z"/></svg>
            </div></a>


        <h1>
            <%                String str = (String) session.getAttribute("uname");
                if (str != null) {
            %>
            BOOK LIST</h1>
        <div class="Manage">
            <%
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_store", "root", "root");
                    PreparedStatement pst = con.prepareStatement("select * from Books");
                    ResultSet rs = pst.executeQuery();
                    while (rs.next()) {
                        int Bid = rs.getInt("BookId");
                        String Bname = rs.getString("BookName");
                        String Aname = rs.getString("AuthorName");
                        String mrp = rs.getString("Price");
                        int qty = rs.getInt("Quantity");
            %>


            <div class="card">
                <img src="../booksimg/<%=rs.getString("Book_Pic")%>" height="100px"width="100px"  alt="Not Found"/>

                <p>

                    Book Id:- 
                    <%=Bid%><br>
                    Book Name:- 
                    <%=Bname%><br>
                    Author Name:- 
                    <%=Aname%><br>
                    Price:- 
                    <%=mrp%><br>
                    Quantity:- 
                    <%=qty%><br>
                </p>
                <div class="btn">
                    <a href=../deletebook?did=<%=Bid%> >Delete</a>
                    <a href=updatebook.jsp?id=<%=Bid%> >Update</a>
                </div>



            </div>

            <%
                        }
                    } catch (Exception e) {
                    }
                } else {
                    response.sendRedirect("Alogin.jsp");
                    out.print("Login First.");
                }
            %>

            <!--</table>-->
        </div>
    </body>
</html>
