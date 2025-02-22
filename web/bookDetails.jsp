<%-- 
    Document   : bookDetails
    Created on : Dec 8, 2023, 2:31:03 PM
    Author     : ASUS
--%>

<%@page import="java.util.Base64"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Books Show</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <%@include file="usernav.html" %>

        <style>
            *{
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }
            body{
                text-align: center;
                background-color: #312e2c;
            }
            .carbox{
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
                background-color: #e3e9ee;

            }
            .card img{
                height: 300px;
                width: 200px;
                margin: 0 0 0.5rem 0;
                border: 0.3rem double #312e2c;
            }
            
            input{
                font-size: 1rem;
                outline: none;
                background: transparent;
                border: none;
                text-align: center;
            }
            input[type="submit"]{
                background-color: green;
                font-size: 1rem;
                padding: 0.5rem 1rem;
            }
            /*            .carbox{
                            height: fit-content;
                            display: flex;
                            flex-wrap: wrap;
                            gap: 3rem;
                            padding: 2rem 8rem;
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
                        h1{
                            color: #d49831;
                            padding: 0.5rem;
                            font-size: 3rem;
            
                        }
                        .bookdt h2{
                            position: fixed;
                            top: 5rem;
                            right: 1rem;
                            z-index: 1;
                        }
            
                        .card {
                            border-radius: 1rem;
                            box-shadow: 0px 0px 9px 1px grey;
                            padding: 2rem;
                            margin: auto;
                            height: fit-content;
                            display: flex;
                            flex-direction: row;
                            justify-content: space-evenly;
                            width: 100%;
                        }
            
                        .card img {
                            flex: 1;
                            height: 30rem;
                            width: 25rem;
                            margin: 0 0 0.5rem 0;
                            border: 0.3rem double #312e2c;
                        }
            
            
                        .btn{
                            width: 50%;
                            padding: 0.5rem;
                            color:black;
                            text-decoration: none;
                            font-size:larger;
                            font-weight: bolder;
                            background-color: #5555ff;
                        }
            
            
            
            
                        .container {
                            flex: 2;
                            padding: 20px;
                        }
            
                        .card2 {
                            background: rgba(200, 200, 200, 0.8);
                            height: 100%;
                            border-radius: 5px;
                            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                            padding: 20px;
                            display: flex;
                            flex-direction: row;
                            justify-content: center;
                            width: 100%;
                            font-size: 2rem;
                            border: 0.3rem solid #d49831;
            
                        }
            
                        .card-content {
                            display: flex;
                            flex-direction: column;
                            width: 100%;
                        }
            
                        .detail-item {
                            padding: 1rem 0;
                            border-bottom: 1px solid #ddd;
                            font-size: 2rem;
                          
            
                        }
                        input{
                            width: fit-content;
                            text-align: center;
                            background-color: transparent;
                            outline: none;
                            border: none;
                            font-size: 2rem;
                            padding: 1rem 0;
            
                        }
                        .detail-item:last-child{
                            border-bottom: none;
                            margin-top: 2rem;
                        }
                        strong {
                            color: #555;
                        }*/
        </style>
    </head>
    <body>
        <!--        <a href="userHomepage.jsp">
                    <div class="back">
        
                        <svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" viewBox="0 0 24 24" fill="none" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-arrow-big-left"><path d="M18 15h-6v4l-7-7 7-7v4h6v6z"/></svg>
                    </div></a>-->

        <h1>

            <%

                String str = (String) session.getAttribute("uname");

                if (str != null) {

            %> 
            BOOKS LIST</h1>
        <div class="bookdt">
            <h2>
                <!--<a href="C.jsp"><img src="image/undraw_empty_cart_co35.svg" alt="alt"/></a>-->
                <%--<%= // (Integer) session.getAttribute("count")%>--%>                   
            </h2>
            <!--<table border="1">-->

            <div class="carbox">
                <%                    try {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_store", "root", "root");
                        PreparedStatement pst = con.prepareStatement("select * from Books");
                        ResultSet rs = pst.executeQuery();

                        while (rs.next()) {
                            String Bid = rs.getString(1);
                            String Bname = rs.getString(2);
                            String Aname = rs.getString(3);
                            String mrp = rs.getString(4);
                            String qty = rs.getString(5);
                            byte img[] = rs.getBytes("Book_Pic");
                            String base = Base64.getEncoder().encodeToString(img);

                %>

                <div class="card">
                    <img src="data:image/png;base64,<%=base%>" height="100px"width="100px"  alt="Not Found"/>

                    <form action="AddToCart" method="post">
                        <div class="container">
                            <!--<h1>Book Details</h1>-->
                            <div class="card2">
                                <div class="card-content">
                                    <!--                            <div class="detail-item">
                                                                    <strong>Book Id:</strong> 17
                                                                </div>-->
                                    <input type="hidden" name="bid" value="<%=Bid%>">
                                    <div class="detail-item">
                                        <input type="text" name="bname" value="<%=Bname%>" readonly>
                                    </div>
                                    <div class="detail-item">
                                         <input type="text" name="atname" value="<%=Aname%>"readonly>
                                    </div>
                                    <div class="detail-item">
                                        <input type="text" name="prse" value="₹<%=mrp%>/-"readonly>
                                    </div>
                                    <div class="detail-item">
                                       <input type="hidden" value=<%=qty%> readonly ><input type="hidden" name="qy"  value="1" min="1">


                                    </div>
                                    <div class="detail-item">
                                        <input type="submit" value="Add To Cart" class="btn">
                                        <!--<a href=AddToCart?id=<%=Bid%> class="btn">Add to Cart</a>-->
                                    </div>
                                    <!--<p>-->
                                    <!--</p>-->
                                </div>
                            </div>
                        </div>
                    </form>
                </div>


                <%
                            }

                        } catch (Exception e) {
                            out.print(e.getMessage());
                        }
                    } else {

                        response.sendRedirect("Ulogin.jsp");
                    }
                %>

                <!--</table>-->
            </div>


            <!--        <script>
                        function autoRefresh() {
                            window.location = window.location.href;
                        }
                        setInterval('autoRefresh()', 5000);
                    </script>-->
    </body>
</html>
