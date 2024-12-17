<%-- 
    Document   : home
    Created on : Sep 28, 2024, 12:23:03 AM
    Author     : deept
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <style>
            *{
                margin: 0px;
                padding: 0px;
                text-align: center;
            }
            body{
                height: fit-content;
                background-color:  #312e2c;
                text-align: center;

            }
            .box2{
                padding: 1rem;
                height: fit-content;
                backdrop-filter: blur(5px);
                background:linear-gradient( rgba(10,1,15,0.2),rgba(10,1,10,0.5));
          
            }
            .cardbox{
                padding: 3rem;
                color: white;
                height: fit-content;
                display: flex;
                justify-content: space-evenly;
                flex-wrap: wrap;

            }

            .card{
                border-radius: 1rem;
                width: 20%;
                box-shadow: 0px 0px 9px 1px grey;
                color: #312e2c;
                border: 0.3rem solid #d49831;
                display: flex;
                flex-direction: column;
                align-items: center;
                padding: 20px;
                margin: 10px;
                height: fit-content;
                backdrop-filter: blur(2px);
                background-color: rgba(255,255,255,0.8);

            }
            .card:hover{

            }
            .card img{
                height: 300px;
                width: 200px;
                margin: 0 0 0.5rem 0;
                border: 0.3rem double #312e2c;
            }
            .buy{
                color:black;
                background-color: #d49831;
                text-decoration: none;
                padding: 0.5rem;
                border-radius: 2rem;
                margin-top: 1rem;
            }
            

            @media screen and (max-width:768px){
                .cardbox{
                    flex-direction: column;
                    gap: 2rem;
                }
                .card p{
                    margin: 0.2rem;

                }

                .buy{
                    margin-top: 0.1rem;
                }

            }

        </style>
    </head>
    <body>
        <div class="icl">
        <%@include file="navbar.html" %>
        </div>
        <div class="box2">
            <h1 style="color: #d49831" ><u style="color:white"> Most Popular Books</u><br>Buy Right Now</h1>

            <div class='cardbox'>



                <%try {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Online_store", "root", "root");

                        PreparedStatement pst = con.prepareStatement("select * from Books");
                        ResultSet rs = pst.executeQuery();
                        while (rs.next()) {
                %>
                <div class="card">
                    <img src="booksimg/<%=rs.getString("Book_Pic")%>" height="100px"width="100px"  alt="Not Found"/>



                    <h2><%=rs.getString("BookName")%></h2>
                    <p>Author-  <%=rs.getString("AuthorName")%></p>
                    <h4>Rs.<%=rs.getString("Price")%> </h4>
                   
                    <a href="Ulogin.jsp" class="buy">Buy Now</a>
                   
                </div>


                <%

                        }

                    } catch (Exception ex) {
                    }


                %>
            </div>
    </body>
</html>
